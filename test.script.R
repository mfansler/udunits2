library(udunits2)
x <- seq(10)
ud.convert(x, "miles", "km")
x <- c(-40, 0, 100)
ud.convert(x, "celsius", "degree_fahrenheit")
err <- try(ud.convert(100, "miles", "grams"))
err <- try(ud.convert(NA, "not", "parseable"))

ud.is.parseable("K")
ud.is.parseable("  K  ")
ud.is.parseable("miles")
ud.is.parseable("Not parseable")

ud.are.convertible("Bad", "Args")
ud.are.convertible("celsius", "grams")
ud.are.convertible("miles", "km")

units.to.check <- c("celsius", "kg", "hr", "K", "degrees", "m", "ohm")

for (enc in c("utf8", "ascii")) {
  print(paste("Using encoding type", enc))
  ud.set.encoding(enc)
  for (u in units.to.check) {
    print(ud.get.name(u))
    print(ud.get.symbol(u))
  }
}
try(ud.set.encoding('invalid'))

valid.enc.strings <- c('utf8', 'ascii', 'iso-8859-1', 'latin1')
lapply(valid.enc.strings, ud.set.encoding)
err <- try(ud.set.encoding("This will fail"))

