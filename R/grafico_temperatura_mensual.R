
grafico_temperatura_mensual<- function(dataframe, color = colors(distinct = TRUE), título="Temperatura" ) {
  dataframe |>
    mutate(fecha = as.Date(fecha)) |>
    mutate(anio = year(fecha), mes = month(fecha)) |>
    group_by(id, mes) |>
    summarise(temperatura_abrigo = mean(temperatura_abrigo_150cm, na.rm = TRUE))

  return(ggplot(aes(mes, temperatura_abrigo, color = color)) +
           geom_point() )

}
