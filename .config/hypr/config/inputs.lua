-- Input configuration

hl.config({
    input = {
        kb_layout = "gb",          -- UK keyboard (Shift+2 = ", Shift+' = @)
        -- sensitivity = -0.25,
        accel_profile = "flat",
        touchpad = {
            drag_3fg = 1,          -- three-finger drag, like a Mac: drags windows by their title bar
        },
    },
    -- Uncomment the section below to enable software cursors; this can help with cursor display or behavior issues
    -- cursor = {
    --     no_hardware_cursors = 1,
    -- },
})

hl.gesture({ fingers = 4, direction = "horizontal", action = "workspace" })
-- Three fingers now drag, so these moved to four.
hl.gesture({ fingers = 4, direction = "up",         action = "fullscreen" })
hl.gesture({ fingers = 4, direction = "down",       action = "float" })
