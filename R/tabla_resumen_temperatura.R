
tabla_resumen_temperatura <- function(data) {
  resumen <- data |>
    dplyr::group_by(id) |>
    dplyr::summarise( resumen_temp = list(summary(temperatura_abrigo_150cm))
    )

  return(resumen)
}
