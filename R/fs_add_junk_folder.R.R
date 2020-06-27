#' Adds a junk folder called 99_junk which containing empty file into every folder
#'
#' Description
#'
#' @param p1 
#' @param p2 
#' @return Does not return to calling function, writes to file system rather
#' @export
#' @importFrom magrittr %>%
#' @examples
#' \dontrun{
#' my_function(p1 = NULL, p2 = NULL)
#' }

library("dplyr")

fs_add_junk_folder <- function(folder_directory = getwd(), junk_folder_name = "99_junk", dummy_file = TRUE) {
  
  # This is a recursive function that traverses through the file system and adds junk folder and file
  all_folders = list.dirs(path = folder_directory, recursive = T) 
  all_folders = all_folders %>% grep(pattern = paste0("*", junk_folder_name), value = T, invert = T)
  print(all_folders)
  
  all_folders %>% sapply(function(x){
    dir.create(paste0(x, "/", junk_folder_name))
    
    if(dummy_file){
      sink(file = paste0(x , "/", junk_folder_name, "/","99_junk.txt"), 
           type = c("output"), append = TRUE)
      cat("This is a junk file automatically created by fsutils R package", "\n")
      sink() # Unmounts output_filename text file
    }
  })
  

  # if (junk_folder_name %in% dir(folder_directory) == FALSE){
    
  # }
  
  # all_folders %>% 
  #   setdiff(junk_folder_name) %>% 
  #   sapply(function(x) fs_add_junk_folder(folder_directory = x, junk_folder_name = "99_junk", dummy_file = TRUE))
      
      
  
  
  
  invisible() # To return nothing
}

fs_add_junk_folder(folder_directory = getwd(), junk_folder_name = "99_junk", dummy_file = TRUE)

  