#!/bin/bash
Rscript -e "rmarkdown::render('mid_term.Rmd')"
file="./exam_no.txt"
examno=$(cat "$file") 
pdftk mid_term.pdf cat 1-3 output $examno.pdf
mv $examno.pdf ./To_print
mv mid_term.pdf mid_term_$examno.pdf
mv *.pdf ./Mid_term_Exam
mv *.csv ./Data


