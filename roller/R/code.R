library(roxygen2)
#' @title Check_sides
#' @description check for right sides \code{"check_sides"}
#' @param sides vector of sides
#' @return TRUE if sides is right sides \code{"check_sides"}
#' @export
#' @examples
#'check_sides(1)
#'
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
#' @examples check_prob(0.5)
#'

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
#' @examples device()
#' # default
#' device1 <- device()
#'

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
#' @param fucntion of device
#' @return TRUE or FALSE. If it is class of device TRUE, if not FALSE \code{"is.device"}
#' @export
#' @examples
#' fair_coin <- device()
#' is.device(fair_coin)
#'
#'

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
#' check_times(2)
#'
#'
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
#' @param times number of rolling
#' @return data frame of sides, prob, rolls, and total \code{"roll"}
#' @export
#' @examples
#'
#'
#' roll1 = roll()
#'
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
#' @description summary of rolling object and get data frame of sides, prob,
#' rolls, and total \code{"data_count"}
#' @param rolling object
#' @return summary of count, prop, and sides \code{"data_count"}
#' @export
#' @examples
#'data_count()
#'
data_count <- function(x){
  count <- c()
  for(i in 1:length(x$sides)){
    count[i] <-  sum(x$rolls == x$sides[i])
  }
  count
}

#' @title summary of rolling object
#' @description summary of rolling object and get data frame of sides, prob,
#' rolls, and total \code{"data_prop"}
#' @param rolling object
#' @return summary of count, prop, and sides \code{"data_prop"}
#' @export
#' @examples
#'
#'
data_prop <- function(x){
  prop <- c()
  for(i in 1:length(x$sides)){
    prop[i] <- sum(x$rolls == x$sides[i])/x$total[1]
  }
  prop
}

#' @title summary of rolling object
#' @description summary of rolling object and get data frame of sides, prob,
#' rolls, and total \code{"data_side"}
#' @param rolling object
#' @return summary of count, prop, and sides \code{"data_side"}
#' @export
#' @examples
#'
#'
data_side <- function(x){
  side <- c()
  for(i in 1:length(x$sides)){
    side[i] <- x$sides[i]
  }
  side
}

#' @title summary of rolling object
#' @description summary of rolling object and get data frame of sides, prob,
#' rolls, and total \code{"summary.rolls"}
#' @param rolling object
#' @return summary of count, prop, and sides \code{"summary.rolls"}
#' @export
#' @examples
#'
#'
summary.rolls <- function(x, ...) {

  count <- data_count(x)
  side <- data_side(x)
  prop <- data_prop(x)

  freqs <- data.frame(side =data_side(x),count = data_count(x),prop = data_prop(x))

  obj <- list(freqs = freqs)

  class(obj) <- "summary.rolls"

  obj
}
print.summary.roll <- function(x, ...) {
  cat('summary "rolls"\n\n')
  print(x$freqs)
  invisible(x)
}

#' @title barplot of rolling object
#' @description using for getting
#' barplot of relative frequencies and sides \code{"plot.rolls"}
#' @param rolling object
#' @return barplot of relative frequencies and sides \code{"plot.rolls"}
#' @export
#' @examples
#'

plot.rolls <- function(x,...) {
  y <- summary(x)
  barplot(y$freqs$prop,
          xlab="sides of device", ylab="relative frequencies",
          col="grey",names.arg=c("1","2", "3","4","5","6"), border = NA
          ,main="Relative Frequencies in a series of 50 rolls")

}

