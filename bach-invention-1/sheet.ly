\version "2.23.2"

#(set! paper-alist
  (cons '("kobo" . (cons (* 15.7 cm) (* 20.9 cm))) paper-alist))
#(set-default-paper-size "kobo")
#(set-global-staff-size 18)
\paper {
  top-margin = 0
  bottom-margin = 0
  left-margin = 5
  right-margin = 0
}

\header {
  title = "Invention 1"
  composer = "J.S. Bach"
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
  \key c \major
  \relative c'
  {
    \clef "treble"
    \time 4/4

    r16 c-1 d e f d e c g'8-1 c b-\prall c |
    d16-5 g,-1 a b c a b g d'8-1 g f-\prall g |
    e16-2 a g f e g f a-5 g-5 f e d c e d f |
    e-3 d c b-3 a c b d-5 c-5 b a g fis a g b |
    a8 d, c'8.-\mordent d16 b a g fis e g fis a |
    g b a c b d  c e  d b32 c d16 g b,8-\prall a16 g |
    g8 r8 r4 r16 g a b c a b g |
    fis8-\prall r8 r4 r16 a b c d  b c a |
    b8 r8 r4 r16 d c b a c b d |
    c8 r8 r4 r16 e d c b d cis e |
    d8 cis d e f a, b cis |
    d fis, gis a b c d4~ |
    d16 e, fis gis a fis gis e e' d c e d c b d |
    c a' gis b a e f d gis, f' e d c8 b16 a |
    a a'g f e g f a g2~ |
    g16 e f g a f g e f2~ |
    f16 g f e d f e g f2~ |
    f16 d e f g e f d e2~ |
    e16 c d e f d e c d e f g a f g e |
    f g a b c a b g c8 g e d16 c |
    c bes a g f a g bes a b c e, d c' f, b |
    \set PianoStaff.connectArpeggios = ##t
    <e,g c>1\arpeggio\fermata \bar "|."
  }
}

lower = {
  \key c \major
  \relative c
  {
    \clef "bass"
    \time 4/4

    r2 r16 c-5 d e f d e c |
    g'8-"G" g,-"G" r4 r16 g'-5 a b c a b g |
    c8-2 b c d-1 e-1 g, a b |
    c e, fis g a b c4~ |
    c16 d, e fis g e fis d g8 b, c d |
    e fis g e b8. c16 d8 d, |
    r16 g16 a b c a b g d'8 g fis g |
    a16 d, e fis g e fis d a'8 d c d |
    g,16
    \clef "treble"
    g' f e d f e g f8 e f d |
    e16 a g f e g f a g8 f g e |
    f16 bes a g f a g bes a g f e d f e g |
    f e d c b d c e d c b a gis b a c |
    \clef "bass"
    b8 e, d'8.-\mordent e16 c b a g fis a gis b |
    a c b d c e d f e8 a, e' c, |
    a'8 a, r4 r16 e''16 d c b d cis e |
    d2~ d16 a b c d b c a |
    b2~ b16 d c b a c b d |
    c2~ c16 g a bes c a bes g |
    a8 bes a g f d' c bes |
    a f' e d e16 d,e f g e f d |
    e8 c d e f16 d e f g8 g, |
    <c, c'>1\arpeggio\fermata \bar "|."
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
