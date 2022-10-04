# You will need to first install the ggcats package directly from Github.
# remotes::install_github("R-CoderDotCom/ggcats@main")

# Load [ackages.
library(ggcats)
library(ggplot2)

# Create data.
grid <- expand.grid(1:5, 3:1)

df <- data.frame(x = grid[, 1],
                 y = grid[, 2],
                 image = c("nyancat", "bongo", "colonel",
                           "grumpy", "hipster",
                           "lil_bub", "maru", "mouth",
                           "pop", "pop_close", 
                           "pusheen", "pusheen_pc", "toast",
                           "venus", "shironeko"))

# Make some cats.
ggplot(df) +
  geom_cat(aes(x, y, cat = image), size = 5) +
  xlim(c(0.25, 5.5)) + 
  ylim(c(0.25, 3.5))
