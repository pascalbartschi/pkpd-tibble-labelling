 # This function allows to search for a label

search_label <- function(var, mode = "remote"){
  tryCatch({
    var <- toupper(var)
    
    if (mode == "remote"){
      labels <- read.csv("https://raw.githubusercontent.com/pascalbartschi/pkpd-tibble-labelling/main/output/all_variables2labels.csv")
    } else {
      labels <- read_labels(path = "data")
    }
    
    if (var %in% names(labels)) {
      print(labels[var])
    } else if (is.null(label)){
      warning("This columns exists but was never assigned a label.")
    } else {
      warning("This column name is not present in any of the provided data frames.\nDebugging: Check spelling or provide more data frames.")
    }
  },
  error = function(e) {
    warning("An error occurred:", conditionMessage(e))
  })
  
}