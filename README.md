SailorMoonR
================

![](skyline.jpg) Transform your R plots and graphics with the magical
colors of Sailor Moon\!

*Project inspired by the [Wes Anderson
Palettes](https://github.com/karthik/wesanderson) package.*

## Install

``` r
devtools::install_github("morgansleeper/SailorMoonR")
```

## Using SailorMoonR

``` r
#Loading SailorMoonR
library(SailorMoonR)
```

Use `MoonPaletteEnumeration` to view all available palettes:

``` r
# See all available palettes
MoonPaletteEnumeration
>  [1] "MoonPrismPower"        "MoonTiaraAction"       "MoonHealingEscalation"
>  [4] "MoonPrincessHalation"  "ShabonSpray"           "ShineAquaIllusion"    
>  [7] "AkuryoTaisan"          "FireSoul"              "VenusLoveMeChain"     
> [10] "CrescentBeam"          "SparklingWidePressure" "JupiterOakEvolution"
```

To generate a sample swatch for a palette, use
`MoonPaletteIllumination()`:

``` r
# See a sample swatch for a palette
MoonPaletteIllumination("MoonPrismPower")
```

![](figures/usage3-1.png)<!-- --> Finally, to use a palette (by having
it return its color values), use `inthenameofthemoon()`:

``` r
# Use a palette
inthenameofthemoon("MoonPrismPower")
> [1] "#FF0083" "#0C1EB8" "#00A294" "#FFBC4D"
```

## Palettes

SailorMoonR currently has 12 palettes, ranging from 4-7 colors each:

### Sailor Moon

``` r
inthenameofthemoon("MoonPrismPower")
```

![](figures/palettes-1.png)

``` r
inthenameofthemoon("MoonTiaraAction")
```

![](figures/palettes-2.png)

``` r
inthenameofthemoon("MoonHealingEscalation")
```

![](figures/palettes-3.png)

``` r
inthenameofthemoon("MoonPrincessHalation")
```

![](figures/palettes-4.png)

### Sailor Mercury

``` r
inthenameofthemoon("ShabonSpray")
```

![](figures/palettes-5.png)

``` r
inthenameofthemoon("ShineAquaIllusion")
```

![](figures/palettes-6.png)

### Sailor Mars

``` r
inthenameofthemoon("AkuryoTaisan")
```

![](figures/palettes-7.png)

``` r
inthenameofthemoon("FireSoul")
```

![](figures/palettes-8.png)

### Sailor Jupiter

``` r
inthenameofthemoon("SparklingWidePressure")
```

![](figures/palettes-9.png)

``` r
inthenameofthemoon("JupiterOakEvolution")
```

![](figures/palettes-10.png)

### Sailor Venus

``` r
inthenameofthemoon("VenusLoveMeChain")
```

![](figures/palettes-11.png)

``` r
inthenameofthemoon("CrescentBeam")
```

![](figures/palettes-12.png)

*More palettes to come\!*

## Examples

*Coming soon\!*
