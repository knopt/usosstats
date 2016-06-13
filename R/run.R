#' The only one function of package
#' 
#' Runs Shiny app.
#'
#' @export
run <- function() {
  data("ankiety")
  data("oceny")
  
  appDir <- system.file("shiny", "usosstats", package = "usosstats")
  if (appDir == "") {
    stop("Nie znaleziono aplikacji. Spróbuj zainstalować pakiet ponownie.", call. = FALSE)
  }
  
  shiny::runApp(appDir, display.mode = "normal")
}