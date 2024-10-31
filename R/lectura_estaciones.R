#' Lectura de archivos
#'
#' La función `lectura_estaciones()` toma como parametro el id de la estación a estudiar y la ruta del archivo,
#' si el archivo ya estaba descargado, lo disponibiliza para su posterior analisis, y de lo contrario,
#' lo descarga y luego lo diaponibiliza
#'
#' @param id_estacion conjunto de números y letras que identifica la estación
#' @param ruta la ruta donde se encuentra el archivo
#'
#' @return variable que contiene el archivo disponible para su análisis
#'
#' @examples
#' lectura_estaciones("NH0437", "./documentos/programacion/ejs_parcial")
#' lectura_estaciones("NH0098", "./escritorio/programacion/ejs_parcial")
#'
#' @export
lectura_estaciones <- function(id_estacion, ruta) {
  estacion_url <- switch(id_estacion,
                         "NH0046" = "https://raw.githubusercontent.com/rse-r/intro-programacion/main/datos/NH0046.csv",
                         "NH0098" = "https://raw.githubusercontent.com/rse-r/intro-programacion/main/datos/NH0098.csv",
                         "NH0437" = "https://raw.githubusercontent.com/rse-r/intro-programacion/main/datos/NH0437.csv",
                         "NH0910" = "https://raw.githubusercontent.com/rse-r/intro-programacion/main/datos/NH0910.csv",
                         "NH0472" = "https://raw.githubusercontent.com/rse-r/intro-programacion/main/datos/NH0472.csv",
                         stop("ID de estación no encontrado"))

  if (file.exists(ruta)) {
    id_estacion <- readr::read_csv(ruta)
    cli::cli_inform("El archivo ya existía, se leyó el archivo.")
  }

  else {
    download.file(estacion_url, ruta)
    id_estacion <- readr::read_csv(ruta)
    cli::cli_inform("El archivo no existía, por lo cual se descargó y luego se leyó.")
  }
  return(id_estacion)
}
