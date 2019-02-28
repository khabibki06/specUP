source("file_io.R")

##function to call wavenumber as vector
wavenumbers <- function(spectraUP){
  spectraUP@wavenumbers
}
##function to call sample names
sample_names <- function(spectraUP){
  as.vector(colnames(spectraUP@spectra))
}

##function to call spectra
spc <- function(spectraUP, no.spectra = "all"){
  if (no.spectra == "all"){
    no.spectra <- seq(start = 1, to = length(sample_names(spectraUP)))
  }
  spectraUP@spectra[no.spectra]
}

##function change wavenumber and intensity label
change_label <- function(spectraUP, new_wave_label = NULL, new_intensity_label = NULL){
  if (is.null(new_wave_label) == FALSE) {spectraUP@wavenumbers.label <- new_wave_label}
  if (is.null(new_intensity_label) == FALSE) {spectraUP@intensity.label <- new_intensity_label}
}

