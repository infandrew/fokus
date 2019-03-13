require("vegan")

#mod <- rda(fok20, scale=TRUE)
#plot(mod, scaling = 3)

data(dune, dune.env)
mod <- rda(dune, scale=TRUE)

with(dune.env, levels(Use))
scl <- 3

colvec <- c("red2", "green4", "mediumblue")


plot(mod, type="n", scaling = scl)

with(dune.env, points(mod, display = "sites", col = colvec[Use],
                      scaling = scl, pch = 21, bg = colvec[Use]))

text(mod, display = "species", scaling = scl, cex = 0.8, col = "darkcyan")

with(dune.env, legend("topright", legend = levels(Use), bty = "n",
                      col = colvec, pch = 21, pt.bg = colvec))
