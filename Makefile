resume: clean
	mkdir ./aux
	latexmk -xelatex -shell-escape -output-directory ./aux ./resume.tex \
		||   xelatex --shell-escape -output-directory ./aux ./resume.tex
	mv ./aux/resume.pdf ./resume.pdf

cv: clean
	mkdir ./aux
	latexmk -xelatex -shell-escape -output-directory ./aux ./cv.tex \
		||   xelatex --shell-escape -output-directory ./aux ./cv.tex
	mv ./aux/cv.pdf ./cv.pdf

clean:
	rm -rf ./aux
	rm -f ./resume.pdf