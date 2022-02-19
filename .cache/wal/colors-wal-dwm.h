static const char norm_fg[] = "#a2c2db";
static const char norm_bg[] = "#0c091b";
static const char norm_border[] = "#718799";

static const char sel_fg[] = "#a2c2db";
static const char sel_bg[] = "#535F70";
static const char sel_border[] = "#a2c2db";

static const char urg_fg[] = "#a2c2db";
static const char urg_bg[] = "#295969";
static const char urg_border[] = "#295969";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
    [SchemeUrg] =  { urg_fg,      urg_bg,    urg_border },
};
