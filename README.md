# to run
- have X server running
- `xhost +` on your desktop (once per start of your X server, usually per reboot)
- `docker compose build` (only once, or after git pull)
- `docker compose up` (to launch it)

Only tested on X11, not on Wayland. The app seems to support it, but I have no clue how to forward that in Docker and am not interested in using Wayland.
# adaptations
- edit Dockerfile URL for different countries or updated versions

I don't want license issues so redistributing by pre-built docker image is not an option.
