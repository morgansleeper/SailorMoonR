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
  CrescentBeam = c("#862699","#00B5B4","#00A6E2","#D7FEFF")

)



#' A Sailor Moon palette generator
#'
#' Generates color palettes drawn from the (1992) Sailor Moon anime.
#'
#' @param name Name of the Sailor Moon color palette you want to use. Use \code{MoonPaletteEnumeration} to see available options.
#' @return A vector of colors in hexadecimal notation.
#' @keywords colors
#' @examples
#' inthenameofthemoon("MoonPrismPower")
#' inthenameofthemoon("MoonHealingEscalation")
#' @export
inthenameofthemoon <- function(name){

  #Check for chosen palette in MoonPalettes list
  chosen.palette <- MoonPalettes[[name]]
  if (is.null(chosen.palette))
    stop("Palette not found. Use 'MoonPaletteEnumeration' to see available options.")

  #Return the hex values of the chosen palette
  return(MoonPalettes[[name]])

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
#' @param name Name of the Sailor Moon color palette you want to see a sample of. Run \code{MoonPaletteEnumeration} to see available options.
#' @keywords colors
#' @examples
#' MoonPaletteIllumination("MoonPrincessHalation")
#' @export
MoonPaletteIllumination <- function(name){

  #Check for chosen palette in MoonPalettes list
  chosen.palette <- MoonPalettes[[name]]
  if (is.null(chosen.palette))
    stop("Palette not found. Use 'MoonPaletteEnumeration' to see available options.")

  n <- length(MoonPalettes[[name]])

  #Add spaces between chosen palette name for sample display
  display.name <- gsub("([[:lower:]])([[:upper:]])", "\\1 \\2", name)

  #Draw sample palette swatch
  par(mar = c(2, 1, 1, 1))
  image(1:n, 1, as.matrix(1:n), col=(MoonPalettes[[name]]), axes=FALSE, xlab="", ylab="")
  title(sub=paste0("\"",display.name,"!\""), family = "sans", line=0.5, font.sub=4, ps=5, cex.sub=1.2)

}


#Palettes to be added:

#Extra
  #MinatoSkyline = c()
  #TokyoTower = c()
  #GameCenterCrown = c()
