#' @title Read bim file
#' @description Read plink bim file
#' @param bim_file <path_to_bim_file>
#' @return Data.table and data.frame
#' @examples
#' \dontrun{
#' DT <- read.bim("./plink.bim")
#' }
#'
#' @export
#' @author Cainã Max Couto da Silva

read.bim <- function(bim_file, header = F, col.names = c("CHR","SNP","GD","POS","A1", "A2"), ...) {
  data.table::fread(bim_file, header = F, col.names = col.names, ...)
}
