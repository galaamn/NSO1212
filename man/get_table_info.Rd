% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_table_info.R
\name{get_table_info}
\alias{get_table_info}
\title{Detailed Information about a Table and Its Classification}
\usage{
get_table_info(tbl_id, simplify = FALSE, try = FALSE)
}
\arguments{
\item{tbl_id}{character string, Table identification number}

\item{simplify}{logical: Should the result be simplified to a vector and a data frame?}

\item{try}{logical: Should the body of the function be wrapped by the function \code{\link[base]{try}}? See details.}
}
\value{
A list which contains table information and classification if the function is executed without error, but an object of class "try-error" containing the error message, if it fails. The list has following structure:
\describe{
 \item{tbl_id}{Table identification number}
 \item{unit_id}{Unit identification number}
 \item{unit_nm}{Unit name in Mongolia}
 \item{unit_eng_nm}{Unit name in English}
 \item{obj}{Table classification:
  \describe{
   \item{obj_var_id}{Variable identification}
   \item{var_ord_sn}{Variable identification number}
   \item{field}{Field name}
   \item{scr_mn}{Variable name in Mongolian}
   \item{scr_eng}{Variable identification}
   \item{itm}{Variable classification and code:
    \describe{
     \item{itm_id}{Classification number}
     \item{up_itm_id}{Sub-classification}
     \item{scr_mn}{Classification name in Mongolian}
     \item{scr_eng}{Classification name in English}
    }
   }
  }
 }
}
if \code{simplify} is \code{TRUE}, an user-friendly result is returned.
}
\description{
Detailed information about a table and its classification on the API \href{http://opendata.1212.mn/en/doc}{opendata.1212.mn} which is supported by \href{http://www.en.nso.mn}{National Statistical Office of Mongolia (NSO)}
}
\details{
The NSO server returns "HTTP error 500" frequently. Due to the server error, error handling is supported. if \code{try} is \code{TRUE}, you have to write code with error handling as shown in the example.
}
\examples{
# tree shaped result
table_info <- get_table_info("DT_NSO_2400_015V2", try = TRUE)
if (!inherits(table_info, "try-error")) {
  table_info$unit_nm
  table_info$obj[[1]]$itm[[1]]$scr_mn
}
# tabular result
table_info_simplified <- get_table_info("DT_NSO_2400_015V2", simplify = TRUE, try = TRUE)
if (!inherits(table_info_simplified, "try-error")) {
  table_info_simplified$tbl_id
  table_info_simplified$unit
  table_info_simplified$codes
  table_info_simplified$CODE
  table_info_simplified$CODE1
}
}
\references{
\url{http://opendata.1212.mn/en/doc/Api/GET-api-Itms-id}
}
\seealso{
\link{all_tables}, \link{get_table}, \link{get_sector_info}
}
