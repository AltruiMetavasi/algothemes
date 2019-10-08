# fill scales -------------------------------------------------------------

#' @title Algoritma fill scale
#'
#' @inheritParams theme_algo
#'
#' @param discrete A `logical` to specify whether to scale the fill in
#'  discrete or continuous scale. Default to `TRUE`.
#' @param ... Other arguments passed on to `discrete_scale()`
#'  or `scale_fill_gradientn()`.
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
#' p <- ggplot(iris, aes(x = Species, y = Sepal.Length)) +
#'   geom_boxplot(aes(fill = Species))
#'
#' p
#'
#' # with theme_algo and scale_fill_algo
#' p +
#'   theme_algo() +
#'   scale_fill_algo()
#'
#' @export

# scale fill
scale_fill_algo <- function(discrete = TRUE, mode = "light", ...) {

  if (mode == "light") {

    pal <- ramp_palette_algo_light(discrete = discrete)

  } else {

    pal <- ramp_palette_algo_dark(discrete = discrete)

  }

  if (discrete) {

    discrete_scale("fill", "algo", palette = pal, ...)

  } else {

    scale_fill_gradientn(colours = pal(256), ...)

  }

}
