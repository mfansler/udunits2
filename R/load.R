.First.lib<-function(libname,pkgname){
  if (TRUE)
    library.dynam("udunits2",pkgname,libname)
  else
    stop("You don't have udunits installed.")
}
