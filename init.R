require("vegan")
fok_fall_env <- data.frame(
  row.names = "SN",
  "SN" = c("fh3",
           "fj2",
           "fj3",
           "fj5",
           "fj7",
           "fm3"), 
  "Humidity" = c(36.5,
                 38.2,
                 47.8,
                 34.8,
                 32.5,
                 50.3), 
  "N" = c(0.59,
          0.894939,
          0.915729,
          1.043455,
          0.60,
          0.927226),
  "C" = c(12.49,
          14.22,
          15.05,
          18.45,
          8.11,
          22.41),
  "H" = c(1.915073097,
          2.176131845,
          2.359952807,
          2.793977141,
          1.331216455,
          2.973185301)
  )

fok_fall_rda<- rda(fok_fall_full ~. , fok_fall_env)
plot(fok_fall_rda, scaling=1, name="Fall RDA")
