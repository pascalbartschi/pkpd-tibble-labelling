# This functions writes the labels to the output folder

write_labels_to_remote <- function(directory = "output", filename = "all_variables2labels.csv"){
  labels <- read_labels()
  
  if (!(dir.exists(directory))) {dir.create(directory)}
  # Enclose labels in double quotes
  labels_with_quotes <- sprintf('"%s"', labels)
  
  write.csv(data.frame(name = names(labels), 
                       labels = labels_with_quotes),
            file = file.path(directory, filename), 
            row.names = FALSE)
}