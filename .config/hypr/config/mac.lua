-- Mac-style shortcuts (Super = Cmd). CachyOS already has:
--   Super+Space launcher (Spotlight), Super+Q close, Super+Tab switcher,
--   Super+Escape click-to-kill (Force Quit).
local mainMod = "SUPER"
local shots = os.getenv("HOME") .. "/Pictures/Screenshots"

-- Ctrl+Cmd+F: fullscreen
hl.bind(mainMod .. " + CONTROL + F", hl.dsp.window.fullscreen())
-- Cmd+, : settings
hl.bind(mainMod .. " + comma", hl.dsp.exec_cmd("noctalia msg settings-toggle"))
-- Cmd+Shift+3 / Cmd+Shift+4: whole screen / drag a region; saved and copied
hl.bind(mainMod .. " + SHIFT + code:12", hl.dsp.exec_cmd(
    "sh -c 'mkdir -p " .. shots .. "; f=" .. shots .. "/$(date +%F_%H-%M-%S).png; grim \"$f\" && wl-copy < \"$f\"'"))
hl.bind(mainMod .. " + SHIFT + code:13", hl.dsp.exec_cmd(
    "sh -c 'mkdir -p " .. shots .. "; f=" .. shots .. "/$(date +%F_%H-%M-%S).png; grim -g \"$(slurp)\" \"$f\" && wl-copy < \"$f\"'"))

-- Task manager: Cmd+Option+Esc (Mac force quit) or Ctrl+Shift+Esc (Windows)
hl.bind(mainMod .. " + ALT + Escape",     hl.dsp.exec_cmd("missioncenter"))
hl.bind("CONTROL + SHIFT + Escape",       hl.dsp.exec_cmd("missioncenter"))

-- Copilot key (sends Super+Shift+F23): open the Claude desktop app
hl.bind("SUPER + SHIFT + F23", hl.dsp.exec_cmd("claude-desktop"))
