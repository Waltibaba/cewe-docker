# to run
- have X server running
- `xhost +` on your desktop (once per start of your X server, usually per reboot)
- `docker compose build` (only once, or after git pull)
- `docker compose up` (to launch it)

Only tested on X11, not on Wayland. The app supports it, no clue how to forward that in Docker though.