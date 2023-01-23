all: my-feelings.pdf

%.pdf: %.ly
	lilypond -dno-point-and-click -o $(basename $@) $<
