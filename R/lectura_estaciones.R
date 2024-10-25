
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
