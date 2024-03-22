# Fills all labels of a given dataframe

fill_tibble_labels <- function(tbble, mode = "remote") {
  # read in labels and assign labels to columns names
  if (mode == "remote"){
    labels <- read.csv("https://raw.githubusercontent.com/pascalbartschi/pkpd-tibble-labelling/main/output/all_variables2labels.csv")
  } else {
    labels <- read_labels(path = "data")
  }
  
  return(add_or_replace_labels(tbble, labels))
}










