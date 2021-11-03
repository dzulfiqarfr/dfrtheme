#' Convert font size 
#'
#' @param text_size_base The base text size in points (pt). Defaults to 12 pts. 
#' @param text_size_rel The default relative size for text elements.
#'
#' @export
dfr_convert_font_size <- function(text_size_base = 12,
                              text_size_rel = 0.9166667) {
  text_size_base * text_size_rel / ggplot2::.pt
}