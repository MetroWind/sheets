all: lullaby-set.pdf

lullaby-set.pdf: sheet.ly
	lilypond -dno-point-and-click -o $(basename $@) $<
