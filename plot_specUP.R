plot_specUP <- function(spectraUP, type = "l", xlab = spectraUP@wavenumbers.label, ylab = spectraUP@intensity.label, ylim = c(min(spectraUP@spectra), max(spectraUP@spectra)), ...){
  ##sample names 
  list_sample <- sample_names(spectraUP)
  ##amount of sample
  plot(x = wavenumbers(spectraUP), y = spc(spectraUP)[[1]], type = type, xlab = xlab, ylab = ylab, ...)
  ##create second third ... plot
  if (length(list_sample) > 1) {
    color <- rainbow(length(list_sample)-1)
    for (i in seq(2, length(list_sample))){
      lines(x = wavenumbers(spectraUP), y = spc(spectraUP)[[i]], type = type, xlab = xlab, ylab = ylab, col = color[1], ...)
      }
  }
}