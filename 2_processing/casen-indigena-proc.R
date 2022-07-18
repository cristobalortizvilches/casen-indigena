
# load dataset ------------------------------------------------------------

remove(list = ls())

library(haven)
library(tidyverse)
library(sjmisc)
library(sjlabelled)
library(casen)


#descargar_casen_mds(anios = 2017, carpeta = "1_input")

casen17 <- read_dta("1_input/Casen 2017.dta")

casen <- casen17 %>% 
  select(id_vivienda, region, provincia, comuna, sexo, edad, zona, #caract sociodemográficas
         e6a, e8, o9a, o12, o14, o16, y1, 
         pobreza, pobreza_multi_4d, pobreza_multi_5d,
         r1b, r3, r4, r5, r9p, r12a, r12b, r13a, r13b,
         expr, expc, #factores de expansión región y comuna
         varunit, varstrat) #conglomerados de varianza y estratos de varianza

save(casen, file = "1_input/procesada/casen.RData")
