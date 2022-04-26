pdf: clean
	mkdir ./aux
	latexmk -xelatex -output-directory ./aux ./src/resume.tex \
		||   xelatex -output-directory ./aux ./src/resume.tex
	mv ./aux/resume.pdf ./Imbleau.pdf

clean:
	rm -rf ./aux
	rm -f ./Imbleau.pdf