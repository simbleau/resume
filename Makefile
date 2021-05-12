pdf:	clean 
	xelatex -interaction nonstopmode ./resume.tex || true
	mv *.pdf Imbleau.pdf
	rm -f ./*log ./*.out ./*.aux

test:	clean 
	xelatex -halt-on-error ./resume.tex

lint: 
	rm -f ./*log ./*.out ./*.aux

clean:	lint 
	rm -f ./*.pdf
