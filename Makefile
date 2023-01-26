all: clean resume cv coverletter

resume:
	rm -rf ./aux
	rm -f ./resume.pdf
	rm -f embed-resume.html
	rm -f resume.html
	mkdir -p ./aux
	latexmk -xelatex -shell-escape -output-directory ./aux ./resume.tex \
		|| xelatex --shell-escape -output-directory ./aux ./resume.tex
	mv ./aux/resume.pdf ./resume.pdf
	PDF='resume.pdf' j2 templates/index.html.j2 > resume.html
	PDF='resume.pdf' j2 templates/embed.html.j2 > embed-resume.html

cv:
	rm -rf ./aux
	rm -f ./cv.pdf
	rm -f embed-cv.html
	rm -f cv.html
	mkdir -p ./aux
	latexmk -xelatex -shell-escape -output-directory ./aux ./cv.tex \
		|| xelatex --shell-escape -output-directory ./aux ./cv.tex
	mv ./aux/cv.pdf ./cv.pdf
	PDF='cv.pdf' j2 templates/index.html.j2 > cv.html
	PDF='cv.pdf' j2 templates/embed.html.j2 > embed-cv.html

coverletter:
	rm -rf ./aux
	rm -f ./coverletter.pdf
	mkdir -p ./aux
	latexmk -xelatex -shell-escape -output-directory ./aux ./coverletter.tex \
		|| xelatex --shell-escape -output-directory ./aux ./coverletter.tex
	mv ./aux/coverletter.pdf ./coverletter.pdf
	PDF='coverletter.pdf' j2 templates/index.html.j2 > coverletter.html
	PDF='coverletter.pdf' j2 templates/embed.html.j2 > embed-coverletter.html

open:
	@if [ -f "resume.pdf" ]; then\
		xdg-open resume.pdf || open resume.pdf || explorer.exe resume.pdf;\
	fi
	@if [ -f "cv.pdf" ]; then\
		xdg-open cv.pdf || open cv.pdf || explorer.exe cv.pdf;\
	fi
	@if [ -f "coverletter.pdf" ]; then\
		xdg-open coverletter.pdf || open coverletter.pdf || explorer.exe coverletter.pdf;\
	fi

clean:
	@rm -rf ./aux
	@rm -f ./*.pdf
	@rm -f ./*.html