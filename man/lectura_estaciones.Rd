% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lectura_estaciones.R
\name{lectura_estaciones}
\alias{lectura_estaciones}
\title{Lectura de archivos}
\usage{
lectura_estaciones(id_estacion, ruta)
}
\arguments{
\item{id_estacion}{conjunto de números y letras que identifica la estación}

\item{ruta}{la ruta donde se encuentra el archivo}
}
\value{
variable que contiene el archivo disponible para su análisis
}
\description{
La función \code{lectura_estaciones()} toma como parametro el id de la estación a estudiar y la ruta del archivo,
si el archivo ya estaba descargado, lo disponibiliza para su posterior analisis, y de lo contrario,
lo descarga y luego lo diaponibiliza
}
\examples{
lectura_estaciones("NH0437", paste0(tempdir(),"/NH0437"))
lectura_estaciones("NH0098", paste0(tempdir(),"/NH0098"))

}
