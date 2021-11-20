# avoid Note when running check
utils::globalVariables(c("count"))

#' Group and Sort by Count
#'
#' Group the data by variable names and sort them. If there is NA in the value, will consider it as one of the groups.
#'
#' @param data the data source to be handled
#' @param variable_names variable names which will be used for grouping
#'
#' @return grouped and sorted summarized result
#' throws error if data is not a dataframe or variable_names has no value
#'
#' @examples
#' library(datateachr)
#' group_and_sort_by_count(steam_games, genre)
#' group_and_sort_by_count(vancouver_trees, genus_name)
#'
#'
#' @export

group_and_sort_by_count <- function(data, variable_names) {
  stopifnot(is.data.frame(data))
  stopifnot(!missing(variable_names))
  variable_names <- dplyr::enquo(variable_names)
  return (data %>%
            dplyr::group_by_at(dplyr::vars(!!variable_names)) %>%
            dplyr::summarise(count = dplyr::n()) %>%
            dplyr::arrange(count))
}
