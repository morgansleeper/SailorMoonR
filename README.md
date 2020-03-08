SailorMoonR
================

![](skyline.jpg)

Transform your R plots and graphics with the magical colors of Sailor
Moon\! 🌙✨🌸

## Installation

``` r
devtools::install_github("morgansleeper/SailorMoonR")
```

![](luna.gif)

## Using SailorMoonR

``` r
#Load SailorMoonR
library(SailorMoonR)
```

**Functions:**

  - `MoonPaletteEnumeration`: list all available palettes
  - `MoonPaletteIllumination()`: generate a sample swatch for a palette
  - `inthenameofthemoon()`: use a palette (by having it return its color
    values)

<!-- end list -->

``` r
# See all available palettes
MoonPaletteEnumeration
>  [1] "MoonPrismPower"        "MoonTiaraAction"       "MoonHealingEscalation"
>  [4] "MoonPrincessHalation"  "ShabonSpray"           "ShineAquaIllusion"    
>  [7] "AkuryoTaisan"          "FireSoul"              "SparklingWidePressure"
> [10] "JupiterOakEvolution"   "VenusLoveMeChain"      "CrescentBeam"

# See a sample swatch for a palette
MoonPaletteIllumination("MoonPrismPower")
```

![](figures/usage2-1.png)<!-- -->

``` r
# Use a palette
inthenameofthemoon("MoonPrismPower")
> [1] "#FF0083" "#0C1EB8" "#00A294" "#FFBC4D"
```

## Palettes

SailorMoonR currently has 12 palettes, ranging from 4-7 colors each:

### Sailor Moon 🌙

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

### Sailor Mercury ☿

``` r
inthenameofthemoon("ShabonSpray")
```

![](figures/palettes-5.png)

``` r
inthenameofthemoon("ShineAquaIllusion")
```

![](figures/palettes-6.png)

### Sailor Mars ♂️

``` r
inthenameofthemoon("AkuryoTaisan")
```

![](figures/palettes-7.png)

``` r
inthenameofthemoon("FireSoul")
```

![](figures/palettes-8.png)

### Sailor Jupiter ♃

``` r
inthenameofthemoon("SparklingWidePressure")
```

![](figures/palettes-9.png)

``` r
inthenameofthemoon("JupiterOakEvolution")
```

![](figures/palettes-10.png)

### Sailor Venus ♀️

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

## Acknowledgments

Project inspired by Karthik Ram’s [Wes Anderson
Palettes](https://github.com/karthik/wesanderson) package.

*Sailor Moon is © Naoko Takeuchi.*
