.onLoad<-function(libname,pkgname){
    library.dynam("udunits2",pkgname,libname)
    Sys.setenv(UDUNITS2_XML_PATH = file.path(libname, pkgname, "share/udunits/udunits2.xml"))
}
