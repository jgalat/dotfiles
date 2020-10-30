/* See LICENSE file for copyright and license details. */
/* Default settings; can be overriden by command line. */

static int topbar = 1;                      /* -b  option; if 0, dmenu appears at bottom     */
/* -fn option overrides fonts[0]; default X11 font or font set */
static const char *fonts[] = {
	"Liberation Mono:size=12"
};
static const char *prompt      = NULL;      /* -p  option; prompt to the left of input field */
static const char col_gray1[]  = "#222222";
static const char col_gray2[]  = "#bbbbbb";
static const char col_gray3[]  = "#eeeeee";
static const char col_black[]  = "#000000";
static const char col_white[]  = "#ffffff";
static const char col_primary[]= "#27343a";

static const char *colors[SchemeLast][2] = {
	/*               fg         bg          */
	[SchemeNorm] = { col_gray2, col_gray1   },
	[SchemeSel]  = { col_gray3, col_primary },
	[SchemeOut]  = { col_black, col_white   },
};
/* -l option; if nonzero, dmenu uses vertical list with given number of lines */
static unsigned int lines      = 0;

/*
 * Characters not considered part of a word while deleting words
 * for example: " /?\"&[]"
 */
static const char worddelimiters[] = " ";
