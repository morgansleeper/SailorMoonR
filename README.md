SailorMoonR
================

![](skyline.jpg) Transform your R plots and graphics with the magical
colors of Sailor Moon\! 🌙✨🌸

## Install

``` r
devtools::install_github("morgansleeper/SailorMoonR")
```

<center>

![](luna.gif)

</center>

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

<img src="figures/usage2-1.png" style="display: block; margin: auto;" />

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

<center>

![](figures/palettes-1.png)

</center>

``` r
inthenameofthemoon("MoonTiaraAction")
```

<center>

![](figures/palettes-2.png)

</center>

``` r
inthenameofthemoon("MoonHealingEscalation")
```

<center>

![](figures/palettes-3.png)

</center>

``` r
inthenameofthemoon("MoonPrincessHalation")
```

<center>

![](figures/palettes-4.png)

</center>

### Sailor Mercury

``` r
inthenameofthemoon("ShabonSpray")
```

<center>

![](figures/palettes-5.png)

</center>

``` r
inthenameofthemoon("ShineAquaIllusion")
```

<center>

![](figures/palettes-6.png)

</center>

### Sailor Mars

``` r
inthenameofthemoon("AkuryoTaisan")
```

<center>

![](figures/palettes-7.png)

</center>

``` r
inthenameofthemoon("FireSoul")
```

<center>

![](figures/palettes-8.png)

</center>

### Sailor Jupiter

``` r
inthenameofthemoon("SparklingWidePressure")
```

<center>

![](figures/palettes-9.png)

</center>

``` r
inthenameofthemoon("JupiterOakEvolution")
```

<center>

![](figures/palettes-10.png)

</center>

### Sailor Venus

``` r
inthenameofthemoon("VenusLoveMeChain")
```

<center>

![](figures/palettes-11.png)

</center>

``` r
inthenameofthemoon("CrescentBeam")
```

<center>

![](figures/palettes-12.png)

</center>

*More palettes to come\!*

## Examples

*Coming soon\!*

## Acknowledgments

Project inspired by Karthik Ram’s [Wes Anderson
Palettes](https://github.com/karthik/wesanderson) package.

*Sailor Moon is © Naoko Takeuchi.*
