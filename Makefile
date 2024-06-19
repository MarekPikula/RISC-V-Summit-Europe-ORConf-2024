all: index.html

index.html: README.md
	ghmd README.md
	mv README.html index.html
	djhtml --tabwidth 2 *.html
