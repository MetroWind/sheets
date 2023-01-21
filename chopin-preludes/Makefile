Preludes := no4					# Add to this line when adding more preludes.
PDFs := $(foreach no,$(Preludes),chopin-prelude-$(no)-letter.pdf chopin-prelude-$(no)-kobo.pdf)

.PHONY: clean no4
all: $(PDFs)

chopin-prelude-%-letter.pdf: %.ly setup.ly
	lilypond -dno-point-and-click -e "(define-public output-spec 'letter)" -o $(basename $@) $<

chopin-prelude-%-kobo.pdf: %.ly setup.ly
	lilypond -dno-point-and-click -e "(define-public output-spec 'kobo)" -o $(basename $@) $<

clean:
	rm -v *.pdf
