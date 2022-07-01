\version "2.23.2"

#(set! paper-alist
  (cons '("kobo" . (cons (* 15.7 cm) (* 20.9 cm))) paper-alist))
#(set-default-paper-size "kobo")
#(set-global-staff-size 18)
\paper {
  top-margin = 0
  bottom-margin = 0
  left-margin = 5
  right-margin = 1
}

\header {
  title = "Lullaby Set"
  composer = "Shira Kammen"
  copyright = "v0.1"
  tagline = "Engraved by MetroWind, with LilyPond"
}

sectionmark =
#(define-music-function
  (parser location label)
  (markup?)
  #{
  \tweak self-alignment-X #LEFT
  \mark #label
  #})

upper =
{
  \relative c'
  {
    \key f \major
    \clef "treble"
    \time 3/4

    r2 c8 d \bar ".|:" e4 e c | d2 g8 f | e4 e c | d c c8 d | e4 e c |
    d e f | d c bes | c2.~ | c | r | r2 c8 d \bar ":|." d4 c bes |
    c2.~ | c2. | r2. | r2 g'8 a8 |

    \sectionmark "Main"

    bes4. a8 g4 | a g f | e8 f g4 f | e c g'8 a | bes4. a8 g4 | a g f
    | g c b | c2 g8 a |

  }
}

lower = {
  \relative c
  {
    \clef bass
    \key f \major
    \time 3/4

    r2. \bar ".|:" c | bes | c | bes | c | bes | ges | f8 c' f c g' c,
    | a' c, g' c, f c | f, c' f c g' c, | a'2 r4 \bar ":|." f,2. |
    ees8 bes' ees bes f' bes, | g' bes, f' bes, ees bes | ees, bes'
    ees bes f' bes, | g'2. |

    \sectionmark "Main"

    g,8 d' g d bes' d, | f, c' f c a' c, | e, c' e c g' c, | c, c' e c
    g' c, | g d' g d bes' d, | f, c' f c a' c, | e, c' e c g' c, | c,
    c' e c g' c,

  }
}

\score {
  \new PianoStaff <<
    \set PianoStaff.instrumentName = "Piano"
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
}
