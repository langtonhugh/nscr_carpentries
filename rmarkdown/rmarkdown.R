# Use this script to render the rmarkdown files and save them in
# the worksheets folder.

# Load libraries.
library(rmarkdown)

# Render and save in the worksheets folder.
render(input       = "rmarkdown/slides.Rmd", 
       output_dir  = "worksheets",
       output_file = "slides.html")

render(input       = "rmarkdown/day1_worksheet.Rmd",
       output_dir  = "worksheets",
       output_file = "day1_worksheet.html")




