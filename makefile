# $< è la prima dependancy, 
# $@ è il nome del target

NAME=main
all_no_tex=$(NAME).toc $(NAME).log $(NAME).aux $(NAME).pdf

$(NAME).pdf: $(NAME).tex tmp
	pdflatex $<
	xreader $@ 
	echo  > tmp # metto questo che così compila ogni volta, che a volte serve compilare più volte

clean: 
	rm -f $(all_no_tex)