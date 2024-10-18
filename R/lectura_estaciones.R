
lectura_estaciones <- function(id_estacion, ruta) {
  estacion_url <-

    if(file.exists(ruta)) {
      id_estacion <- readr::read_csv(ruta)
      cli::cli_inform("El archivo ya existia, se leyo el archivo")}

  else {
    download.file(estacion_url, ruta)
    id_estacion <- readr::read_csv(ruta)
    cli::cli_inform("El archivo no existia, por lo cual se descargo y luego se leyo")
  }
  return(id_estacion)
}
