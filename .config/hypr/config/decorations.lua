-- Look and feel configuration

hl.config({
    general = {
        gaps_in = 3,
        gaps_out = 8,
        border_size = 2,
        extend_border_grab_area = 10,
        resize_on_border = true,
        col = {
            active_border = {
                colors = { FORESTGREEN, FORESTBLUE },
                angle = 45,
            },
            inactive_border = FORESTDIM,
        },
    },
    group = {
        col = {
            border_active = CACHYLBLUE,
            border_inactive = CACHYGRAY,
            border_locked_active = CACHYDBLUE,
            border_locked_inactive = CACHYGRAY,
        },
        groupbar = {
            col = {
                active = CACHYLGREEN,
                inactive = CACHYGRAY,
                locked_active = CACHYDBLUE,
                locked_inactive = CACHYGRAY,
            },
        },
    },
    decoration = {
        dim_special = 0.3,
        -- Liquid-glass look: macOS-style squircle corners, soft shadow, vibrant frosted blur
        rounding = 14,
        rounding_power = 2.6,
        active_opacity = 0.95,
        inactive_opacity = 0.88,
        fullscreen_opacity = 1,
        shadow = {
            enabled = true,
            range = 28,
            render_power = 3,
            color = "rgba(00000099)",
            color_inactive = "rgba(00000055)",
        },
        blur = {
            size = 8,
            passes = 3,
            noise = 0.015,
            contrast = 1.0,
            brightness = 0.85,
            vibrancy = 0.25,
            popups = true,
            special = true,
        },
    },
})
