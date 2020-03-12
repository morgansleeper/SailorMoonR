SailorMoonR
================

![](skyline.jpg)

Transform your R plots and graphics with the magical colors of Sailor
Moon\!
🌙✨🌸

## Installation

``` r
install.packages("devtools") #If you don't already have devtools installed

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
> [13] "MinatoDaylight"        "MinatoSunset"          "MinatoMoonlight"      
> [16] "TokyoTower"

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

### Tokyo 🌃

``` r
inthenameofthemoon("MinatoDaylight")
```

![](figures/palettes-13.png)

``` r
inthenameofthemoon("MinatoSunset")
```

![](figures/palettes-14.png)

``` r
inthenameofthemoon("MinatoMoonlight")
```

![](figures/palettes-15.png)

``` r
inthenameofthemoon("TokyoTower")
```

![](figures/palettes-16.png)

## Examples

``` r
leaflet(locs, width=800, height=430) %>%
  addProviderTiles(providers$CartoDB.Positron) %>%
  addMarkers(label=~Name, popup=~Name) %>%
  addCircles(radius=150, weight=1, color=~pal(Type), fillOpacity = .4) %>%
  addLegend("topright", pal = pal, values = ~locs$Type, title = "Location type", opacity = .4) %>%
  addMiniMap("bottomright", width=100, height=100, tiles = providers$CartoDB.Positron, toggleDisplay = TRUE)
> Assuming "Long" and "Lat" are longitude and latitude, respectively
> Assuming "Long" and "Lat" are longitude and latitude, respectively
```

<!--html_preserve-->

<div id="htmlwidget-28408c0a18bc193d84e5" class="leaflet html-widget" style="width:800px;height:430px;">

</div>

<script type="application/json" data-for="htmlwidget-28408c0a18bc193d84e5">{"x":{"options":{"crs":{"crsClass":"L.CRS.EPSG3857","code":null,"proj4def":null,"projectedBounds":null,"options":{}}},"calls":[{"method":"addProviderTiles","args":["CartoDB.Positron",null,null,{"errorTileUrl":"","noWrap":false,"detectRetina":false}]},{"method":"addMarkers","args":[[35.655775,35.654524,35.652894,35.65861,35.651252,35.656392],[139.737446,139.735494,139.731073,139.745447,139.726296,139.732962],null,null,null,{"interactive":true,"draggable":false,"keyboard":true,"title":"","alt":"","zIndexOffset":0,"opacity":1,"riseOnHover":false,"riseOffset":250},["Ichi-no-hashi Archway","Amishiro Park","Hikawa Jinja Shrine","Tokyo Tower","Arisugawa-no-Miya Memorial Park","Kurayami-zaka"],null,null,null,["Ichi-no-hashi Archway","Amishiro Park","Hikawa Jinja Shrine","Tokyo Tower","Arisugawa-no-Miya Memorial Park","Kurayami-zaka"],{"interactive":false,"permanent":false,"direction":"auto","opacity":1,"offset":[0,0],"textsize":"10px","textOnly":false,"className":"","sticky":true},null]},{"method":"addCircles","args":[[35.655775,35.654524,35.652894,35.65861,35.651252,35.656392],[139.737446,139.735494,139.731073,139.745447,139.726296,139.732962],150,null,null,{"interactive":true,"className":"","stroke":true,"color":["#FFBC4D","#00A294","#FF0083","#FFBC4D","#00A294","#0C1EB8"],"weight":1,"opacity":0.5,"fill":true,"fillColor":["#FFBC4D","#00A294","#FF0083","#FFBC4D","#00A294","#0C1EB8"],"fillOpacity":0.4},null,null,null,{"interactive":false,"permanent":false,"direction":"auto","opacity":1,"offset":[0,0],"textsize":"10px","textOnly":false,"className":"","sticky":true},null,null]},{"method":"addLegend","args":[{"colors":["#FF0083","#0C1EB8","#00A294","#FFBC4D"],"labels":["Shrine","POI","Park","Landmark"],"na_color":null,"na_label":"NA","opacity":0.4,"position":"topright","type":"factor","title":"Location type","extra":null,"layerId":null,"className":"info legend","group":null}]},{"method":"addMiniMap","args":[null,"CartoDB.Positron","bottomright",100,100,19,19,-5,false,false,false,true,false,false,{"color":"#ff7800","weight":1,"clickable":false},{"color":"#000000","weight":1,"clickable":false,"opacity":0,"fillOpacity":0},{"hideText":"Hide MiniMap","showText":"Show MiniMap"},[]]}],"limits":{"lat":[35.651252,35.65861],"lng":[139.726296,139.745447]}},"evals":[],"jsHooks":[]}</script>

<!--/html_preserve-->

## Acknowledgments

Project inspired by Karthik Ram’s [Wes Anderson
Palettes](https://github.com/karthik/wesanderson) package.

Written using and pairs nicely with sailorhg’s
[fairyfloss](https://github.com/sailorhg/fairyfloss) theme (RStudio
version [here](https://github.com/gadenbuie/rsthemes)).

*Sailor Moon © Naoko Takeuchi.*
