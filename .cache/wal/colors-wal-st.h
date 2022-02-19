const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#0c091b", /* black   */
  [1] = "#295969", /* red     */
  [2] = "#535F70", /* green   */
  [3] = "#9F7774", /* yellow  */
  [4] = "#2C6B9C", /* blue    */
  [5] = "#4B729F", /* magenta */
  [6] = "#3589E2", /* cyan    */
  [7] = "#a2c2db", /* white   */

  /* 8 bright colors */
  [8]  = "#718799",  /* black   */
  [9]  = "#295969",  /* red     */
  [10] = "#535F70", /* green   */
  [11] = "#9F7774", /* yellow  */
  [12] = "#2C6B9C", /* blue    */
  [13] = "#4B729F", /* magenta */
  [14] = "#3589E2", /* cyan    */
  [15] = "#a2c2db", /* white   */

  /* special colors */
  [256] = "#0c091b", /* background */
  [257] = "#a2c2db", /* foreground */
  [258] = "#a2c2db",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
