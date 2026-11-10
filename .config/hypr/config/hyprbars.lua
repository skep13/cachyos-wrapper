-- Mac-style title bars (hyprbars plugin, built for Hyprland 0.56.2 from
-- hyprwm/hyprland-plugins @ 7644cec). Loaded only once the plugin exists.
--   red: close   yellow: minimise (Super+M)   green: full screen
--   double-click the title: maximise
--   Super+Shift+M: show minimised windows
local so = "/home/friereon/.local/src/hyprland-plugins/hyprbars/hyprbars.so"
local f = io.open(so, "r")
if not f then return end
f:close()
hl.plugin.load(so)
-- If the .so was built for another Hyprland version the load fails; skip the
-- settings instead of filling the screen with "unknown config key" errors.
-- Rebuild: cd ~/.local/src/hyprland-plugins/hyprbars; and make
if not hl.plugin.hyprbars then return end

hl.config({
    plugin = {
        hyprbars = {
            bar_height = 28,
            bar_color = "rgba(00000000)",          -- clear: only the buttons show
            ["col.text"] = "rgba(00000000)",
            bar_title_enabled = false,
            bar_text_font = "Inter",
            bar_text_size = 11,
            bar_text_align = "center",
            bar_buttons_alignment = "left",
            bar_padding = 12,
            bar_button_padding = 8,
            icon_on_hover = true,
            inactive_button_color = "rgb(1c2a4a)",
            bar_part_of_window = true,
            bar_precedence_over_border = true,
            on_double_click = [[hyprctl dispatch 'hl.dsp.window.fullscreen({ mode = "maximized", action = "toggle" })']],
        },
    },
})

-- left to right, like macOS
hl.plugin.hyprbars.add_button({ bg_color = "rgb(ff5f57)", fg_color = "rgb(4d0000)", size = 13, icon = "×",
    action = [[hyprctl dispatch 'hl.dsp.window.close()']] })
hl.plugin.hyprbars.add_button({ bg_color = "rgb(febc2e)", fg_color = "rgb(5c3c00)", size = 13, icon = "−",
    action = [[hyprctl dispatch 'hl.dsp.window.move({ workspace = "special:minimized", follow = false })']] })
hl.plugin.hyprbars.add_button({ bg_color = "rgb(28c840)", fg_color = "rgb(004d00)", size = 13, icon = "+",
    action = [[hyprctl dispatch 'hl.dsp.window.fullscreen()']] })

-- No title bar on Marina's sphere
hl.window_rule({ match = { title = "^Marina$" }, ["hyprbars:no_bar"] = true })
