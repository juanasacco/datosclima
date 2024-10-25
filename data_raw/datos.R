
estacion_NH0472_link <- "https://raw.githubusercontent.com/rse-r/intro-programacion/main/datos/NH0472.csv"
estacion_NH0910_link <- "https://raw.githubusercontent.com/rse-r/intro-programacion/main/datos/NH0910.csv"
estacion_NH0046_link <-"https://raw.githubusercontent.com/rse-r/intro-programacion/main/datos/NH0046.csv"
estacion_NH0098_link <- "https://raw.githubusercontent.com/rse-r/intro-programacion/main/datos/NH0098.csv"
estacion_NH0437_link <- "https://raw.githubusercontent.com/rse-r/intro-programacion/main/datos/NH0437.csv"
metadatos_link <- "https://raw.githubusercontent.com/rse-r/intro-programacion/main/datos/metadatos_completos.csv"

archivo_metadatos <- "data_raw/metadatos.csv"
archivo_NH0472 <- "data_raw/NH0472.csv"
archivo_NH0910 <- "data_raw/NH0910.csv"
archivo_NH0046 <- "data_raw/NH0046.csv"
archivo_NH0098 <- "data_raw/NH0098.csv"
archivo_NH0437 <- "data_raw/NH0437.csv"

download.file(metadatos_link,archivo_metadatos)
download.file(estacion_NH0472_link,archivo_NH0472)
download.file(estacion_NH0910_link,archivo_NH0910)
download.file(estacion_NH0046_link,archivo_NH0046)
download.file(estacion_NH0098_link,archivo_NH0098)
download.file(estacion_NH0437_link,archivo_NH0437)

metadatos <- readr::read_csv("data_raw/metadatos.csv")
NH0472 <- readr::read_csv("data_raw/NH0472.csv")
NH0910 <- readr::read_csv("data_raw/NH0910.csv")
NH0046 <- readr::read_csv("data_raw/NH0046.csv")
NH0098 <- readr::read_csv("data_raw/NH0098.csv")
NH0437 <- readr::read_csv("data_raw/NH0437.csv")

datos_estaciones <- rbind(NH0472, NH0910, NH0046,NH0098,NH0437)


