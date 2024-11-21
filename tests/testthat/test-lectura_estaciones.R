test_that("lectura_estaciones descarga el archivo correctamente", {

  expect_s3_class(lectura_estaciones("NH0046", paste0(tempdir(),"/NH0437")), "data.frame")

})

