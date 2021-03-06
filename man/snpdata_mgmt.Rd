% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/snpdata_mgmt.R
\name{snpdata_mgmt}
\alias{snpdata_mgmt}
\title{SNP Data Management}
\usage{
snpdata_mgmt(
  bim_file,
 
    Affx_HuOrigin = "~/cmcouto.silva@usp.br/lab_files/datasets/Reference_annotation/Affymetrix/Axiom_GW_HuOrigin.na35.annot.csv",
  update_snpID = T,
  update_alleles = T,
  remove_dup_pos = F
)
}
\arguments{
\item{bim_file}{Character. Name of bim file.}

\item{Affx_HuOrigin}{Character. <path_to> Axiom_GW_HuOrigin table, available for download at:
https://www.thermofisher.com/br/en/home/life-science/microarray-analysis/microarray-data-analysis/genechip-array-annotation-files.html}

\item{update_snpID}{Logical. Informs if SNPs will be named according to the reference information (default = TRUE).}

\item{update_alleles}{Logical. Informs if SNPs with zeros will be updated to its basis (default = TRUE).}

\item{remove_dup_pos}{Logical. Informs if duplicated SNPs in dataset would be removed (via Plink Software); otherwise, 
if any duplicated positions is present on dataset, this function will not progress. Default set to FALSE.}
}
\value{
.bim file with updated SNP IDs
}
\description{
Remove SNPs with duplicated positions, as well as no congruent match to reference table.
It provides the possibility of updating missing alleles (0 to the correspondent allele) and SNP IDs (
RefSNP (rs), and Affymetrix ID (Affy), if there is no information for RefSNP).
}
\examples{

\dontrun{

bim_file <- "myfile.bim"
Affx_HuOrigin <- "Axiom_GW_HuOrigin.na35.annot.csv"

# Running function
snpdata_mgmt(bim_file, Affx_HuOrigin)
}

}
\author{
Cainã Max Couto-Silva
}
