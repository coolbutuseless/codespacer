

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' Install codespace files into a '.devcontainer' directory at this location
#' 
#' @param path path to install into
#' @return TRUE
#' @export
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
install_codespace_files <- function(path = ".") {
  src <- system.file("dot_devcontainer", package = "codespacer", mustWork = TRUE)
  
  files <- list.files(src, full.names = TRUE)
  
  outpath <- file.path(path, ".devcontainer")
  dir.create(outpath, showWarnings = FALSE, recursive = TRUE)
  
  for (file in files) {
    file.copy(
      from = file,
      to = outpath,
      recursive = TRUE
    )
  }
}