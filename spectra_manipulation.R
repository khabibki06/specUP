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