all: index.html

index.html: README.md
	ghmd README.md --embed-css
	mv README.html index.html
