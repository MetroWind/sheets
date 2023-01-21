\version "2.22.2"

#(set-global-staff-size 18)

\header {
  maintainer = "MetroWind"
  maintainerEmail = "chris.corsair@gmail.com"
  copyright = \markup {
    "This work is licensed under a"
    \with-url #"https://creativecommons.org/licenses/by-sa/4.0/"
    "Creative Commons Attribution-ShareAlike 4.0 License"
  }
}

\paper {
  ragged-right = ##f
  ragged-last-bottom = ##f
  min-systems-per-page = 5

  markup-system-spacing =
    #'((basic-distance . 1)
       (padding . 0.5)) % defaults: 1, 0.5

  system-system-spacing =
    #'((basic-distance . 4)
       (minimum-distance . 2)
       (padding . 1)
       (stretchability . 60)) % defaults: 12, 8, 1, 60

  score-system-spacing =
    #'((basic-distance . 12)
       (minimum-distance . 8)
       (padding . 4)
       (stretchability . 60))

  last-bottom-spacing =
    #'((basic-distance . 6)
       (minimum-distance . 4)
       (padding . 3)
       (stretchability . 30)) % defaults 1, 0, 1, 30

  top-system-spacing.minimum-distance = 10

  #(set-paper-size "letter")

  % These settings are scaled to paper-size
  top-margin = 5\mm % default 5
  bottom-margin = 6\mm % default 6
  left-margin = 10\mm % default 10
  right-margin = 10\mm % default 10
}

\layout {
  \context {
    \Score
    \override Slur.details.free-head-distance = 1
  }
  \context {
    \PianoStaff
    \consists #Span_stem_engraver
  }
}

\language "english"

makeSpanner =
#(define-music-function (mrkup) (markup?)
  #{
    \override TextSpanner.bound-details.left.text = #mrkup
    \override TextSpanner.bound-details.left.stencil-align-dir-y = 0.25
    \override TextSpanner.bound-details.left-broken.text = ##f
  #})

%%% Redefine %%%

staffUp   = \change Staff = "upper"
staffDown = \change Staff = "lower"
up   = { \staffUp \stemDown }
down = { \staffDown \stemUp }

voiceFive = #(context-spec-music (make-voice-props-set 4) 'Voice)

clearStem = \tweak Stem.transparent ##t \etc
omitAccidental = \once \omit Accidental

whiteoutCresc = \makeSpanner \markup \large \italic \whiteout \pad-markup #0.5
  "cresc."
pocoAPocoCresc = \makeSpanner \markup \large \italic "poco a poco cresc."
semprePuiAnimato = \makeSpanner \markup \large \italic "sempre più animato"
smorzando = \override TextSpanner.bound-details.left.text =
  \markup \large \italic "smorzando"
perden = \makeSpanner \markup \large \italic "perdendosi"
ritSpan = \makeSpanner \markup \large \italic "rit."
diminESmorz = \makeSpanner \markup \large \italic \whiteout \pad-markup #0.5
  "dimin. e smorz."

dynamicInsideSlur = {
  \once \override DynamicLineSpanner.avoid-slur = #'inside
  \once \override DynamicLineSpanner.outside-staff-priority = ##f
}

trillInsideSlur = {
  \once \override TrillSpanner.avoid-slur = #'inside
  \once \override TrillSpanner.outside-staff-priority = ##f
}

textInsideSlur = {
  \once \override TextScript.avoid-slur = #'inside
  \once \override TextScript.outside-staff-priority = ##f
}

textInsideStaff = \once \override TextScript.outside-staff-priority = ##f

slashFlag = \once \override Flag.stroke-style = "grace"
insideStaff =
  \tweak outside-staff-priority ##f
  \tweak staff-padding #'()
  \etc

transparent = \tweak transparent ##t \etc

fermataOverUnderBarLine = {
  \once \override Score.RehearsalMark.break-visibility =
    #begin-of-line-invisible
  \mark \markup \small { \musicglyph #"scripts.ufermata" }

  %% The RehearsalMark in Staff is overriden, while not touching the one
  %% from Score.
  \once \override Staff.RehearsalMark.direction = #DOWN
  \once \override Staff.RehearsalMark.rotation = #'(180 0 0)
}

accidentalUnderTurn = \once \override TextScript.script-priority = #-100

%%% Markup %%%

rit = \markup \large \italic "rit."
stretto = \markup \large \italic "stretto"
slentando = \markup \large \italic "slentando"
sostenutom = \markup \large \italic \whiteout \pad-markup #0.5 "sostenuto"
leggiermente = \markup \large \italic "leggiermente"
dimm = \markup \large \italic "dim."
espressivom = \markup \large \italic \whiteout \pad-markup #0.5 "espressivo"
smorz = \markup \large \italic \whiteout \pad-markup #0.5 "smorz."
sottoVoce = \markup \large \italic "sotto voce"
pDolce = \markup {
  \dynamic p \large \italic \whiteout \pad-markup #0.5 "dolce"
}
sempreConPedale = \markup \large \italic "sempre con Pedale"
pocoRitenuto = \markup \large \italic "poco ritenuto"
moltoAgitato = \markup \large \italic "molto agitato e stretto"
decrescm = \markup \large \italic "decresc."
crescm = \markup \large \italic "cresc."
ritenuto = \markup \large \italic "ritenuto"
pLeggiero = \markup { \dynamic p \large \italic "leggiero" }
mfLegato = \markup {
  \dynamic mf \large \italic \whiteout \pad-markup #0.5 "legato"
}
pocoRit = \markup \large \italic "poco rit."
aTempo = \markup \large \italic "a tempo"
pLegato = \markup {
  \dynamic p \large \italic "legato"
}
pSempreLegato = \markup { \dynamic p \large \italic "sempre legato" }
piuP = \markup { \large \italic "più" \dynamic p }
piuLento = \markup \bold "Più lento"
pSostenuto = \markup { \dynamic p \large \italic "sostenuto" }
tempoI = \markup \bold "Tempo I."
pesante = \markup \large \italic "pesante"
slentando = \markup \large \italic "slentando"
sempreLegato = \markup \large \italic "sempre legato"
ffz = \markup \dynamic "ffz"
pDelicatiss = \markup { \dynamic p \large \italic "delicatiss." }
ppATempo = \markup { \dynamic pp \large \italic "a tempo" }
fzSempreForte = \markup { \dynamic fz \large \italic "sempre forte" }
conForza = \markup \large \italic "con forza"
fffStretto = \markup { \dynamic fff \large \italic "stretto" }
sempreFF = \markup { \large \italic "sempre" \dynamic ff }
doubleSharp = \markup \teeny \doublesharp
