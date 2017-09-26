#!/bin/bash

# Plugins are installed by homebrew in the following location
chunkc core::plugin_dir /usr/local/opt/chunkwm/share/chunkwm/plugins

# Hot reloading of plugins
chunkc core::hotload 1

# Tiled windows on all desktops
chunkc set global_desktop_mode           bsp

# Set the desktop offsets
chunkc set global_desktop_offset_top     10
chunkc set global_desktop_offset_bottom  10
chunkc set global_desktop_offset_left    10
chunkc set global_desktop_offset_right   10
chunkc set global_desktop_offset_gap     5

# Indicates how to spawn new windows preferably
chunkc set bsp_spawn_left                1
chunkc set bsp_optimal_ratio             0.9
chunkc set bsp_split_mode                optimal
chunkc set bsp_split_ratio               0.5

# Indicates how to navigate through windows
chunkc set window_focus_cycle            all
chunkc set mouse_follows_focus           1
chunkc set window_float_next             0
chunkc set window_float_center           1
chunkc set window_region_locked          1

# Key to use the mouse to swap windows
chunkc set mouse_modifier                fn

# Mouse selection border params
chunkc set preselect_border_color        0xffc678dd
chunkc set preselect_border_width        3
chunkc set preselect_border_radius       1

# Selected window border params
chunkc set focused_border_color          0xff61afef
chunkc set focused_border_width          2
chunkc set focused_border_radius         1
chunkc set focused_border_skip_floating  0

# Only load border and tiling plugins, we skip ffm for now
chunkc core::load border.so
chunkc core::load tiling.so
# chunkc core::load ffm.so