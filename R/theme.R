# algoritma themes --------------------------------------------------------

#' @title Algoritma themes
#'
#' @inheritParams ggplot2::theme_minimal
#'
#' @param mode The theme's mode; either `"light"` or `"dark"` mode.
#'
#' @details
#'
#'  Will be updated soon.
#'
#' @examples
#'
#' # import libs
#' library(ggplot2)
#' library(algothemes)
#'
#' # an example visualization
#' p <- ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width)) +
#'   geom_point(aes(colour = Species))
#'
#' p
#'
#' # with theme_algo
#' p +
#'   theme_algo()
#'
#' @export

theme_algo <- function(base_size = 11, base_family = "",
                       base_line_size = base_size / 22,
                       base_rect_size = base_size / 22,
                       mode = "light") {

  # relative font sizes:
  # * normal: `base_size` or `rel(1)`
  # * small: `rel(0.8)`
  # * large: `rel(1.2)`

  half_line <- base_size / 2

  theme(
    line = element_line(
      colour = ifelse(mode == "light", "black", "white"),
      size = base_line_size,
      linetype = 1,
      lineend = "butt"
    ),
    rect = element_rect(
      fill = ifelse(mode == "light", "white", "black"),
      colour = ifelse(mode == "light", "black", "white"),
      size = base_rect_size,
      linetype = 1
    ),
    text = element_text(
      family = base_family,
      face = "plain",
      colour = ifelse(mode == "light", "black", "white"),
      size = base_size,
      lineheight = 0.9,
      hjust = 0.5,
      vjust = 0.5,
      angle = 0,
      margin = margin(),
      debug = FALSE
    ),
    axis.line = element_blank(),
    axis.line.x = NULL,
    axis.line.y = NULL,
    axis.text = element_text(
      size = rel(0.8),
      colour = ifelse(mode == "light", "grey20", "grey80")
    ),
    axis.text.x = element_text(
      margin = margin(t = 1 * half_line),
      vjust = 1
    ),
    axis.text.x.top = element_text(
      margin = margin(b = 1 * half_line),
      vjust = 0
    ),
    axis.text.y = element_text(
      margin = margin(r = 1 * half_line),
      hjust = 1
    ),
    axis.text.y.right = element_text(
      margin = margin(l = 1 * half_line),
      hjust = 0
    ),
    axis.ticks = element_blank(),
    axis.ticks.length = unit(half_line / 2, "pt"),
    axis.ticks.length.x = NULL,
    axis.ticks.length.x.top = NULL,
    axis.ticks.length.x.bottom = NULL,
    axis.ticks.length.y = NULL,
    axis.ticks.length.y.left = NULL,
    axis.ticks.length.y.right = NULL,
    axis.title = element_text(size = rel(1)),
    axis.title.x = element_text(
      margin = margin(t = 2 * half_line),
      vjust = 1
    ),
    axis.title.x.top = element_text(
      margin = margin(b = 2 * half_line),
      vjust = 0
    ),
    axis.title.y = element_text(
      angle = 90,
      margin = margin(r = 2 * half_line),
      vjust = 1
    ),
    axis.title.y.right = element_text(
      angle = -90,
      margin = margin(l = 2 * half_line),
      vjust = 0
    ),
    legend.background = element_blank(),
    legend.spacing = unit(2 * half_line, "pt"),
    legend.spacing.x = NULL,
    legend.spacing.y = NULL,
    legend.margin = margin(
      t = half_line,
      r = half_line,
      b = half_line,
      l = half_line
    ),
    legend.key = element_blank(),
    legend.key.size = unit(1, "lines"),
    legend.key.height = NULL,
    legend.key.width = NULL,
    legend.text = element_text(size = rel(0.8)),
    legend.text.align = NULL,
    legend.title = element_text(face = "bold", size = rel(0.8), hjust = 0),
    legend.title.align = NULL,
    legend.position = "top",
    legend.direction = NULL,
    legend.justification = "center",
    legend.box = NULL,
    legend.box.margin = margin(
      t = 0,
      r = 0,
      b = 0,
      l = 0,
      unit = "pt"
    ),
    legend.box.background = element_blank(),
    legend.box.spacing = unit(2 * half_line, "pt"),
    panel.background = element_blank(),
    panel.border = element_blank(),
    panel.grid = element_line(colour = ifelse(mode == "light", "grey95", "grey15")),
    panel.grid.minor = element_blank(),
    panel.spacing = unit(half_line, "pt"),
    panel.spacing.x = NULL,
    panel.spacing.y = NULL,
    panel.ontop = FALSE,
    strip.background = element_blank(),
    strip.text = element_text(
      colour = ifelse(mode == "light", "grey10", "grey90"),
      size = rel(0.8),
      margin = margin(
        t = 0.8 * half_line,
        r = 0.8 * half_line,
        b = 0.8 * half_line,
        l = 0.8 * half_line
      )
    ),
    strip.text.x = NULL,
    strip.text.y = element_text(angle = -90),
    strip.placement = "inside",
    strip.placement.x =  NULL,
    strip.placement.y =  NULL,
    strip.switch.pad.grid = unit(half_line / 2, "pt"),
    strip.switch.pad.wrap = unit(half_line / 2, "pt"),
    plot.background = element_rect(colour = ifelse(mode == "light", "white", "black")),
    plot.title = element_text(
      face = "bold",
      colour = ifelse(mode == "light", palette_algo_light("red"), palette_algo_dark("red")),
      size = rel(1.2),
      hjust = 0,
      vjust = 1,
      margin = margin(
        t = 1 * half_line,
        b = 3 * half_line
      )
    ),
    plot.subtitle = element_text(
      size = rel(1),
      hjust = 0,
      vjust = 1,
      margin = margin(
        t = -2 * half_line,
        b = 3 * half_line
      )
    ),
    plot.caption = element_text(
      size = rel(0.8),
      hjust = 1,
      vjust = 1,
      margin = margin(t = 3 * half_line)
    ),
    plot.tag = element_text(
      size = rel(1.2),
      hjust = 0.5,
      vjust = 0.5
    ),
    plot.tag.position = 'topleft',
    plot.margin = margin(
      t = half_line,
      r = half_line,
      b = half_line,
      l = half_line
    ),
    complete = TRUE
  )

}
