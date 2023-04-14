# this script corrects the y-coordinates order in the ncdf4 forecast files
# MAKE SURE TO ONLY RUN THIS ONCE!


# Libraries ---------------------------------------------------------------

library(tidyverse)
library(here)
library(ncdf4)
library(purrr)



# Get files to loop over --------------------------------------------------

# change ncdir to location of netcdf files
ncdir <- "../../Desktop/Tredennick_files"
ncfiles <- list.files(ncdir, pattern = "*.nc", full.names = TRUE)



# Function to fix y-coordinate order --------------------------------------

fix_y <- function(filename) {
  ncobj <- ncdf4::nc_open(filename, write = TRUE)
  newlat <- rev(ncobj$dim$lat$vals)
  latdim <- ncdim_def("lat",
                      units = "meters",
                      vals = newlat,
                      longname = "latitude")
  ncvar_put(ncobj, latdim, newlat)
  nc_close(ncobj)

  return(str_c("Done with ", filename))
}



# Map the function to all files -------------------------------------------

purrr::map(.x = ncfiles, .f = fix_y)




