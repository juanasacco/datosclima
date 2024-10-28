#' Gráfico del promedio mensual de la temperatura
#'
#' La función `grafico_temperatura_mensual()` toma como argumento un dataframe,
#' calcula el promedio de la temperatura de cada mes y lo grafica
#'
#' @param dataframe nombre del dataframe a utilizar
#' @param color (opcional) color que desea utilizar en el gráfico, expresado en
#' rgb, hsvy, hcl, o el nombre del color en ingles
#' @param título (opcional) el nombre asignado para el gráfico escrito entre comillas
#'
#' @return gráfico de puntos indicando el promedio de la temperatura a lo largo del año
#'
#' @examples
#' grafico_temperatura_mensual(NH0910,color = "magenta", título = "Temperatura promedio mensual")
#' grafico_temperatura_mensual(NH0098, título = "Temperatura de todos los meses")
#' grafico_temperatura_mensual(NH0046,color = "blue")
#' grafico_temperatura_mensual(NH0472)
#'
#' @export
grafico_temperatura_mensual<- function(dataframe, color = colors(distinct = TRUE), título="Temperatura" )
  {
  dataframe |>
    dplyr::mutate(fecha = as.Date(fecha)) |>
    dplyr::mutate(anio = year(fecha), mes = month(fecha)) |>
    dplyr::group_by(id, mes) |>
    dplyr::summarise(temperatura_abrigo = mean(temperatura_abrigo_150cm, na.rm = TRUE))

  return(ggplot2::ggplot(aes(mes, temperatura_abrigo, color = color)) +
           geom_point() )

}


