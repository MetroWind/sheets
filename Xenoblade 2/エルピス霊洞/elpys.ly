\version "2.19.82"

#(use-modules (guile-user))
$(case output-spec
  ((letter)
   (set-default-paper-size "letter"))
  ((kobo)
   (set! paper-alist
    (cons '("kobo" . (cons (* 15.7 cm) (* 20.9 cm))) paper-alist))
   (set-global-staff-size 18)
   (set-default-paper-size "kobo")
   #{
     \paper {
     top-margin = 0
     bottom-margin = 0
     left-margin = 5
     right-margin = 0
     }
   #}))

\header {
  title = \markup{ \override #'(font-name . "Source Han Serif SemiBold") {エルピス霊洞} }
  composer = \markup{\override #'(font-name . "Source Han Serif") {清田愛未}}
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
  \transpose c d
  {
    \key c \major
    \relative c''
    {
      \clef "treble"
      \time 4/4

      %% Intro
      \sectionmark "Intro."
      \set Staff.ottavation = "8va"
      e8 \p d e a e d c d | b g g'2. | e8 d e a e d c d | b c g2. |
      e'8 d e a e d c d | b4 a g d | \unset Staff.ottavation e'2 g4 d | e1 |

      %% Main
      \sectionmark "Main Theme"
      r2 \mf e8 d e g | \chordmode{a2:m\arpeggio ~a8:m} e8 d c | b c g2 ~g8 e|
      f e f c'2 d,8 | e d e b'4. c8 d | \chordmode{a2:m\arpeggio ~a8:m} e8 d c |
      b c g2 e4| f8 g a c gis4 f8 ees |

      f2. c'4 |\sectionmark "Main theme variation"
      \chordmode{a2:m\arpeggio ~a8:m} \set Staff.ottavation = "8va"
      e8_"Play octaves for more challange" d c |
      b c g2 ~g8 e|
      f e f c'2 d,8 | e d e b'4. c8 d | e2~e8 e8 d c |
      b c g2 e4| f8 g a c gis4 f8 ees |
      f2. c'4 \bar"||"
    }
  }

  \transpose c bes
  {
    \key c \major
    \relative c''
    {
      \sectionmark "2nd theme"
      a1~ | a4 a b c |
      b8 a g d4. a,8\pp b | c4 b'4 \mf e g |
      a1~ | a4 a b c | <b b,> <a a,> <g g,> <e e,> |
      <g g,>8 <a a,>8 <a a,>4. \unset Staff.ottavation a8 g e |

      \sectionmark "Outro"
      f4 \p e f g | a d c a | f e c a | g2 <a, cis e a>\arpeggio |
      f'4 e c a | g2 \chordmode{a,,\arpeggio} |
      <a c e>2^\markup{\override #'(font-name . "Source Han SC Serif SemiBold") {装逼} \override #'(font-name . roman) {crossover}} \arpeggio c8 e a c |
      <a c a'>1 \arpeggio \bar"||"
    }
  }

  \transpose c d
  {
    \key c \major
    \relative c''
    {
      \sectionmark "Intro. repeat as end"
      \set Staff.ottavation = "8va"
      e8 d e a e d c d | b g g'2. | e8 d e a e d c d | b c g2. |
      e'8 d e a e d c d | b4 a g d | \unset Staff.ottavation e'2 g4 d | e1 \bar"|."
    }
  }
}

lower = {
  \relative c'
  {
    \clef treble
    \key d \major
    \time 4/4

    \chordmode{g1:maj7\arpeggio fis1:m7\arpeggio g1:maj7\arpeggio fis2:m7\arpeggio}
  }

  \relative c,
  {
    \clef bass fis8 cis' e fis | g,8 d' <d' fis>2. | fis,,4 <cis'' e>2. |
    c,8 e a c e2 | b,8 \change Staff = "upper" dis' fis b b'2 \change Staff = "lower" |

    %% Main
    r1 | g,,8 b d b fis'4 g, | fis8 a cis a e'4 fis, |
    e8 g b d4 g,8 b4 | d,8 fis a c4 d,8 fis a | g8 b d b fis'4 g, |
    fis8 a cis a e'4 fis, | e8 g b d \chordmode{ees,4:maj7 \arpeggio d,4:m7 \arpeggio} |
    g,8 c d c \chordmode{g,2 \arpeggio} |

    g,8 d' g b d 4 \chordmode{b,:m} | fis,,8 cis' e a cis a e' cis |
    e,,8 b' d \chordmode{g,4.} g8 b |
    d,,8 a' d \chordmode{fis,4:m} d8 fis a | g,8 d' g b d 4 \chordmode{b,:m} | fis,,8 cis' e a cis a e'4 |
    e,,8 b' d g \chordmode{ees,4:maj7 \arpeggio d,4:m7 \arpeggio} |
    g,8 d' g c \chordmode{g,2 \arpeggio} |

    %% 2nd theme
    \key bes \major
    ees,,8 bes' ees g bes g ees bes | ees,8 bes' ees g bes g ees bes |
    d, a' d f a f d a | d, a' d f a f d a |
    ees8 bes' ees g bes g ees bes | ees,8 bes' ees g bes g ees bes |
    d, a' d f a f d a | g d' g c b2 |

    %% Outro
    \chordmode{c2:m\arpeggio} <bes ees g> \arpeggio |
    \chordmode{aes,:maj7 \arpeggio g,:m7 \arpeggio |
               f,:m7 \arpeggio ees,:maj7 \arpeggio |
               d,:m7 \arpeggio g,, \arpeggio} |
    f,8 c' \change Staff = "upper" aes' f
    \change Staff = "lower" ees, bes' r ees |
    d, a' \change Staff = "upper" f' \change Staff = "lower" d g,2 |
    ees8 bes' ees g r2 | r1|
  }

  \relative c'
  {
    \clef treble
    \key d \major

    \chordmode{g1:maj7\arpeggio fis1:m7\arpeggio g1:maj7\arpeggio fis2:m7\arpeggio}
  }

  \relative c,
  {
    \clef bass fis8 cis' e fis | g,8 d' <d' fis>2. | fis,,4 <cis'' e>2. |
    c,8 e a c e2 | b,8 \change Staff = "upper" dis' fis dis b'2 \change Staff = "lower" |
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
