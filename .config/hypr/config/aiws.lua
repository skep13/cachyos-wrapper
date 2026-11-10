-- Marina and the assistant (user install in ~/.local).
--   Super+Shift+Space   open / close Marina (like Cmd+Shift+Space on the Mac;
--                       Super+Space stays the launcher, like Spotlight)
--   Super+Shift+Escape  stop the assistant now
--   Super+Shift+A       Control Centre
--   Super+Shift+T       Tailscale on / off
local bin = os.getenv("HOME") .. "/.local/bin/"

hl.on("hyprland.start", function ()
    -- the assistant needs the session's display to see and use the screen
    hl.exec_cmd("systemctl --user restart aiws-agent.service")
    hl.exec_cmd(bin .. "aiws-orb")
end)

hl.bind("SUPER + SHIFT + Space",  hl.dsp.exec_cmd(bin .. "aiws-orb --toggle"))
hl.bind("SUPER + SHIFT + Escape", hl.dsp.exec_cmd(bin .. "aiws-agent-stop"))
hl.bind("SUPER + SHIFT + A",      hl.dsp.exec_cmd(bin .. "aiws-control"))
hl.bind("SUPER + SHIFT + T",      hl.dsp.exec_cmd(bin .. "tailscale-toggle"))

-- Marina's sphere: floating, on every workspace, no frame, blur or dimming,
-- fully opaque so only the sphere shows; starts bottom-right.
hl.window_rule({ match = { title = "^Marina$" }, float = true, pin = true,
                 no_shadow = true, no_blur = true, no_dim = true, rounding = 0,
                 no_initial_focus = true, opacity = "1 override", border_size = 0,
                 move = { "monitor_w-window_w-18", "monitor_h-window_h-18" } })
