all: html

html: phd.md
	pandoc --section-divs -t html5 -s --template template-revealjs.html -V theme=simple -V transition=fade -o index.html phd.md

pdf: phd.md
	pandoc -t beamer -o phd.pdf phd.md

clean:
	rm phd.html phd.pdf
