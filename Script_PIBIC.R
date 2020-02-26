#--- Assunto: PIBIC - Pietra
#--- Autor: Rafael Barbosa
#--- Data: 25/07/2019


setwd("F:/UFPA/Trabalhos/Pietra - PIBIC")


if(!require(data.table)) {
  install.packages("data.table", dependencies = T);
  require(data.table)
}


if(!require(tidyverse)) {
  install.packages("tidyverse", dependencies = T);
  require(tidyverse)
}


if(!require(readxl)) {
  install.packages("readxl", dependencies = T);
  require(readxl)
}


banco <- fread("Equipe_Brasil.csv")


#--- Variável 1

banco %>%
  filter(ESTADO == "PA", II.2.0.1 == 1) %>%
  count(II.20.1) %>%
  filter(II.20.1 != 998) %>%
  mutate(Freq = n/sum(n)*100) %>%
  magrittr::set_colnames(c("Variável", "Frequência",
                           "Percentual")) %>%
  xlsx::write.xlsx(x = ., file = "Tabelas_Pietra1.xlsx",
                   sheetName = "Tabela1", append = T)


#--- Variável 2

banco %>%
  filter(ESTADO == "PA", II.2.0.1 == 1) %>%
  count(II.20.2) %>%
  filter(II.20.2 != 998) %>%
  mutate(Freq = n/sum(n)*100) %>%
  magrittr::set_colnames(c("Variável", "Frequência",
                           "Percentual")) %>%
  xlsx::write.xlsx(x = ., file = "Tabelas_Pietra1.xlsx",
                   sheetName = "Tabela2", append = T)


#--- Variável 3

banco %>%
  filter(ESTADO == "PA", II.2.0.1 == 1) %>%
  count(II.20.3) %>%
  filter(II.20.3 != 998) %>%
  mutate(Freq = n/sum(n)*100) %>%
  magrittr::set_colnames(c("Variável", "Frequência",
                           "Percentual")) %>%
  xlsx::write.xlsx(x = ., file = "Tabelas_Pietra1.xlsx",
                   sheetName = "Tabela3", append = T)


#--- Variável 4

banco %>%
  filter(ESTADO == "PA", II.2.0.1 == 1) %>%
  count(II.20.4) %>%
  filter(II.20.4 != 998) %>%
  mutate(Freq = n/sum(n)*100) %>%
  magrittr::set_colnames(c("Variável", "Frequência",
                           "Percentual")) %>%
  xlsx::write.xlsx(x = ., file = "Tabelas_Pietra1.xlsx",
                   sheetName = "Tabela4", append = T)


#--- Variável 5

banco %>%
  filter(ESTADO == "PA", II.2.0.1 == 1) %>%
  count(II.20.5) %>%
  filter(II.20.5 != 998) %>%
  mutate(Freq = n/sum(n)*100) %>%
  magrittr::set_colnames(c("Variável", "Frequência",
                           "Percentual")) %>%
  xlsx::write.xlsx(x = ., file = "Tabelas_Pietra1.xlsx",
                   sheetName = "Tabela5", append = T)



#--- Variável 6

banco %>%
  filter(ESTADO == "PA", II.2.0.1 == 1) %>%
  count(II.20.6) %>%
  filter(II.20.6 != 998) %>%
  mutate(Freq = n/sum(n)*100) %>%
  magrittr::set_colnames(c("Variável", "Frequência",
                           "Percentual")) %>%
  xlsx::write.xlsx(x = ., file = "Tabelas_Pietra1.xlsx",
                   sheetName = "Tabela6", append = T)


#--- Variável 7.1

banco %>%
  filter(ESTADO == "PA", II.2.0.1 == 1) %>%
  count(II.20.7.1) %>%
  filter(II.20.7.1 != 998) %>%
  mutate(Freq = n/sum(n)*100) %>%
  magrittr::set_colnames(c("Variável", "Frequência",
                           "Percentual")) %>%
  xlsx::write.xlsx(x = ., file = "Tabelas_Pietra1.xlsx",
                   sheetName = "Tabela7.1", append = T)




#--- Variável 7.2

banco %>%
  filter(ESTADO == "PA", II.2.0.1 == 1) %>%
  count(II.20.7.2) %>%
  filter(II.20.7.2 != 998) %>%
  mutate(Freq = n/sum(n)*100) %>%
  magrittr::set_colnames(c("Variável", "Frequência",
                           "Percentual")) %>%
  xlsx::write.xlsx(x = ., file = "Tabelas_Pietra1.xlsx",
                   sheetName = "Tabela7.2", append = T)



#--- Variável 7.3

banco %>%
  filter(ESTADO == "PA", II.2.0.1 == 1) %>%
  count(II.20.7.3) %>%
  filter(II.20.7.3 != 998) %>%
  mutate(Freq = n/sum(n)*100) %>%
  magrittr::set_colnames(c("Variável", "Frequência",
                           "Percentual")) %>%
  xlsx::write.xlsx(x = ., file = "Tabelas_Pietra1.xlsx",
                   sheetName = "Tabela7.3", append = T)




#--- Variável 7.4

banco %>%
  filter(ESTADO == "PA", II.2.0.1 == 1) %>%
  count(II.20.7.4) %>%
  filter(II.20.7.4 != 998) %>%
  mutate(Freq = n/sum(n)*100) %>%
  magrittr::set_colnames(c("Variável", "Frequência",
                           "Percentual")) %>%
  xlsx::write.xlsx(x = ., file = "Tabelas_Pietra1.xlsx",
                   sheetName = "Tabela7.4", append = T)




#--- Variável 7.5

banco %>%
  filter(ESTADO == "PA", II.2.0.1 == 1) %>%
  count(II.20.7.5) %>%
  filter(II.20.7.5 != 998) %>%
  mutate(Freq = n/sum(n)*100) %>%
  magrittr::set_colnames(c("Variável", "Frequência",
                           "Percentual")) %>%
  xlsx::write.xlsx(x = ., file = "Tabelas_Pietra1.xlsx",
                   sheetName = "Tabela7.5", append = T)





banco %>%
  filter(ESTADO == "PA") %>%
  count(II.7.5) %>%
  filter(II.7.5 %in% c(1, 2, 3)) %>%
  colSums()
