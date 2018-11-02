#' @title count_vowels()
#' @description function of counting number of vowels
#' @param any character string
#' @return number of vowels with letter of vowels

count_vowels <- function(x){
  if(is.character(x) != TRUE){
    stop("invalid input; a string was expected")
  }
  volwes <- c("a","e","i","o","u")
  x <- tolower(strsplit(x, "")[[1]])
  x <- x[x %in% volwes]
  
  xa <- x == "a"
  xe <- x == "e"
  xi <- x == "i"
  xo <- x == "o"
  xu <- x == "u"
  
  len_a <- length(xa[xa == TRUE])
  len_e <- length(xe[xe == TRUE])
  len_i <- length(xi[xi == TRUE])
  len_o <- length(xo[xo == TRUE])
  len_u <- length(xu[xu == TRUE])
  
  col_len <- as.double(c(len_a,len_e,len_i,len_o,len_u))
  
  names(col_len) <- volwes
  
  return(col_len)
}


