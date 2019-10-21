REPO_ROOT=$(shell git rev-parse --show-toplevel)

feh:
	feh --randomize --bg-fill ~/Documents/background/*

# bootstrap:
#   -bash -c "./attach.sh"

polybar:
	-bash -c "${REPO_ROOT}/launch_polybar.sh"

kill-polybar:
	-bash -c "killall polybar"

home: kill-polybar
	-bash -c "mons -e right"
	-bash -c "xrandr --output HDMI-2 --off --output HDMI-1 --mode 2560x1440 --pos 2048x0 --rotate normal --output DP-1 --off --output eDP-1 --primary --mode 1368x768 --pos 680x936 --rotate normal --output DP-2 --off"
	-bash -c "${REPO_ROOT}/launch_polybar.sh"
	-bash -c "feh --bg-fill ~/Documents/background/mikael-gustafsson-wallpaper-mikael-gustafsson.jpg --bg-fill ~/Documents/background/2DJCWMr.jpg"


stockholm: kill-polybar
	mons -e right
	xrandr --output HDMI-2 --off --output HDMI-1 --mode 1920x1080 --pos 2560x0 --rotate normal --output DP-1 --off --output eDP-1 --primary --mode 1600x900 --pos 0x0 --rotate normal --output DP-2 --off
	$(REPO_ROOT)/launch_polybar.sh
	feh --bg-fill ~/Documents/background/mikael-gustafsson-wallpaper-mikael-gustafsson.jpg --bg-fill ~/Documents/background/2DJCWMr.jpg

work: kill-polybar
	mons -S 5,6:R
	xrandr --output DP-1-2
	${REPO_ROOT}/launch_polybar.sh
	feh --bg-fill ~/Documents/background/mikael-gustafsson-wallpaper-mikael-gustafsson.jpg --bg-fill ~/Documents/background/2DJCWMr.jpg

w: work

wb: kill-polybar
	xrandr --output eDP-1 --off --output DP-1-2 --mode 1920x1080 --pos 1920x0 --rotate normal --output HDMI-2 --off --output HDMI-1 --off --output DP-1 --off --output DP-1-3 --off --output DP-2 --off --output DP-1-1 --mode 1920x1080 --pos 0x0 --rotate normal
	${REPO_ROOT}/launch_polybar.sh
	feh --bg-fill ~/Documents/background/mikael-gustafsson-wallpaper-mikael-gustafsson.jpg --bg-fill ~/Documents/background/2DJCWMr.jpg

l: kill-polybar
	-bash -c "mons -o"
	-bash -c "xrandr --output eDP-1 --mode 2048x1152"
	-bash -c "${REPO_ROOT}/launch_polybar.sh"

lappi: l

ls: kill-polybar
	-bash -c "mons -o"
	-bash -c "xrandr --output eDP-1 --mode 2560x1440"
	-bash -c "${REPO_ROOT}/launch_polybar.sh"

lappi-small: ls

lb: kill-polybar
	mons -o
	xrandr --output eDP-1 --mode 1600x900
	$(REPO_ROOT)/launch_polybar.sh

lappi-big: lb

os:
	-bash -c "mons -s"
	-bash -c "${REPO_ROOT}/launch_polybar.sh"
	-bash -c "feh --bg-fill ~/Documents/background/2DJCWMr.jpg"

stockholm:
	xrandr --output HDMI-2 --off --output HDMI-1 --mode 2560x1440 --pos 1368x0 --rotate normal --output DP-1 --off --output eDP-1 --primary --mode 1368x768 --pos 0x1032 --rotate normal --output DP-2 --off
	-bash -c "${REPO_ROOT}/launch_polybar.sh"
