#!/bin/env Rscript

# Clear out figures directory before compiling RMarkdown
if [ -z "$(ls figures/)" ]
then echo -e "\n\n figures directory is empty, nothing to delete \n\n"
else 
	rm figures/*
fi

# Remove existing RMarkdowns before re-compiling new versions
if [ -z "$(ls output/)" ]
then echo -e "\n\n output directory is empty, nothing to delete \n\n"
else 
	rm output/*
fi

# Actually compile RMarkdowns for two parameters (bwo and zero)
Rscript -e "rmarkdown::render('code/rd_exercise_base.rmd',\
output_format = 'html_document', output_dir = 'output/',\
output_file ='rd_exercise_base_bwo',\
params=list(exercise = 'bwo'))"

Rscript -e "rmarkdown::render('code/rd_exercise_base.rmd',\
output_format = 'html_document', output_dir = 'output/',\
output_file ='rd_exercise_base_zero',\
params=list(exercise = 'zero'))"

# Rscript -e "rmarkdown::render('code/rd_exercise_stressout.rmd',\
# output_format = 'html_document', output_dir = 'output/',\
# output_file ='rd_exercise_stressout_bwo',\
# params=list(exercise = 'bwo'))"

# Rscript -e "rmarkdown::render('code/rd_exercise_stressout.rmd',\
# output_format = 'html_document', output_dir = 'output/',\
# output_file ='rd_exercise_stressout_zero',\
# params=list(exercise = 'zero'))"

# Rscript -e "rmarkdown::render('code/rd_exercise_intervals.rmd',\
# output_format = 'html_document', output_dir = 'output/',\
# output_file ='rd_exercise_intervals_bwo',\
# params=list(exercise = 'bwo'))"

# Rscript -e "rmarkdown::render('code/rd_exercise_intervals.rmd',\
# output_format = 'html_document', output_dir = 'output/',\
# output_file ='rd_exercise_intervals_zero',\
# params=list(exercise = 'zero'))"