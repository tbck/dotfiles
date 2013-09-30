#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>
#include <unistd.h>

//#include "config.def.h"

/* number of buttons to use */
#define BUTTONS 5
/* each button must have a definition with the syntax: */
/* #define BUTTON { mouse1, mouse2, mouse3 } */
#define BUTTON1 { "urxvt &", NULL, "zathura &" }
#define BUTTON2 { "dwb &", NULL, NULL }
#define BUTTON3 { "urxvt &", NULL, NULL }
#define BUTTON4 { "xfontsel &", NULL, NULL }
#define BUTTON5 { NULL, NULL, NULL }
#define BUTTON6 { "dwb &", NULL, NULL }
#define BUTTON7 { "dwb &", NULL, NULL }
#define BUTTON8 { "dwb &", NULL, NULL }
#define BUTTON9 { "dwb &", NULL, NULL }
#define BUTTON10 { "dwb &", NULL, NULL }

typedef struct button {
    int         x_start;
    int         x_end;
    const char *mouse1;
    const char *mouse2;
    const char *mouse3;
} button;

void
print_dat (char *text)
{
    char *p = text;
    for (;;) {
        if (*p == '\0')
            return;
        if (*p == '\n')
            return;
        printf ("%c", *p);
        *p++;
    }
}

int 
main ()
{
    char str[] = "abcdefghijklmnopqrstuvwxyz";
    print_dat (str);

    char *n;
    const char **button1;
    button1 = (const char* [])BUTTON1;
    n = button1[0];

    printf ("\n");
    for (;;) {
        if (*n == '\0')
            break;
        if (*n == '\n')
            break;
        printf ("%c", *n);
        *n++;
        //break;
    }
    printf ("\n");
}
