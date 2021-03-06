#' @export
plink2 <- function(...) {
  values <- c(...)
  args <- names(values)
  program_on_path("plink2")
  
  if(is.null(args)) args <- ""
  commands <- ifelse(args == "", values, paste(args, values))
  commands <- paste(commands, collapse = " ")
  
  system(paste("plink2", commands))
}
