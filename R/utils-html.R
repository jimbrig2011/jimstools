# HTML Related Utility Functions

#' Replace HTML special characters with HTML entities
#'
#' The characters \code{c("&", '"', "'", "<", ">")} will be replaced with
#' \code{c("&amp;", "&quot;", "&#039;", "&lt;", "&gt;")}, respectively.
#' @param string the string with (or w/o) HTML special chars
#' @return the string with special chars replaced.
#' @seealso \code{\link{gsub}}
#' @references \url{https://www.php.net/manual/en/function.htmlspecialchars.php}
#' @export
#' @examples
#' htmlspecialchars("<a href = 'https://yihui.org'>Yihui</a>")
#' # &lt;a href = &#039;https://yihui.org&#039;&gt;Yihui&lt;/a&gt;
htmlspecialchars <- function(string) {
  x = c("&", '"', "'", "<", ">")
  subx = c("&amp;", "&quot;", "&#039;", "&lt;", "&gt;")
  for (i in seq_along(x)) {
    string = gsub(x[i], subx[i], string, fixed = TRUE)
  }
  string
}
