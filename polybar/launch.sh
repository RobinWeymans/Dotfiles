#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch bar1 and bar2
polybar bar1 -c ~/.config/polybar/config &
polybar bar2 -c ~/.config/polybar/config &
polybar topbar1 -c ~/.config/polybar/config &
polybar topbar2 -c ~/.config/polybar/config &

echo "Bars launched..."
