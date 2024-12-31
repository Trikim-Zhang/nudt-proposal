del *.aux *.lo? *.toc *.ind *.inx *.gls *.glo *.idx *.ilg *.out *.bak *.bbl *.brf *.blg *.dvi data\*.aux
xelatex main
biber main
xelatex main
xelatex main
