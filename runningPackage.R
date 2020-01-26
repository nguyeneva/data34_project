library(devtools)
devtools::install_github("nguyeneva/data534_project/pokeWrapper")
library(pokeWrapper)

pokeframe<-pokeframe

poke.filter(c('dragonite','snorlax'))

habitatSummary <- summary('habitat')
typeSummary <- summary('type')



