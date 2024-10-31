test_that("tabla_resumen_temperatura crea un resumen", {
  df_prueba <- data.frame(
    id = rep("NH0046", 5),
    temperatura_abrigo_150cm = c(10.08, 15, 20.11, 25, 30)
  )

  expect_s3_class(tabla_resumen_temperatura(df_prueba), "data.frame")

  expect_true(all(c("id", "resumen_temp") %in% names(tabla_resumen_temperatura(df_prueba))))

  expect_equal(nrow(tabla_resumen_temperatura(df_prueba)), 6)
})



