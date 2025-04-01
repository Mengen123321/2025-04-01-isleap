#' Is this a leap year?
#'
#' @param num a number, or a stringn that costains a number
#'
#' @return TRUE or FALSE on whether or not it is a leap year
#'
#' @export 
#' 
#' @examples
#' # example code
#' is_leap(1000) # Returns TRUE
#' is_leap(11) # Returns FALSE
#' is_leap("the year is 1000 CE") # Returns TRUE
#' 
#' \dontrun{
#' is_leap(mtcars)
#' }
#'
is_leap <- function(num) {

  if (is.character(num)) {
    # Extract num from string
    num <- stringr::str_extract(num, "\\d+")
    num <- as.numeric(num)
  }

  if (num %% 4 == 0) {
    return(TRUE)
  } else {
    return(FALSE)
  }
}

# rm(list = ls()) # removes things from env, but not detach libraries
