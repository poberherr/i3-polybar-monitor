REPO_ROOT=$(shell git rev-parse --show-toplevel)
# TODO: Add feh

bootstrap:
	-bash -c "./attach.sh"

polybar:
	-bash -c "${REPO_ROOT}/launch_polybar.sh"

kill-polybar:
	-bash -c "killall polybar"

home: kill-polybar
	-bash -c "mons -e right"
	-bash -c "xrandr --output eDP-1 --mode 1368x768"
	-bash -c "${REPO_ROOT}/launch_polybar.sh"

work: kill-polybar
	-bash -c "mons -S 5,6:R"
	-bash -c "xrandr --output DP-1-2"
	# -bash -c "xrandr --output DP-1-2 --rotate right"
	-bash -c "${REPO_ROOT}/launch_polybar.sh"
	-bash -c "feh --bg-fill ~/Documents/background/mikael-gustafsson-wallpaper-mikael-gustafsson.jpg --bg-fill ~/Documents/background/2DJCWMr.jpg"

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
	-bash -c "mons -o"
	-bash -c "xrandr --output eDP-1 --mode 1600x900"
	-bash -c "${REPO_ROOT}/launch_polybar.sh"

lappi-big: lb

os:
	-bash -c "mons -s"
	-bash -c "${REPO_ROOT}/launch_polybar.sh"
	-bash -c "feh --bg-fill ~/Documents/background/2DJCWMr.jpg"


