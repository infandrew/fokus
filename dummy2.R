require("vegan")

data(dune)
data(dune.env)
#mod <- rda(dune ~ Management, data = dune.env)
#plot(mod)

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


#var.sc <- scores(mod, choices=1:2, scaling=3, display="sp")
#arrows(0,0, var.sc[,1], var.sc[,2], length=0, lty=1, col="red")
