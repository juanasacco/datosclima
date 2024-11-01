test_that("lectura_estaciones descarga el archivo correctamente", {

  expect_s3_class(lectura_estaciones("NH0046", "~/prueba_paquete"), "data.frame")

})

