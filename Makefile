pdf: clean
	mkdir ./aux
	latexmk -xelatex -output-directory ./aux ../resume.tex \
		||   xelatex -output-directory ./aux ../resume.tex
	mv ./aux/resume.pdf ./Imbleau.pdf

clean:
	rm -rf ./aux
	rm -f ./Imbleau.pdf