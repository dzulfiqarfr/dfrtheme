#' Apply custom theme
#' 
#' @param text_size_base The base text size in points (pt). Defaults to 12 pts.
#' @param text_color_primary The text color. Defaults to #757575, except 
#'   for plot title and caption.
#' @param axis_line_color The axis line color. Defaults to #E0E0E0.
#' @param line_size_base The base size for lines.
#' @param plot_margin The base size for plot margins on the top, right, bottom
#'   and left sides in cm. Defaults to 0.25 cm.
#'
#' @importFrom ggplot2 %+replace%
#' 
#' @export
dfr_theme <- function(text_size_base = 12,
                      text_color_primary = "#757575",
                      axis_line_color = "#E0E0E0",
                      line_size_base = text_size_base / 22,
                      plot_margin = 0.25) {
  
  ggplot2::theme_grey() %+replace%
    ggplot2::theme(
      line = ggplot2::element_line(size = line_size_base),
      text = ggplot2::element_text(
        size = text_size_base, 
        color = text_color_primary
      ),
      axis.title.x = ggtext::element_markdown(margin = ggplot2::margin(t = 5)),
      axis.title.y = ggtext::element_markdown(
        angle = 90,
        margin = ggplot2::margin(r = 5)
      ),
      axis.title.y.right = ggtext::element_markdown(
        angle = -90,
        margin = ggplot2::margin(l = 5)
      ),
      axis.text = ggplot2::element_text(
        size = ggplot2::rel(0.9166667),
        color = text_color_primary
      ),
      axis.line = ggplot2::element_blank(),
      axis.ticks = ggplot2::element_blank(),
      plot.title = ggtext::element_markdown(
        face = "bold",
        hjust = 0,
        size = ggplot2::rel(1.166667),
        color = "#000000",
        margin = ggplot2::margin(b = 5)
      ),
      plot.subtitle = ggtext::element_markdown(
        hjust = 0,
        size = ggplot2::rel(1.041667),
        color = text_color_primary,
        margin = ggplot2::margin(b = 10)
      ),
      plot.title.position = "plot",
      plot.caption = ggtext::element_markdown(
        hjust = 0,
        size = ggplot2::rel(0.875),
        color = "#9E9E9E",
        margin = ggplot2::margin(t = 10)
      ),
      plot.caption.position = "plot",
      strip.text = ggplot2::element_text(
        face = "bold",
        hjust = 0,
        size = rel(1)
      ),
      strip.background = ggplot2::element_blank(),
      legend.text = ggplot2::element_text(size = ggplot2::rel(0.9166667)),
      legend.title = ggplot2::element_blank(),
      legend.key = ggplot2::element_blank(),
      legend.background = ggplot2::element_blank(),
      legend.margin = ggplot2::margin(0),
      panel.background = ggplot2::element_rect(
        fill = "#FFFFFF", 
        color = NA
      ),
      panel.spacing = ggplot2::unit(1, "lines"),
      panel.grid.minor = ggplot2::element_blank(),
      panel.grid.major = ggplot2::element_line(color = axis_line_color),
      panel.border = ggplot2::element_blank(),
      plot.background = ggplot2::element_rect(
        fill = "#FFFFFF",
        color = NA
      ),
      plot.margin = ggplot2::margin(
        t = plot_margin, 
        r = plot_margin, 
        b = plot_margin, 
        l = plot_margin, 
        unit = "cm"
      )
    )
  
}