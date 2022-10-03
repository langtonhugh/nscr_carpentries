# Use this script to render the rmarkdown files and save them in
# the worksheets folder.

# Render and save in the worksheets folder.
rmarkdown::render(input       = "rmarkdown/slides.Rmd", 
                  output_dir  = "worksheets",
                  output_file = "slides.html")

rmarkdown::render(input       = "rmarkdown/day1_worksheet.Rmd",
                  output_dir  = "worksheets",
                  output_file = "day1_worksheet.html")

rmarkdown::render(input       = "rmarkdown/day2_morning_worksheet.Rmd",
                  output_dir  = "worksheets",
                  output_file = "day2_morning_worksheet.html")

rmarkdown::render(input       = "rmarkdown/day2_afternoon_worksheet.Rmd",
                  output_dir  = "worksheets",
                  output_file = "day2_afternoon_worksheet.html")