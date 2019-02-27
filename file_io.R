#define S4 class called spectraUP
setClass("spectraUP", slots=list(spectra = "data.frame", wavenumbers.label = "character", intensity.label = "character"))

#function to read multi column csv file
import.csv.long <- function(filename, wavenumbers.label = "wavenumbers", intensity.label = "intensity" ,sep = ",", dec = ".", header = TRUE) {
  spectra_data <- read.csv(filename, header = header, sep = sep, dec = dec)
  new("spectraUP", spectra = spectra_data, wavenumbers.label = wavenumbers.label, intensity.label = intensity.label)
}
