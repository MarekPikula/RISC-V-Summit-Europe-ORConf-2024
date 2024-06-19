all: index.html abstract

index.html: README.md
	ghmd README.md
	mv README.html index.html
	djhtml --tabwidth 2 *.html

abstract:
	$(MAKE) -C abstract/
.PHONY: abstract
