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
    dplyr::summarise( resumen_temp = list(summary(temperatura_abrigo_150cm))
    )

  return(resumen)
}
