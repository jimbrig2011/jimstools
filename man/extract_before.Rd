% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/strings.R
\name{extract_before}
\alias{extract_before}
\title{Extract all characters in a string before a match}
\usage{
extract_before(full_string, before_string, trim_spaces = TRUE)
}
\arguments{
\item{full_string}{The full character string to extract from.}

\item{before_string}{A pattern specifying the string should be extracted before this.}

\item{trim_spaces}{logical T/F, if there are any spaces within the extracted
string, they will be removed. Default is TRUE.}
}
\value{
A string
}
\description{
If a string has more than one match, this will only return the first one.
}
\examples{

extract_before("What does the fox say?", before_string = "say")

}
