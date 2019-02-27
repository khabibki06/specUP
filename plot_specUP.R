plot_specUP <- function(spectraUP, type = "l", xlab = spectraUP@wavenumbers.label, ylab = spectraUP@intensity.label, ...){
  plot(x = wavenumbers(spectraUP), y = spc(spectraUP)[[1]], type = type, xlab = xlab, ylab = ylab, ...)
}