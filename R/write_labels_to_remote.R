# This functions writes the labels to the output folder

write_labels_to_remote <- function(filename = "output/all_variables2labels.csv"){
  labels <- read_labels()
  
  # Enclose labels in double quotes
  labels_with_quotes <- sprintf('"%s"', labels)
  
  write.csv(data.frame(name = names(labels), 
                       labels = labels_with_quotes),
            file = filename, 
            row.names = FALSE)
}