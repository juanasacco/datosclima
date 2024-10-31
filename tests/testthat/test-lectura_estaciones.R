test_that("lectura_estaciones muestra los mensajes correctos", {
  ruta <- tempfile(fileext = ".csv")

  expect_s3_class(lectura_estaciones("NH0046", "~/pruebadescarga"), "data.frame")

  expect_message(lectura_estaciones("NH0046", ruta),"El archivo no existía, por lo cual se descargó y luego se leyó.")

  expect_message(lectura_estaciones("NH0046", ruta),"El archivo ya existía, se leyó el archivo.")

  unlink(ruta)
})
