test_that("grafico_temperatura_mensual produce un gráfico", {
  df_prueba <- data.frame(
    fecha = as.Date(c("2024-01-15", "2024-02-15", "2024-03-15")),
    id = c("NH0046", "NH0046", "NH0046"),
    temperatura_abrigo_150cm = c(10, 15.9, 11.03))

  expect_s3_class(grafico_temperatura_mensual(df_prueba), "ggplot")

  expect_s3_class(grafico_temperatura_mensual(df_prueba, color = "blue"), "ggplot")

  expect_s3_class(grafico_temperatura_mensual(df_prueba, titulo = "Prueba de Título"), "ggplot")
})
