-- Rectangle-style snapping, like the Mac (Ctrl+Option there, Ctrl+Alt here).
--   Ctrl+Alt+arrows halves     U/I/J/K quarters     D/F/G thirds
--   E/T two-thirds             Return maximise       C centre
--   Backspace back to tiling
local snap = os.getenv("HOME") .. "/.local/bin/snap-window "
local binds = {
    ["CTRL + ALT + Left"] = "left", ["CTRL + ALT + Right"] = "right",
    ["CTRL + ALT + Up"] = "top", ["CTRL + ALT + Down"] = "bottom",
    ["CTRL + ALT + U"] = "tl", ["CTRL + ALT + I"] = "tr",
    ["CTRL + ALT + J"] = "bl", ["CTRL + ALT + K"] = "br",
    ["CTRL + ALT + D"] = "first-third", ["CTRL + ALT + F"] = "center-third",
    ["CTRL + ALT + G"] = "last-third",
    ["CTRL + ALT + E"] = "first-two-thirds", ["CTRL + ALT + T"] = "last-two-thirds",
    ["CTRL + ALT + Return"] = "max", ["CTRL + ALT + C"] = "center",
    ["CTRL + ALT + BackSpace"] = "restore",
}
for key, pos in pairs(binds) do
    hl.bind(key, hl.dsp.exec_cmd(snap .. pos))
end
