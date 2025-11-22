parse_photo <- function(photopath){

  # load photo
  img <- magick::image_read(photopath)

  # get photo height and width
  info <- magick::image_info(img)
  w <- info$width
  h <- info$height

  # trans matrix
  mat <- magick::image_data(img, channels = "gray")
  mat <- as.integer(mat, transpose = TRUE)  # 转成整数 & 转置成普通矩阵形式
  mat <- drop(mat)

  # get outlier data
  cl <- image.ContourDetector::image_contour_detector(mat)

  return(cl$data)


}
