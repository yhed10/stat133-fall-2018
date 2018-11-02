#' @title reverse_chars()
#' @description function of reversing order of character
#' @param any character
#' @return reversed order character

reverse_chars <- function(x){
  
  paste(rev(substring(x,1:nchar(x),1:nchar(x))),collapse="")
}
