# Move through tiles
alt - left : chunkc tiling::window --focus west
alt - down : chunkc tiling::window --focus south
alt - up : chunkc tiling::window --focus north
alt - right : chunkc tiling::window --focus east

# Cycle through tiles
cmd - left : chunkc tiling::window --focus prev
cmd - right : chunkc tiling::window --focus next

# Move tiles around
alt + cmd - left : chunkc tiling::window --warp west
alt + cmd - down : chunkc tiling::window --warp south
alt + cmd - up : chunkc tiling::window --warp north
alt + cmd - right : chunkc tiling::window --warp east

# Send tiles to desktop
ctrl + alt + cmd - left : chunkc tiling::window --send-to-desktop prev
ctrl + alt + cmd - right : chunkc tiling::window --send-to-desktop next
ctrl + alt + cmd - 1 : chunkc tiling::window --send-to-desktop 1
ctrl + alt + cmd - 2 : chunkc tiling::window --send-to-desktop 2
ctrl + alt + cmd - 3 : chunkc tiling::window --send-to-desktop 3
ctrl + alt + cmd - 4 : chunkc tiling::window --send-to-desktop 4
ctrl + alt + cmd - 5 : chunkc tiling::window --send-to-desktop 5
ctrl + alt + cmd - 6 : chunkc tiling::window --send-to-desktop 6

# increase region size
shift + alt - left : chunkc tiling::window --use-temporary-ratio 0.1 --adjust-window-edge west
shift + alt - down : chunkc tiling::window --use-temporary-ratio 0.1 --adjust-window-edge south
shift + alt - up : chunkc tiling::window --use-temporary-ratio 0.1 --adjust-window-edge north
shift + alt - right : chunkc tiling::window --use-temporary-ratio 0.1 --adjust-window-edge east

# decrease region size
shift + ctrl - right : chunkc tiling::window --use-temporary-ratio -0.1 --adjust-window-edge west
shift + ctrl - up : chunkc tiling::window --use-temporary-ratio -0.1 --adjust-window-edge south
shift + ctrl - down : chunkc tiling::window --use-temporary-ratio -0.1 --adjust-window-edge north
shift + ctrl - left : chunkc tiling::window --use-temporary-ratio -0.1 --adjust-window-edge east

# float / unfloat window
cmd + alt - c : chunkc tiling::window --toggle float

# change layout of desktop
ctrl + alt - t : chunkc tiling::desktop --layout bsp
ctrl + alt - f : chunkc tiling::desktop --layout float