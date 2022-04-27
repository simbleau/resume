resume: clean
	mkdir ./aux
	latexmk -xelatex -shell-escape -output-directory ./aux ./resume.tex \
		||   xelatex --shell-escape -output-directory ./aux ./resume.tex
	mv ./aux/resume.pdf ./resume.pdf

cv:
	echo "TODO"

clean:
	rm -rf ./aux
	rm -f ./resume.pdf