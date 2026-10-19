#' @title Convert to Long Format
#' @description a function that changes files from short to long format
#' @param x  file name
#' @return reads loaded  file, creates  variable name for statistic, organizes by country and data for each year for each country is presented in long format.
#' @examples
#' make_longer(maternal_mortality)
#' @export 

make_longer <- function(filename) {
  #indicator_name <- tools::file_path_sans_ext(filename)
  #read.csv(file.path("./data/raw", filename), header = TRUE) |>
  indicator_name <- deparse(substitute(filename))
  filename|>
  tidyr::pivot_longer(cols = starts_with("X"),
                 names_to = "year",
                 names_prefix = "X", # removes X from year column
                 values_to = indicator_name) |> 
  dplyr::mutate(year = as.numeric(year)) |> # change year to numeric
  dplyr::select(iso, year, all_of(indicator_name))
} 

