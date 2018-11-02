#' @title is_hex()
#' @description check that the value of six hexadecimal digits whether works or not
#' @param any digits
#' @return TRUE if works or FLASE if not works

is_hex<- function(x){
  if(is.character(x) != TRUE){
    stop("invalid input; a string was expected")
  }
  range1 <- c("0","1","2","3","4","5","6","7","8","9")
  LETTERS1 <- c("A","B","C","D","F")
  
  x <- toupper(x)
  
  sub_2 <- substring(x, 2,2) == LETTERS1
  sub_3 <- substring(x, 3,3) == LETTERS1
  sub_4 <- substring(x, 4,4) == LETTERS1
  sub_5 <- substring(x, 5,5) == LETTERS1
  sub_6 <- substring(x, 6,6) == LETTERS1
  sub_7 <- substring(x, 7,7) == LETTERS1
  
  sub.2 <- substring(x, 2,2) == range1
  sub.3 <- substring(x, 3,3) == range1
  sub.4 <- substring(x, 4,4) == range1
  sub.5 <- substring(x, 5,5) == range1
  sub.6 <- substring(x, 6,6) == range1
  sub.7 <- substring(x, 7,7) == range1
  
  tolength <- length(sub_2[sub_2== TRUE]) + length(sub.2[sub.2== TRUE])+
    length(sub_3[sub_3== TRUE]) + length(sub.3[sub.3== TRUE])+
    length(sub_4[sub_4== TRUE]) + length(sub.4[sub.4== TRUE])+
    length(sub_5[sub_5== TRUE]) + length(sub.5[sub.5== TRUE])+
    length(sub_6[sub_6== TRUE]) + length(sub.6[sub.6== TRUE])+
    length(sub_7[sub_7== TRUE]) + length(sub.7[sub.7== TRUE])
  
  if(nchar(x) == 7 & tolength == 6 & substr(x , 1, 1) == "#"){
    return(TRUE)
  }
  else {
    return(FALSE)
  }
}
#' @title is_hex_alpha()
#' @description check that the value of eight hexadecimal digits whether works or not
#' @param any digits
#' @return TRUE if works or FLASE if not works

is_hex_alpha<- function(x){
  if(is.character(x) != TRUE){
    stop("invalid input; a string was expected")
  }
  range1 <- c("0","1","2","3","4","5","6","7","8","9")
  LETTERS1 <- c("A","B","C","D","F")
  
  x <- toupper(x)
  
  sub_2 <- substring(x, 2,2) == LETTERS1
  sub_3 <- substring(x, 3,3) == LETTERS1
  sub_4 <- substring(x, 4,4) == LETTERS1
  sub_5 <- substring(x, 5,5) == LETTERS1
  sub_6 <- substring(x, 6,6) == LETTERS1
  sub_7 <- substring(x, 7,7) == LETTERS1
  sub_8 <- substring(x, 8,8) == LETTERS1
  sub_9 <- substring(x, 9,9) == LETTERS1
  
  sub.2 <- substring(x, 2,2) == range1
  sub.3 <- substring(x, 3,3) == range1
  sub.4 <- substring(x, 4,4) == range1
  sub.5 <- substring(x, 5,5) == range1
  sub.6 <- substring(x, 6,6) == range1
  sub.7 <- substring(x, 7,7) == range1
  sub.8 <- substring(x, 8,8) == range1
  sub.9 <- substring(x, 9,9) == range1
  
  
  tolength <- length(sub_2[sub_2== TRUE]) + length(sub.2[sub.2== TRUE])+
    length(sub_3[sub_3== TRUE]) + length(sub.3[sub.3== TRUE])+
    length(sub_4[sub_4== TRUE]) + length(sub.4[sub.4== TRUE])+
    length(sub_5[sub_5== TRUE]) + length(sub.5[sub.5== TRUE])+
    length(sub_6[sub_6== TRUE]) + length(sub.6[sub.6== TRUE])+
    length(sub_7[sub_7== TRUE]) + length(sub.7[sub.7== TRUE])+
    length(sub_8[sub_8== TRUE]) + length(sub.8[sub.8== TRUE])+
    length(sub_9[sub_9== TRUE]) + length(sub.9[sub.9== TRUE])
  
  if(nchar(x) == 9 & tolength == 8 & substr(x , 1, 1) == "#"){
    return(TRUE)
  }
  else {
    return(FALSE)
  }
}