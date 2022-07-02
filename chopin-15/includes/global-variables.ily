\version "2.22.1"

% Redefine

staffUp   = \change Staff = "upper"
staffDown = \change Staff = "lower"

insideSlur = \once \override Script.avoid-slur = #'inside
textUnderSlur = {
  \once \override TextScript.avoid-slur = #'inside
  \once \override TextScript.outside-staff-priority = ##f
}
dynamicUnderSlur = { 
  \once \override DynamicLineSpanner.avoid-slur = #'inside
  \once \override DynamicLineSpanner.outside-staff-priority = ##f
}

slashFlag = \once \override Flag.stroke-style = "grace"

omitOneAccidental = \once \omit Accidental

onlyNoteHead = {
  \once \omit Stem
  \once \omit Flag
  \once \omit Dots
}

strictGraceOn = {
  \override Score.SpacingSpanner.strict-note-spacing = ##t
  \newSpacingSection
}

strictGraceOff = {
  \revert Score.SpacingSpanner.strict-note-spacing
  \newSpacingSection
}

tupletNumberOn = \undo \omit TupletNumber
tupletNumberOff = \omit TupletNumber

% Positions and shapes

forceHShiftAOn = \override NoteColumn.force-hshift = 0.5
forceHShiftBOn = \override NoteColumn.force-hshift = 0.85
forceHShiftC = \once \override NoteColumn.force-hshift = 1
forceHShiftD = \override NoteColumn.force-hshift = 3
forceHShiftD = \override NoteColumn.force-hshift = 0.7
forceHShiftE = \once \override NoteColumn.force-hshift = 0.375
forceHShiftF = \once \override NoteColumn.force-hshift = -0.325
forceHShiftOff = \override NoteColumn.force-hshift = 0

moveNoteColumnA = \once \override NoteColumn.X-offset = 4

columnShiftAOn = \override NoteColumn.X-offset = -0.5
columnShiftOff = \revert NoteColumn.X-offset 

accidentalShiftA = \once \override Accidental.X-offset = -0.75

moveFzA = 
  \tweak X-offset -3.5
  \tweak Y-offset -2
  \etc
moveFzB = 
  \tweak X-offset -3
  \tweak Y-offset -3
  \etc
moveTextA = \once \override TextScript.Y-offset = 5
moveTextB = \once \override TextScript.Y-offset = 3
moveHairpinA = \tweak Y-offset -1.6 \etc
movePedalA = 
  \tweak X-offset 4
  \tweak Y-offset -2
  \etc
movePedalB = \tweak Y-offset 4 \etc
moveRestA = \tweak Y-offset -1 \etc
moveConForza = 
  \tweak X-offset -3
  \tweak Y-offset -2
  \etc
moveTupletNumberA = \tweak TupletNumber.Y-offset 0 \etc
moveTupletNumberB = \tweak TupletNumber.Y-offset 4 \etc
moveFingerA = \tweak Y-offset 8 \etc
  
beamPositionsA = \once \override Beam.positions = #'(-6 . -5)
beamPositionsB = \once \override Beam.positions = #'(-0.5 . -0.7) % d-c
beamPositionsC = \once \override Beam.positions = #'(-0.4 . 0) % d-e
beamPositionsD = \once \override Beam.positions = #'(0.8 . 1.2) % f-g
beamPositionsE = \once \override Beam.positions = #'(1.6 . 1.2) % a-g
beamPositionsF = \once \override Beam.positions = #'(0.2 . 0.6) % e-f
beamPositionsG = \once \override Beam.positions = #'(2.4 . 3.2) % c-e
beamPositionsH = \once \override Beam.positions = #'(2 . 1) % b-a
beamPositionsI = \once \override Beam.positions = #'(2.8 . 2.8) % d-d
beamPositionsJ = \once \override Beam.positions = #'(0.3 . 0) % f-e
beamPositionsK = \once \override Beam.positions = #'(1 . 1.4) % a-b
beamPositionsL = \once \override Beam.positions = #'(2.4 . 2) % c-b
beamPositionsM = \once \override Beam.positions = #'(1 . 1.4) % g-a
beamPositionsN = \once \override Beam.positions = #'(2.4 . 2.8) % c-d
beamPositionsO = \once \override Beam.positions = #'(1 . 1) % g-g
beamPositionsP = \once \override Beam.positions = #'(0.8 . 0.8) % f-f
beamPositionsQ = \once \override Beam.positions = #'(-0.8 . -0.4) % c-d (down)
beamPositionsR = \once \override Beam.positions = #'(1.2 . 1.8) % c-d (bass)
beamPositionsS = \once \override Beam.positions = #'(7 . 6.5)
beamPositionsT = \once \override Beam.positions = #'(5 . 5.5)
beamPositionsU = \once \override Beam.positions = #'(6 . 6.5)
beamPositionsV = \once \override Beam.positions = #'(6.5 . 7)
beamPositionsW = \once \override Beam.positions = #'(2.4 . 2.4) % c-c

stemLengthA = \once \override Stem.length = 7.5
stemLengthB = \once \override Stem.length = 5.25

tieShapeA = \shape #'((0 . 0) (0 . -1) (0 . -1) (0 . 0)) \etc
tieShapeB = \shape #'((0 . -1) (0 . -0.5) (0 . 0) (0 . 0)) \etc
tieShapeC = \shape #'((0 . 0) (0 . -0.1) (0 . -0.1) (-0.2 . 0.4)) \etc
tieShapeD = \shape #'((0 . 0) (0 . 0.1) (0 . 0.1) (0 . 0.4)) \etc
slurShapeA = \shape #'((-0.25 . 0.75) (0 . 0.5) (0 . 0) (0 . 0)) \etc
slurShapeB = \shape #'((0 . 0) (0 . 0) (0 . 1) (0 . 0)) \etc
slurShapeC = \shape #'((0 . 0) (0 . 3.25) (0 . 1.5) (0 . -1)) \etc
slurShapeD = \shape #'((0 . 1) (0 . 1) (0 . 1) (0 . 1)) \etc
slurShapeE = \shape #'((0 . -1) (0 . 0.5) (0 . 0.5) (0 . -1)) \etc
slurShapeF = \shape #'((0 . 0) (0 . 0) (0 . 0) (-0.75 . -0.5)) \etc
slurPositionA = \tweak positions #'(0 . 3) \etc

% Markup

semplice = \markup \large \italic \whiteout "semplice e tranquillo"
sempreLeg = \markup \large \italic "sempre legato"
dolciss = \markup \large \italic "dolciss."
dolcissSmall = \markup \small \italic "dolciss."
delicatiss = \markup \large \italic "delicatiss."
ossia = \markup \small \italic "ossia"
dimm = \markup \large \italic "dim."
ppPocoRit = \markup { \dynamic pp \large \italic "e poco ritenuto" }
fzm = \markup \dynamic fz
aTempo = \markup \large \italic "a tempo"
sottoVoce = \markup \large \italic "sotto voce"
crescm = \markup \large \italic "cresc."
pfzSempre = \markup { \dynamic { p fz } \large \italic "sempre legato" }
rallECalan = \markup \large \italic "rall. e calando"
conFuoco = \markup \large \italic "con fuoco"
conFuocoTempo = \markup {
 \bold "con fuoco"
 \concat {
   (
   \smaller \general-align #Y #DOWN \note {4} #1
   " = 84"
   )
 }
}
sostenuto = \markup \large \italic \whiteout "sostenuto"
leggiero = \markup \large \italic "leggiero"
iDuePed = \markup \italic "(i due Ped.)"
conForza = \markup \large \italic "con forza"
unaCordaM = \markup \italic "(una corda)"
ppEPocoRit = \markup { \dynamic pp \large \italic "e poco ritenuto" }
decrescm = \markup \large \italic "decresc."
dolce = \markup \large \italic "dolce"
leggierissimo = \markup \large \italic "leggierissimo"
rall = \markup \large \italic "rall."
smorzando = \markup \large \italic "smorzando"
stringendo = \markup \large \italic "stringendo"
ritenuto = \markup \large \italic "ritenuto"
pLangERubato = \markup { 
  \dynamic p \large \italic \whiteout "languido e rubato" 
}
leggieriss = \markup \large \italic "leggieriss."
ritenutoWO = \markup {
  \large \italic \override #'((style . outline) (thickness . 3)) 
  \whiteout "ritenuto"
}
accelarando = \markup \large \italic "accelarando"
riten = \markup \large \italic "riten."

threeOne = \finger \markup \overtie #"31"

% Scheme functions

forceStemLength =
#(define-music-function (len) (number?)
   (once
    (propertyOverride
     '(Stem after-line-breaking)
     (lambda (grob)
       (let ((beam (ly:grob-object grob 'beam)))
         (ly:grob-property beam 'quantized-positions)
         (ly:grob-set-property! grob 'length len))))))

% ly:expect-warning only works to supress once.  This function allows
% you to specify the number of times a warning appears.
#(define ly:expect-warning-times (lambda args
   (for-each (lambda _ (apply ly:expect-warning (cdr args)))
             (iota (car args)))))
