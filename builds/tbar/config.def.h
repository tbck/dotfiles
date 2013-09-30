/* The height of the bar (in pixels) */
#define BAR_HEIGHT 16
/* The width of the bar. Set to -1 to fit screen */
#define BAR_WIDTH -1 
/* Offset from the left. Set to 0 to have no effect */
#define BAR_OFFSET 0
/* Choose between an underline or an overline */
#define BAR_UNDERLINE 0
/* The thickness of the text underline (in pixels). Set to 0 to disable. */
#define BAR_UNDERLINE_HEIGHT 2
/* The color of the default underline (inner border). Set to 0 to disable */
#define BAR_UNDERLINE_DEFAULT 8
/* Default bar position, overwritten by '-b' switch */
#define BAR_BOTTOM 0
/* The fonts used for the bar, comma separated. Only the first 2 will be used. */
#define BAR_FONT "-artwiz-cure-medium-r-normal-*-11-110-75-75-p-90-iso8859-1", "-Misc-Stlarch-Medium-R-Normal--10-100-75-75-C-80-ISO10646-1"
/* Some fonts don't set the right width for some chars, pheex it */
#define BAR_FONT_FALLBACK_WIDTH 6
/* Color palette */
#include "cogburn.h"
