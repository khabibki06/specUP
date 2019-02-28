#define S4 class called spectraUP
setClass("spectraUP", slots=list(wavenumbers = "vector",spectra = "data.frame", wavenumbers.label = "character", intensity.label = "character"))

#function to read multi column csv file
import.csv.long <- function(filename, wavenumbers.label = "wavenumbers", intensity.label = "intensity" ,sep = ",", dec = ".", header = TRUE, sample_names = "") {
  spectra_data <- read.csv(filename, header = header, sep = sep, dec = dec)
  wavenumbers <- spectra_data[[1]]
  spectra_data[1] <- NULL
  if (header != TRUE){
    names(spectra_data) = sample_names
  }
  new("spectraUP", wavenumbers = wavenumbers, spectra = spectra_data, wavenumbers.label = wavenumbers.label, intensity.label = intensity.label)
}