% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/write.vcf.R
\name{write.vcf}
\alias{write.vcf}
\title{Write .vcf}
\usage{
write.vcf(
  vcf,
  out,
  append = F,
  quote = F,
  sep = "\\t",
  row.names = F,
  col.names = T,
  ...
)
}
\arguments{
\item{vcf}{Dataframe. A data.table, data.frame or matrix object to be saved as vcf file.}

\item{output}{Character scalar. A character containg the name for desired output.}
}
\value{
Written file
}
\description{
Write vcf file
}
