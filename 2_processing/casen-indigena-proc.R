
# load dataset ------------------------------------------------------------

library(haven)
library(tidyverse)
library(sjmisc)
library(sjlabelled)

casen17 <- read_dta("1_input/original/Casen_2017.dta")

casen <- casen17 %>% 
  select(id_vivienda, region, provincia, comuna, sexo, edad, zona,
         e6a, e8, o9a, o12, o14, o16, y1, 
         pobreza, pobreza_multi_4d, pobreza_multi_5d,
         r1b, r3, r4, r5, r9p, r12a, r12b, r13a, r13b)

save(casen, file = "1_input/procesada/casen.RData")
