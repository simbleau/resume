all: clean resume cv coverletter

resume:
	rm -rf ./aux
	rm -f ./resume.pdf
	mkdir -p ./aux
	latexmk -xelatex -shell-escape -output-directory ./aux ./resume.tex \
		|| xelatex --shell-escape -output-directory ./aux ./resume.tex
	mv ./aux/resume.pdf ./resume.pdf
	jinja2 templates/index.html.j2 -D PDF='resume.pdf' --strict > resume.html
	jinja2 templates/embed.html.j2 -D PDF='resume.pdf' --strict > embed-resume.html

cv:
	rm -rf ./aux
	rm -f ./cv.pdf
	mkdir -p ./aux
	latexmk -xelatex -shell-escape -output-directory ./aux ./cv.tex \
		|| xelatex --shell-escape -output-directory ./aux ./cv.tex
	mv ./aux/cv.pdf ./cv.pdf
	jinja2 templates/index.html.j2 -D PDF='cv.pdf' --strict > cv.html
	jinja2 templates/embed.html.j2 -D PDF='cv.pdf' --strict > embed-cv.html

coverletter:
	rm -rf ./aux
	rm -f ./coverletter.pdf
	mkdir -p ./aux
	latexmk -xelatex -shell-escape -output-directory ./aux ./coverletter.tex \
		|| xelatex --shell-escape -output-directory ./aux ./coverletter.tex
	mv ./aux/coverletter.pdf ./coverletter.pdf

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