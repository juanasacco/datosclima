#' Tabla de resumen
#'
#' La funcion `tabla_resumen_temperatura()` toma como argumento un dataframe y
#' resume los datos de la temperatura
#'
#'
#' @param data nombre del dataframe a utilizar
#' @param id clave unica de identificacion de la estacion agroclimatica
#'
#' @return tabla que contiene un resumen de los datos de la temperatura
#' @examples
#' tabla_resumen_temperatura(datos_estaciones, "NH0910")
#' tabla_resumen_tempertura(datos_estaciones)
#'
#'
#' @export
tabla_resumen_temperatura <- function(data) {
  resumen <- data |>
    dplyr::group_by(id) |>
    dplyr::summarise(resumen_temp = summary(temperatura_abrigo_150cm))

  return(resumen)
}

