-- Minimise like the Mac: Super+M tucks the window away, Super+Shift+M shows them.
hl.bind("SUPER + M", hl.dsp.window.move({ workspace = "special:minimized", follow = false }))
hl.bind("SUPER + SHIFT + M", hl.dsp.workspace.toggle_special("minimized"))
