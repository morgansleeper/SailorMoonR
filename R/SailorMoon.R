### inthenameofthemoon -> MoonPaletteInvocation ?!

#' List of all palette names and their colors
MoonPalettes <- list(

  #Moon
  MoonPrismPower = c("#FF0083", "#0C1EB8", "#00A294","#FFBC4D"),
  MoonTiaraAction = c("#009F85","#F19EC5","#FDF298","#EC8300","#F2BFC9"),
  MoonHealingEscalation = c("#B175AC","#9697EA","#DB92F4","#FDFFDC"),
  MoonPrincessHalation = c("#FDDBFF","#FF84FC","#E637F9","#67A8E4","#196CA4","#02D43F","#FAFF00"),

  #Mercury
  ShabonSpray = c("#0059DC","#00738E", "#00B06A", "#48C900","#BF9DCD"),
  ShineAquaIllusion = c("#004A7B","#00719C","#6F9FAC","#819EC0", "#916EA9","#D6C5D8","#FFDCE2"),

  #Mars
  AkuryoTaisan = c("#C52200", "#FF8593", "#FFD6A7", "#BF56CA", "#271F14"),
  FireSoul = c("#FF9500","#FF0000","#54002E","#320000"),

  #Jupiter
  SparklingWidePressure = c("#48C95E","#BCFBFF","#89241B","#FF6AEA","#37816F","#122E62"),
  JupiterOakEvolution = c("#76FFFF","#00FEA6","#009100","#004B20", "#021908"),

  #Venus
  VenusLoveMeChain = c("#FE0000","#7800B8","#FF0094","#FF5B00","#FDFF00"),
  CrescentBeam = c("#862699","#00B5B4","#00A6E2","#D7FEFF"),

  #Scenery
  MinatoDaylight = c("#56C66B","#009485","#DD9EBF","#1CCFC6", "#F1DFD9"),
  MinatoSunset = c("#FFDCC7","#FF859F","#F779B4","#AF74BD","#A62E92","#7B3193"),
  MinatoMoonlight = c("#0B426A","#007E89","#519F77","#97E6D6","#FEF6EB","#FFE3F8","#FFD7E5","#FF84A8","#B43797"),
  TokyoTower = c("#FF69D3","#F2B8DA","#8AE0D8","#DCD5DC","#D90E7A")

)


#' A Sailor Moon palette generator
#'
#' Generates color palettes drawn from the (1992) Sailor Moon anime.
#'
#' @param name Name of the Sailor Moon color palette you want to use. Use \code{MoonPaletteEnumeration} to see available options.
#' @param prism Use \code{prism = n} to interpolate a palette of n number of colors from the chosen palette. Useful if you want to use more color values than the palette provides. By default \code{prism} is set to 0 and will simply return the original palette.
#' @return A vector of colors in hexadecimal notation.
#' @keywords colors
#' @examples
#' inthenameofthemoon("MoonPrismPower")
#' inthenameofthemoon("MoonHealingEscalation", prism=16) #Returns the palette with 16 colors
#' @export
inthenameofthemoon <- function(name, prism=0){

  #Check for chosen palette in MoonPalettes list
  chosen.palette <- MoonPalettes[[name]]
  n <- prism

  if (is.null(chosen.palette))
    stop("Palette not found. Use 'MoonPaletteEnumeration' to see available options.")

  #If prism is specified (i.e. prism!=0), then interpolate a palette of that many colors
  if(prism!=0){

    #Interpolate n number of colors between the palette colors
    prismpalette <- grDevices::colorRampPalette(MoonPalettes[[name]])(n)

    #Return the hex values
    return(prismpalette)

  }

  #If prism isn't specified (i.e. prism==0), then just return the hex values of the chosen palette
  else{

    return(MoonPalettes[[name]])

  }

}



#' List all Sailor Moon palettes
#'
#' Gives a list of all Sailor Moon palettes available to use with \code{inthenameofthemoon()}.
#'
#' @export
MoonPaletteEnumeration <- names(MoonPalettes)



#' Show a sample Sailor Moon palette
#'
#' Generates a swatch sample of an available Sailor Moon color palette.
#'
#' @param name Name of the Sailor Moon color palette you want to see a sample of. Use \code{MoonPaletteEnumeration} to see available options.
#' @param prism Use \code{prism = n} to interpolate a palette of n number of colors from the chosen palette. Useful if you want to use more color values than the palette provides. By default \code{prism} is set to 0 and will simply return the original palette.
#' @keywords colors
#' @examples
#' MoonPaletteIllumination("MoonPrincessHalation")
#' MoonPaletteIllumination("MoonTiaraAction", prism=32)
#' @export
MoonPaletteIllumination <- function(name, prism=0){

  #Check for chosen palette in MoonPalettes list
  chosen.palette <- MoonPalettes[[name]]
  if (is.null(chosen.palette))
    stop("Palette not found. Use 'MoonPaletteEnumeration' to see available options.")

  #Add spaces between chosen palette name for sample display
  display.name <- gsub("([[:lower:]])([[:upper:]])", "\\1 \\2", name)

  if(prism!=0){

  #Set number of colors to prism value
  n <- prism

  #Interpolate n number of colors between the palette colors
  prismpalette <- grDevices::colorRampPalette(MoonPalettes[[name]])(n)

  #Draw sample palette swatch
  par(mar = c(2, 1, 1, 1))
  image(1:n, 1, as.matrix(1:n), col=(prismpalette), axes=FALSE, xlab="", ylab="")
  title(sub=paste0("\"",display.name,"!\""), family = "sans", line=0.5, font.sub=4, ps=5, cex.sub=1.2)

  }

  else{

  #Set number of colors to palette default
  n <- length(MoonPalettes[[name]])

  #Draw sample palette swatch
  par(mar = c(2, 1, 1, 1))
  image(1:n, 1, as.matrix(1:n), col=(MoonPalettes[[name]]), axes=FALSE, xlab="", ylab="")
  title(sub=paste0("\"",display.name,"!\""), family = "sans", line=0.5, font.sub=4, ps=5, cex.sub=1.2)

  }

}
