SailorMoonR
================

![](skyline.jpg) Description text goes here\!

## Install

``` r
devtools::install_github("morgansleeper/SailorMoonR")
```

## Using SailorMoonR

``` r
library(SailorMoonR)

# See all available palettes
MoonPaletteEnumeration
>  [1] "MoonPrismPower"        "MoonTiaraAction"       "MoonHealingEscalation"
>  [4] "MoonPrincessHalation"  "ShabonSpray"           "ShineAquaIllusion"    
>  [7] "AkuryoTaisan"          "FireSoul"              "VenusLoveMeChain"     
> [10] "CrescentBeam"          "SparklingWidePressure" "JupiterOakEvolution"

# Use a palette
inthenameofthemoon("MoonPrismPower")
> [1] "#FF0083" "#0C1EB8" "#00A294" "#FFBC4D"

# See a sample swatch of a palette
MoonPaletteIllumination("MoonPrismPower")
```

<img src="figures/usage-1.png" style="display: block; margin: auto;" />

## Palettes

``` r
inthenameofthemoon("MoonPrismPower")
```

This is an R Markdown format used for publishing markdown documents to
GitHub. When you click the **Knit** button all R code chunks are run and
a markdown file (.md) suitable for publishing to GitHub is generated.

Note that the `echo = FALSE` parameter was added to the code chunk to
prevent printing of the R code that generated the plot.
