amixer -M get Master | egrep -o "[0-9]+%"
#clock -sf '\c\f2%a %h %d \f8|\f2 %I:%M %p\fr'
clock -f '\c\f2%a %h %d \f8|\f2 %I:%M %p\fr'
essid
