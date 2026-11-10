-- Monitor wiki https://wiki.hypr.land/Configuring/Basics/Monitors/
-- Example: output can be found with hyprctl monitors. Edit variables.lua for the monitor outputs instead of here directly
-- hl.monitor({
--     output    = MONITOR1,
--     mode      = "1920x1080@60",
--     position  = "0x0",
--     scale     = "1",
-- })

hl.monitor({
    output    = MONITOR1,
    mode      = "preferred",
    position  = "auto",
    scale     = "1",          -- 1920x1080 panel: 1 is native (auto chose 1.5)
})

-- Acer VG280K on HDMI: 4K@60 gives "no signal" (cable/HDMI link can't carry it), so use 1440p
hl.monitor({
    output    = "HDMI-A-2",
    mode      = "2560x1440@60",
    position  = "auto",
    scale     = "1",
})
