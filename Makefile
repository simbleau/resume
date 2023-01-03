all: resume cv coverletter

resume: clean
	mkdir -p ./aux
	latexmk -xelatex -shell-escape -output-directory ./aux ./resume.tex \
		|| xelatex --shell-escape -output-directory ./aux ./resume.tex
	mv ./aux/resume.pdf ./resume.pdf

cv: clean
	mkdir -p ./aux
	latexmk -xelatex -shell-escape -output-directory ./aux ./cv.tex \
		|| xelatex --shell-escape -output-directory ./aux ./cv.tex
	mv ./aux/cv.pdf ./cv.pdf

coverletter: clean
	mkdir -p ./aux
	latexmk -xelatex -shell-escape -output-directory ./aux ./coverletter.tex \
		|| xelatex --shell-escape -output-directory ./aux ./coverletter.tex
	mv ./aux/coverletter.pdf ./coverletter.pdf

clean:
	rm -rf ./aux
	rm -f ./*.pdf