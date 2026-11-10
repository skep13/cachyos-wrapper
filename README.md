# cachyos-wrapper

My CachyOS + Hyprland dotfiles.

- `.config/hypr` — Hyprland (Lua): tiling, gaps, borders/outlines, colours, binds, window rules
- `.config/noctalia` — bar/shell config and palettes
- `.config/kitty` — terminal: opacity, padding, font, cursor, Noctalia theme
- `.config/quickshell` — custom quickshell widget (mond)

Wallpapers, fastfetch and my terminal logo are intentionally not included. To show your own image in kitty, use any picture you like:

```bash
kitten icat /path/to/your-image.png
```

or point fastfetch's logo at it (`fastfetch --logo /path/to/your-image.png --logo-type kitty`).

## Install
```bash
cp -r .config/* ~/.config/
```
