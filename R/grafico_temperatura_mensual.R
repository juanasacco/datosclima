
grafico_temperatura_mensual<- function(dataframe, color = colors(distinct = TRUE), título="Temperatura" ) {
  dataframe |>
    dplyr::mutate(fecha = as.Date(fecha)) |>
    dplyr::mutate(anio = year(fecha), mes = month(fecha)) |>
    dplyr::group_by(id, mes) |>
    dplyr::summarise(temperatura_abrigo = mean(temperatura_abrigo_150cm, na.rm = TRUE))

  return(ggplot2::ggplot(aes(mes, temperatura_abrigo, color = color)) +
           geom_point() )

}
