
<!-- README.md is generated from README.Rmd. Please edit that file -->

# datosclima

<!-- badges: start -->

[![R-CMD-check](https://github.com/juanasacco/datosclima/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/juanasacco/datosclima/actions/workflows/R-CMD-check.yaml)
[![Codecov test
coverage](https://codecov.io/gh/juanasacco/datosclima/graph/badge.svg)](https://app.codecov.io/gh/juanasacco/datosclima)
[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
<!-- badges: end -->

El objetivo de datosclima es aprender a desarrollar paquetes con RStudio

## Instalacion

Podes instalar la version de desarrollo de datosclima desde
[GitHub](https://github.com/) con:

``` r
# install.packages("pak")
pak::pak("juanasacco/datosclima")
```

## Ejemplo

Aqui mostramos ejemplos basicos de como resolver problemas relacionados
a nuestras funciones:

- Con la funcion `lectura_estaciones()`:

``` r
library(datosclima)

NH0437 <- suppressMessages(lectura_estaciones("NH0437", "~/prueba_paquete"))
```

- Con la funcion `grafico_temperatura_mensual()`:

``` r
grafico_temperatura_mensual(NH0437,color = "magenta")
```

<img src="man/figures/README-unnamed-chunk-3-1.png" width="100%" />

- Con la funcion `tabla_resumen_temperatura()`:

``` r

suppressMessages(tabla_resumen_temperatura(NH0437))
#> # A tibble: 7 × 2
#>   id     resumen_temp
#>   <chr>  <table[1d]> 
#> 1 NH0046  -0.25000   
#> 2 NH0046  12.75000   
#> 3 NH0046  17.65000   
#> 4 NH0046  17.28705   
#> 5 NH0046  22.00000   
#> 6 NH0046  34.60000   
#> 7 NH0046 259.00000
```
