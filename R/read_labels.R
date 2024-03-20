# This function reads in all the variable labels pairs from the dataframes in the given path

read_labels <- function(path = "data"){
  
  labels <- lapply(list.files(path, pattern = "*.csv"), function(file) read.csv(file.path(path, file), na.strings = c("", "NA", "N/A")))
  
  columns_to_select <- c("Variable.Name", "Variable.Label", "VARIABLE", "VARIABLE_LABEL", "Label", "LABEL")
  
  lst <- lapply(labels, function(data) data %>% 
                  filter(!any(is.na({{ columns_to_select }}))) %>% 
                  select(any_of(columns_to_select)) %>% 
                  pull(2, 1)) %>% unlist()
  
  return(lst)
}
