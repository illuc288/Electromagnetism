# $< è la prima dependancy, 
# $@ è il nome del target

NAME=main
all_no_tex=$(NAME).toc $(NAME).log $(NAME).aux $(NAME).pdf

$(NAME).pdf: $(NAME).tex
	pdflatex $<

clean: 
	rm -f $(all_no_tex)