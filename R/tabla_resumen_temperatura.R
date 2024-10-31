#' Tabla de resumen
#'
#' La funcion `tabla_resumen_temperatura()` toma como argumento un dataframe y
#' resume los datos de la temperatura
#'
#'
#' @param data nombre del dataframe a utilizar
#'
#' @return tabla que contiene un resumen de los datos de la temperatura
#' @examples
#' tabla_resumen_temperatura("NH0910")
#' tabla_resumen_tempertura("NH0046")
#'
#'
#' @export
tabla_resumen_temperatura <- function(data) {
  resumen <- data |>
    dplyr::group_by(id) |>
    dplyr::reframe(media_temp = mean(temperatura_abrigo_150cm, na.rm = TRUE),
                   mediana_temp = median(temperatura_abrigo_150cm, na.rm = TRUE),
                   sd_temp = sd(temperatura_abrigo_150cm, na.rm = TRUE))

  return(resumen)
}

