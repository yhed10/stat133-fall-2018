
#' @title Check_sides
#' @description check for right sides \code{"check_sides"}
#' @param sides vector of sides
#' @return TRUE if sides is right sides \code{"check_sides"}
#' @export
#' @examples
#' sides = c('i', 'ii', 'iii', 'iv')
#'check_sides(sides)
check_sides <- function(sides) {
  if (is.vector(sides) != TRUE) {
    stop("\n sides must be a vector")
  }
  if (length(sides) < 2) {
    stop("\n 'sides' must be a vector of length greater than 1")
  }
  if (length(duplicated(sides)[duplicated(sides) == FALSE]) != length(sides)) {
    stop("\n 'sides' cannot have duplicated elements")
  }
  TRUE
}

#' @title Check_prob
#' @description check for right prob \code{"check_prob"}
#' @param prob vector of prob
#' @return TRUE if prob is right prob \code{"check_prob"}
#' @export
#' @examples
#' prob = rep(1/4, 4)
#' check_prob(prob)

check_prob <- function(prob) {
  if (!is.numeric(prob)) {
    stop("\n'prob' must be a numeric vector of length 2")
  }
  if (any(prob < 0) | any(prob > 1)) {
    stop("\n'prob' values must be between 0 and 1")
  }
  if (sum(prob) != 1) {
    stop("\nelements in 'prob' must add up to 1")
  }
  TRUE
}
#' @title Device
#' @description creates an object of class \code{"device"}
#' @param sides vector of sides
#' @param prob vector of prob
#' @return an object of class \code{"device"}
#' @export
#' @examples
#' device1 <- device()

device <- function(sides = c(1,2), prob = c(0.5, 0.5)){

  check_prob(prob)

  check_sides(sides)

  if(length(sides) != length(prob)){
    stop("'sides' and 'prob' have different lengths")
  }

  res <- list(sides = sides, prob = prob)

  class(res) <- "device"

  return(res)
}

print.device <- function(x) {
  cat('object "device"\n\n')
  cd <- data.frame(
    side = x$sides, prob = x$prob
  )
  print(cd)
  invisible(x)
}

#' @title check device
#' @description creates checking of an object of class \code{"is.device"}
#' @param x of device
#' @return TRUE or FALSE. If it is class of device TRUE, if not FALSE \code{"is.device"}
#' @export
#' @examples
#' device1 <- device()
#' is.device(device1)

is.device <- function(x){
  if(class(x) == "device"){
    TRUE
  }
  else {
    FALSE
  }
}

#' @title check times
#' @description checking right times \code{"check_times"}
#' @param times number of rolling
#' @return checking right times. If it is TRUE right times \code{"check_times"}
#' @export
#' @examples
#' times <- 10
#' check_times(10)

check_times <- function(times) {
  ti <- times%%1 == 0
  if (ti != TRUE | times <= 0) {
    stop("times must be a positive integer greater than or equal to 1")
  }
  TRUE
}
#' @title Rolling object
#' @description Rolling object and get data frame of sides, prob,
#' rolls, and total \code{"roll"}
#' @param x deivce
#' @param times times of rolling
#' @return data frame of sides, prob, rolls, and total \code{"roll"}
#' @export
#' @examples
#' device1 <- device()
#' roll(device1, times = 100)

roll <- function(x, times = 1){

  check_times(times)

  if(is.device(x) != TRUE){
    stop("device is not of class 'device'.")
  }

  res <- sample(x$sides, size = times, replace = TRUE, prob = x$prob)

  rec <- list(rolls = res, sides = x$sides, prob = x$prob,  total = times)

  class(rec) <- "rolls"

  return(rec)
}

print.rolls <- function(x) {
  cat('object "rolls"\n\n')
  ck <- list(rolls = x$rolls, sides = x$sides, prob = x$prob, total = x$total)
  print(ck)
  invisible(x)
}

#' @title data_count
#' @description counting of rolling object \code{"data_count"}
#' @param x object
#' @return list of counting rolling object \code{"data_count"}
#' @export

data_count <- function(x){
  count <- c()
  for(i in 1:length(x$sides)){
    count[i] <-  sum(x$rolls == x$sides[i])
  }
  count
}

#' @title prob of rolling object
#' @description list of prob
#' @param x object
#' @return list of prob \code{"data_prop"}
#' @export

data_prop <- function(x){
  prop <- c()
  for(i in 1:length(x$sides)){
    prop[i] <- sum(x$rolls == x$sides[i])/x$total[1]
  }
  prop
}

#' @title side of rolling object
#' @description list of side
#' @param x object
#' @return list of sides \code{"data_side"}
#' @export
data_side <- function(x){
  side <- c()
  for(i in 1:length(x$sides)){
    side[i] <- x$sides[i]
  }
  side
}
