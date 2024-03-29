# base color palette ------------------------------------------------------

#' @title Algoritma color palette
#'
#' @param color,colour Specific color that need to be returned. See details.
#'
#' @details
#'
#'  Will be updated soon.
#'
#' @examples
#'
#' # import libs
#' library(algothemes)
#'
#' # get the full light palette
#' palette_algo_light()
#'
#' # get the full dark palette
#' palette_algo_dark()
#'
#' @export

# color palette: light
palette_algo_light <- function(color = NULL, colour = color) {

  # readjust arguments
  if (!is.null(colour)) {

    if (!is.null(color)) {

      warnings("Argument color is also specified and would be used instead of colour")

    } else {

      color <- colour

    }

  }

  # important colours
  # main: red
  # highlight: purple
  # gradient-low: orange
  # gradient-high: red

  # colour list:
  color_list <- fromJSON('
    [
      {"color":"#d02128", "name":"red", "textColor":"white"},
      {"color":"#f2b0f6", "name":"purple", "textColor":"white"},
      {"color":"#b4ddd4", "name":"blue", "textColor":"white"},
      {"color":"#faa566", "name":"orange", "textColor":"white"},
      {"color":"#aaf841", "name":"green", "textColor":"white"},
      {"color":"#46ebdc", "name":"turquoise", "textColor":"white"},
      {"color":"#f8e547", "name":"yellow", "textColor":"white"}
    ]
  ')

  # readjust to vector
  results <- color_list$color
  names(results) <- color_list$name

  # readjust to selected color (if any)
  if (!is.null(color)) {

    results <- results[color]

  }

  # return the selected color(s)
  results

}

ramp_palette_algo_light <- function(discrete = TRUE) {

  # get algo palette
  pal <- palette_algo_light()

  # return a color ramp palette
  if (discrete) {

    colorRampPalette(pal)

  } else {

    colorRampPalette(pal[c("orange", "red")])

  }

}

#' @rdname palette_algo_light
#' @export

# color palette: dark
palette_algo_dark <- function(color = NULL, colour = color) {

  # readjust arguments
  if (!is.null(colour)) {

    if (!is.null(color)) {

      warnings("Argument color is also specified and would be used instead of colour")

    } else {

      color <- colour

    }

  }

  # important colours
  # main: red
  # highlight: purple
  # gradient-low: orange
  # gradient-high: red

  # colour list:
  color_list <- fromJSON('
    [
      {"color":"#d02928", "name":"red", "textColor":"black"},
      {"color":"#f2b0f6", "name":"purple", "textColor":"black"},
      {"color":"#b4ddd4", "name":"blue", "textColor":"black"},
      {"color":"#faa566", "name":"orange", "textColor":"black"},
      {"color":"#aaf841", "name":"green", "textColor":"black"},
      {"color":"#46ebdc", "name":"turquoise", "textColor":"black"},
      {"color":"#f8e547", "name":"yellow", "textColor":"black"}
    ]
  ')

  # readjust to vector
  results <- color_list$color
  names(results) <- color_list$name

  # readjust to selected color (if any)
  if (!is.null(color)) {

    results <- results[color]

  }

  # return the selected color(s)
  results

}

ramp_palette_algo_dark <- function(discrete = TRUE) {

  # get algo palette
  pal <- palette_algo_dark()

  # return a color ramp palette
  if (discrete) {

    colorRampPalette(pal)

  } else {

    colorRampPalette(pal[c("orange", "red")])

  }

}
