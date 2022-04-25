pdf: clean
	mkdir ./aux
	xelatex -output-dir ./aux -interaction nonstopmode ./resume.tex
	mv ./aux/resume.pdf ./Imbleau.pdf

clean:
	rm -rf ./aux
	rm -f ./Imbleau.pdf