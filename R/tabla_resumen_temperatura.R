
tabla_resumen_temperatura <- function(data) {
  resumen <- data |>
    group_by(id) |>
    summarise( resumen_temp = list(summary(temperatura_abrigo_150cm))
    )

  return(resumen)
}
