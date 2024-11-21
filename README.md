
<!-- README.md is generated from README.Rmd. Please edit that file -->

# Datosclima

<!-- badges: start -->

[![R-CMD-check](https://github.com/juanasacco/datosclima/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/juanasacco/datosclima/actions/workflows/R-CMD-check.yaml)
[![Codecov test
coverage](https://codecov.io/gh/juanasacco/datosclima/graph/badge.svg)](https://app.codecov.io/gh/juanasacco/datosclima)
[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
<!-- badges: end -->

El objetivo de datosclima es aprender a desarrollar paquetes con RStudio

## Instalación

Podes instalar la version de desarrollo de datosclima desde
[GitHub](https://github.com/) con:

``` r
# install.packages("pak")
pak::pak("juanasacco/datosclima")
```

## Ejemplos

Aqui mostramos ejemplos basicos de como resolver problemas relacionados
a nuestras funciones:

- Con la funcion `lectura_estaciones()`:

``` r
library(datosclima)

NH0437 <-lectura_estaciones("NH0437", paste0(tempdir(),"/NH0437"))
```

- Con la funcion `grafico_temperatura_mensual()`:

``` r
grafico_temperatura_mensual(NH0437,color = "magenta")
```

<img src="man/figures/README-unnamed-chunk-3-1.png" width="100%" />

- Con la funcion `tabla_resumen_temperatura()`:

``` r

tabla_resumen_temperatura(NH0437)
#> # A tibble: 7 × 2
#>   id     resumen_temp
#>   <chr>  <table[1d]> 
#> 1 NH0437   2.10000   
#> 2 NH0437  16.00000   
#> 3 NH0437  21.00000   
#> 4 NH0437  20.23105   
#> 5 NH0437  24.70000   
#> 6 NH0437  36.30000   
#> 7 NH0437 191.00000
```
