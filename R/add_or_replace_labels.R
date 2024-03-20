# This function add or replaces the label attribute of a given dataframe from a label_list/vector

add_or_replace_labels <- function(data, 
                                  label_list) {
  for (col_name in names(label_list)) {
    if (col_name %in% names(data)) {
      attr(data[[col_name]], "label") <- label_list[[col_name]]
    }
  }
  return(data)
}