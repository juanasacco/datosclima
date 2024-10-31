#' Gráfico del promedio mensual de la temperatura
#'
#' La función `grafico_temperatura_mensual()` toma como argumento un dataframe,
#' calcula el promedio de la temperatura de cada mes y lo grafica
#'
#' @param dataframe nombre del dataframe a utilizar
#' @param id clave unica de identificacion de la estacion agroclimatica
#' @param color (opcional) color que desea utilizar en el gráfico, expresado en
#' rgb, hsvy, hcl, o el nombre del color en ingles
#' @param título (opcional) el nombre asignado para el gráfico escrito entre comillas
#'
#' @return grafico de puntos indicando el promedio de la temperatura a lo largo del año
#'
#' @examples
#' grafico_temperatura_mensual(datos_estaciones,color = "magenta", titulo = "Temperatura promedio mensual")
#' grafico_temperatura_mensual(datos_estaciones, título = "Temperatura de todos los meses")
#' grafico_temperatura_mensual(datos_estaciones,color = "blue")
#' grafico_temperatura_mensual(datos_estaciones)
#'
#' @export
grafico_temperatura_mensual <- function(dataframe, color = "magenta", titulo = "Temperatura") {
  df_resumen <- dataframe |>
    dplyr::mutate(fecha = as.Date(fecha)) |>
    dplyr::mutate(anio = lubridate::year(fecha), mes = lubridate::month(fecha)) |>
    dplyr::group_by(id, mes) |>
    dplyr::summarise(temperatura_abrigo = mean(temperatura_abrigo_150cm, na.rm = TRUE), .groups = "drop")
  df_resumen <- as.data.frame(df_resumen)

  return(
    ggplot2::ggplot(df_resumen, ggplot2::aes(x = mes, y = temperatura_abrigo)) +
      ggplot2::geom_line(color = color) +
      ggplot2::labs(title = titulo, x = "Mes", y = "Temperatura Promedio")
  )
}







