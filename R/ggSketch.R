#' Generate a sketch-style plot from a photo
#'
#' @param photopath Character
#' The path of photo
#' @param color Character
#' The color of sketch plot
#' @param linewidth Numeric
#' The linewidth of sketch plot
#'
#' @returns a ggplot object
#' @export
#'
#' @examples NULL
ggSketch <- function(photopath, color = "#000000", linewidth = 0.3){
  # get parse out
  data <- parse_photo(photopath)

  # plot
  p <- ggplot2::ggplot(data = data,
                       mapping = ggplot2::aes(x = x, y = y, group = curve)) +
    ggplot2::geom_path(linewidth = linewidth,
                       color = color) +
    ggplot2::coord_fixed() +
    ggplot2::theme_void()

  return(p)
}
