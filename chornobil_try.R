library(readxl)
cho_env <- read_excel("Chornobyl_metadata.xlsx", 
                      col_types = c("blank", "blank", "blank", 
                                    "blank", "numeric", "numeric", "numeric", 
                                    "numeric", "numeric", "numeric", 
                                    "numeric"))

cho_data_dummy <- read_excel("chornobyl_order_all.xlsx", range = "B1:AAA6", sheet =2)
cho_data_small <- read_excel("chornobyl_order_all.xlsx", range = "B1:FIJ6", sheet = 2)
cho_data_big <- read_excel("chornobyl_order_all.xlsx", range = "B1:CNT6", sheet = 1)

drawRDA <- function(cho_data, title) {
  cho_rda<- rda(cho_data ~. , cho_env)
  plot(cho_rda, scaling=1, main=title)
  colvec <- c("c2","c3","c4","c5","c7")
  #with(cho_env, points(cho_rda, display = "sites", scaling = 1, pch = 21))
  text(cho_rda, display = "sites", scaling = 1, cex = 0.8, col = "darkcyan")
}

# Dummy dataset
drawRDA(cho_data_dummy, "dummy")

# taxonomy_chornobil_Small dataset
drawRDA(cho_data_small, "taxonomy_chornobil_Small RDA")

# taxonomy_chornobil_Big dataset
drawRDA(cho_data_big, "taxonomy_chornobil_Big RDA")
