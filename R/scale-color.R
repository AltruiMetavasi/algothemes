# color scales ------------------------------------------------------------

#' @title Algoritma color scale
#'
#' @inheritParams theme_algo
#'
#' @param discrete A `logical` to specify whether to scale the colour in
#'  discrete or continuous scale. Default to `TRUE`.
#' @param ... Other arguments passed on to `discrete_scale()`
#'  or `scale_color_gradientn()`.
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
#' # with theme_algo and scale_colour_algo
#' p +
#'   theme_algo() +
#'   scale_colour_algo()
#'
#' @export

scale_color_algo <- function(discrete = TRUE, mode = "light", ...) {

  if (mode == "light") {

    pal <- ramp_palette_algo_light(discrete = discrete)

  } else {

    pal <- ramp_palette_algo_dark(discrete = discrete)

  }

  if (discrete) {

    discrete_scale("colour", "algo", palette = pal, ...)

  } else {

    scale_color_gradientn(colours = pal(256), ...)

  }

}

#' @rdname scale_color_algo
#' @export

# scale colour
scale_colour_algo <- function(discrete = TRUE, ...) {

  scale_color_algo(discrete = discrete, ...)

}
