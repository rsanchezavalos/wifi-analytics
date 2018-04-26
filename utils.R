########################################
## Instalaci  n y preparaci  n de Ambiente
########################################

# Corre la siguiente funci  n para instalar los paquetes usados en este repositorio
instalar <- function(paquete) {
  if (!require(paquete,character.only = TRUE, quietly = TRUE, warn.conflicts = FALSE)) {
    install.packages(as.character(paquete), repos = "http://cran.us.r-project.org")
    library(paquete, character.only = TRUE, quietly = TRUE, warn.conflicts = FALSE)
  }
}

paquetes <- c('magrittr', 'dplyr', 'tidyr', 'readr',
              'ggplot2', 'stringr','readxl', 'aws.s3', 'corrplot',
              'reshape2', 'lubridate', 'Hmisc', 'gridExtra', #'mxmaps', 'mapproj',
              'BBmisc', 'ggthemes', 'RcppRoll', 'qualvar', 'gridExtra', 'grid', 'ggraph',
              'tidygraph')

lapply(paquetes, instalar)
