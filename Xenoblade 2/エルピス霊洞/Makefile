NAME = "エルピス霊洞"
SRC = elpys.ly

.PHONY: clean

all: $(NAME)-kobo.pdf $(NAME)-letter.pdf

$(NAME)-kobo.pdf: $(SRC)
	lilypond -dno-point-and-click -e "(define-public output-spec 'kobo)" -o $(NAME)-kobo $(SRC)

$(NAME)-letter.pdf: $(SRC)
	lilypond -dno-point-and-click -e "(define-public output-spec 'letter)" -o $(NAME)-letter $(SRC)

clean:
	rm -v $(NAME)-kobo.pdf $(NAME)-letter.pdf
