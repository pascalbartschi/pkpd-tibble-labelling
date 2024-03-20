 # This function allows to search for a label

search_label <- function(var){
  tryCatch({
    var <- toupper(var)
    labels <- read_labels()
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