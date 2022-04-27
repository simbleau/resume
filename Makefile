pdf: clean
	mkdir ./aux
	latexmk -xelatex -shell-escape -output-directory ./aux ./src/resume.tex \
		||   xelatex --shell-escape -output-directory ./aux ./src/resume.tex
	mv ./aux/resume.pdf ./Imbleau.pdf

clean:
	rm -rf ./aux
	rm -f ./Imbleau.pdf