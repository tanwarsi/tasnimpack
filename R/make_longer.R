#' @title Convert to Long Format
#' @description a function that changes World Bank DataBank files from short to long format
#' @param  filename A data frame containing indicator values by year and country ISO in short format.
#' @return A data frame with iso, year, and the indicator values in long format.
#' @examples
#' make_longer(maternal_mortality)
#' @export 

make_longer <- function(filename) {
  indicator_name <- deparse(substitute(filename))
  filename|>
  tidyr::pivot_longer(
                 cols = tidyr::starts_with("X"),
                 names_to = "year",
                 names_prefix = "X", # removes X from year column
                 values_to = indicator_name) |> 
  dplyr::mutate(year = as.numeric(year)) |> # change year to numeric
  dplyr::select(iso, year, tidyr::all_of(indicator_name))
} 

