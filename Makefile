REPO_ROOT=$(shell git rev-parse --show-toplevel)
home:
	-bash -c "killall polybar"
	-bash -c "mons -e right"
	-bash -c "xrandr --output eDP-1 --mode 1368x768"
	-bash -c "${REPO_ROOT}/launch_polybar.sh"

work:
	-bash -c "killall polybar"
	-bash -c "mons -S 5,6:R"
	-bash -c "xrandr --output DP-1-2 --rotate right"
	-bash -c "${REPO_ROOT}/launch_polybar.sh"

l:
	-bash -c "killall polybar"
	-bash -c "mons -o"
	-bash -c "xrandr --output eDP-1 --mode 2048x1152"
	-bash -c "${REPO_ROOT}/launch_polybar.sh"

lappi: l

ls:
	-bash -c "killall polybar"
	-bash -c "mons -o"
	-bash -c "xrandr --output eDP-1 --mode 2560x1440"
	-bash -c "${REPO_ROOT}/launch_polybar.sh"

lappi-small: ls

lb:
	-bash -c "killall polybar"
	-bash -c "mons -o"
	-bash -c "xrandr --output eDP-1 --mode 1600x900"
	-bash -c "${REPO_ROOT}/launch_polybar.sh"

lappi-big: lb
