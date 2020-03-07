#' List all Sailor Moon palettes
#'
#' Gives a list of all Sailor Moon palettes available to use with \code{inthenameofthemoon()}.
sailorpalettes <- list(

  #Moon
  MoonPrismPower = c("#FF0083", "#0C1EB8", "#00A294","#FFBC4D"),
  MoonTiaraAction = c("#009F85","#F19EC5","#FDF298","#EC8300","#F2BFC9"),
  MoonHealingEscalation = c("#B175AC","#9697EA","#DB92F4","#FDFFDC"),
  MoonPrincessHalation = c("#FDDBFF","#FF84FC","#E637F9","#67A8E4","#196CA4","#02D43F","#FAFF00")

)

#' A Sailor Moon palette generator
#'
#' Generates color palettes drawn from the (1992) Sailor Moon anime.
#'
#' @param name Name of the Sailor Moon color palette you want to use. Run \code{sailorpalettes} to see available options.
#' @return A vector of colors in hex notation.
#' @keywords colors
#' @examples
#' inthenameofthemoon("MoonPrismPower")
#' inthenameofthemoon("MoonHealingEscalation")
inthenameofthemoon <- function(name){

  chosen.palette <- sailorpalettes[[name]]
  if (is.null(chosen.palette))
    stop("Palette not found. Use 'sailorpalettes' to see available options.")

  return(sailorpalettes[[name]])

}

#' Show a sample Sailor Moon palette
#'
#' Generates a swatch sample of an available Sailor Moon color palette.
#'
#' @param name Name of the Sailor Moon color palette you want to see a sample of. Run \code{sailorpalettes} to see available options.
#' @keywords colors
#' @examples
#' sailorswatch("MoonPrincessHalation")
sailorswatch <- function(name){

  n <- length(sailorpalettes[[name]])

  image(1:n, 1, as.matrix(1:n), col=(sailorpalettes[[name]]), axes=FALSE, xlab=paste0("\"",(name),"!\""), ylab="")

}

#Palettes to add:

#Mercury
#MercuryPower = c(),
#ShabonSpray = c(),
#ShineAquaIllusion = c(),
#MercuryAquaRhapsody = c(),

#Venus
#VenusPower = c(),
#CrescentBeam = c(),
#VenusLoveMeChain = c(),

#Mars
#MarsPower = c(),
#AkuryoTaisan = c(),
#FireSoul = c(),

#Jupiter
#JupiterPower = c(),
#SupremeThunder = c(),
#JupiterFlowerHurricane = c(),

#Extra
#TokyoTower = c()
#GameCenterCrown = c()
#I'llPunishYou
