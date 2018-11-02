#' @title minkowski()
#' @description function of minkowski Distance
#' @param x,y,p numeric vecter
#' @return minkowski distance

minkowski <- function(x,y,p = 1){
  
  if(length(x) != length(y)){
    stop("x and y have different lengths")
  }
  if(p < 1){
    stop("p cannot be
         less than 1")
  }
  if(p == 'max'){
    p = Inf
  }else if(is.character(p) == TRUE ){
    stop("invalid character value for p")}
  k = 0
  for(i in 1: length(x))
    
    k <- k + (abs(x[i]-y[i]))^(p)
  
  k <- k^(1/p)
  
  return(k)
  }



