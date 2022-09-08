# Use this script to render the rmarkdown files and save them in
# the worksheets folder.

# Load libraries.
library(rmarkdown)

# Render and save in the worksheets folder.

render(input       = "rmarkdown/01-welcome_slides.Rmd", 
       output_dir  = "worksheets",
       output_file = "welcome_slides.html")

render(input       = "rmarkdown/02-intro_slides.Rmd", 
       output_dir  = "worksheets",
       output_file = "intro_slides.html")

render(input       = "rmarkdown/03-morning_worksheet.Rmd", 
       output_dir  = "worksheets",
       output_file = "morning_worksheet.html")




