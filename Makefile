all: cv coverletter

cv: clean
	mkdir -p ./aux
	latexmk -xelatex -shell-escape -output-directory ./aux ./cv/cv-en.tex \
		|| xelatex --shell-escape -output-directory ./aux ./cv/cv-en.tex
	mv ./aux/cv-en.pdf ./cv-en.pdf
	latexmk -xelatex -shell-escape -output-directory ./aux ./cv/cv-da.tex \
		|| xelatex --shell-escape -output-directory ./aux ./cv/cv-da.tex
	mv ./aux/cv-da.pdf ./cv-da.pdf

coverletter: clean
	mkdir -p ./aux
	latexmk -xelatex -shell-escape -output-directory ./aux ./coverletter/coverletter-en.tex \
		|| xelatex --shell-escape -output-directory ./aux ./coverletter/coverletter-en.tex
	mv ./aux/coverletter-en.pdf ./coverletter-en.pdf
	latexmk -xelatex -shell-escape -output-directory ./aux ./coverletter/coverletter-da.tex \
		|| xelatex --shell-escape -output-directory ./aux ./coverletter/coverletter-da.tex
	mv ./aux/coverletter-da.pdf ./coverletter-da.pdf

clean:
	rm -rf ./aux
	rm -f ./cv-en.pdf
	rm -f ./cv-da.pdf
	rm -f ./coverletter-en.pdf
	rm -f ./coverletter-da.pdf