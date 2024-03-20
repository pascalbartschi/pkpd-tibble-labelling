# Fills all labels of a given dataframe

fill_tibble_labels <- function(tbble) {
  # read in labels and assign labels to columns names
  return(add_or_replace_labels(tbble, read_labels(path = "data")))
}










