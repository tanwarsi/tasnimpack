#' Example data
#'
#' Maternal mortality data from years 1960 to 2021 for 186 countries in the paper. Source: World Bank.
#'
#' @docType data
#' @format A data frame with 186 rows and 23 variables:
#' \describe{
#'   \item{iso}{Country ISO}
#'   \item{indicator}{Description of the indicator}
#'   \item{X2000-X2019}{Maternal Mortality Ratio for given year (modelled estimate, per 100 000 live births)}
#' }
#' @source https://data.worldbank.org/indicator/SH.STA.MMRT
"maternal_mortality"