#' Apply custom theme
#' 
#' @param text_size_base The base text size in pts.
#' @param text_color_primary The text color. Defaults to #757575, except 
#'   for plot title and caption.
#' @param axis_line_color The axis line color. Defaults to #E0E0E0.
#' @param grid_major_lwd The base size for major grid lines.
#' @param plot_margin The base size for plot margins on the top, right, bottom
#'   and left sides in cm. Defaults to 0.25 cm.
#'
#' @importFrom ggplot2 %+replace%
#' 
#' @export
dfr_theme <- function(text_size_base = 12,
                      text_color_primary = "#757575",
                      axis_line_color = "#E0E0E0",
                      grid_major_lwd = text_size_base / 22,
                      plot_margin = 0.25) {
  
  ggplot2::theme_grey(base_size = text_size_base) %+replace%
    theme(
      text = element_text(
        size = text_size_base, 
        color = text_color_primary
      ),
      axis.title = element_text(size = rel(1)),
      axis.text = element_text(
        size = rel(1),
        color = text_color_primary
      ),
      plot.title = element_text(
        face = "bold",
        hjust = 0,
        size = rel(1.166667),
        color = "#000000",
        margin = margin(b = 5)
      ),
      plot.subtitle = element_text(
        hjust = 0,
        size = rel(1.041667),
        color = text_color_primary,
        margin = margin(b = 10)
      ),
      plot.title.position = "plot",
      plot.caption = element_text(
        hjust = 0,
        size = rel(0.8333333),
        color = "#9E9E9E",
        margin = margin(t = 10)
      ),
      plot.caption.position = "plot",
      strip.text = element_text(
        face = "bold",
        hjust = 0,
        size = rel(1)
      ),
      strip.background = element_blank(),
      panel.background = element_rect(
        fill = "#FFFFFF", 
        color = NA
      ),
      panel.spacing = unit(1, "lines"),
      panel.grid.minor = element_blank(),
      panel.grid.major = element_line(
        size = grid_major_lwd,
        color = axis_line_color
      ),
      panel.border = element_blank(),
      plot.background = element_rect(
        fill = "#FFFFFF",
        color = NA
      ),
      plot.margin = margin(
        t = plot_margin, 
        r = plot_margin, 
        b = plot_margin, 
        l = plot_margin, 
        unit = "cm"
      ),
      axis.line = element_blank(),
      axis.ticks = element_blank()
    )
  
}