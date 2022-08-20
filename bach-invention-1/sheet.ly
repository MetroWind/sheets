\version "2.23.2"

#(use-modules (guile-user))
$(case output-spec
  ((letter)
   (set-default-paper-size "letter")
   #{
     \paper {
     top-margin = 5
     bottom-margin = 2
     left-margin = 5
     right-margin = 5
     }
   #})
  ((kobo)
   (set! paper-alist
    (cons '("kobo" . (cons (* 15.7 cm) (* 20.9 cm))) paper-alist))
   (set-default-paper-size "kobo")
   #{
     \paper {
     top-margin = 0
     bottom-margin = 0
     left-margin = 5
     right-margin = 0
     }
   #}))
#(set-global-staff-size 18)

\header {
  title = "Invention 1"
  composer = "J.S. Bach"
  copyright = "v1.0"
  tagline = "Engraved by MetroWind, 最终正确完整加强硬盘绿色版"
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

    r16 c-1 d e f d e c g'8-2 c-4 b-\prall c |
    d16-5 g,-1 a b c a b g d'8-2 g-4 f-\prall g |
    e16-2 a g f e g f a-5 g-4 f e d c-2 e d f |
    e-4 d c b-1 a-2 c b d-5 c-4 b a g-1 fis-2 a g b |
    a8 d, c'8.-\mordent-4 d16 b-3 a g fis-3 e g fis a |
    g-1 b a c b-1 d  c e  d-3 b32 c d16 g b,8-\prall_3 a16 g |
    g8 r8 r4 r16 g a b c a b g-1 | % 7
    fis8-\prall-2 r8 r4 r16 a-1 b c d  b c a |
    b8 r8 r4 r16 d-4 c b a c b d |
    c8 r8 r4 r16 e-4 d c b d cis e |
    d8 cis d e f-5 a,-1 b cis |
    d fis,-2 gis-3 a-1 b c d4~ |
    d16-4 e,-1 fis gis a fis gis e e'-5 d c e d-4 c b d-4 | % 13
    c-1 a'-4 gis b-5 a-4 e-2 f-3 d-2 gis,-1 f'-4 e d c8 b16-2 a-1 |
    a a'-5 g f e g f a g2~ |
    g16 e f g a f g e f2~ |
    f16 g f e d f e g f2~ |
    f16 d e f g e f d e2~ |
    e16 c-1 d e f d e c d e-3 f-1 g a f-1 g e-1 |
    f-2 g-1 a b c a b g-1 c8 g e d16 c |
    c bes a g f-1 a g bes a-3 b-4 c-5 e,-2 d c' f, b-4 |
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
    c8-2 b-4 c d e-1 g,-4 a b |
    c e,-4 fis g a b c4~-2 |
    c16-4 d, e fis g e fis d g8-1 b,-4 c d |
    e-1 fis-3 g e b8.-3 c16 d8 d,-5 |   % 6
    r16 g16-3 a b c-2 a b g d'8-2 g-1 fis-3 g-2 |
    a16 d, e fis g e fis d a'8-2 d-1 c-3 d-2 |
    g,16-5
    \clef "treble"
    g'-1 f e d f e g f8 e f d |
    e16-3 a-1 g f e g f a g8 f g e | % 10
    f16 bes-2 a-3 g-4 f-5 a g bes-2 a-1 g f e d f e g-2 |
    f-1 e d c b d c e-2 d-1 c b a gis-5 b a c-2 |
    \clef "bass"
    b8-1 e,-5 d'8.-\mordent-2 e16-1 c-3 b-1 a g fis-4 a gis b-1 |
    a-4 c b d-1 c-4 e d f-1 e8-2 a,-5 e'-1 e,-5 |
    a8 a, r4 r16 e''16-1 d c b d cis e |
    d2~-2 d16 a-5 b c d b c a |
    b2~-4 b16 d-2 c b a c b d |
    c2~-3 c16 g a bes c a bes g |
    a8 bes-3 a-1 g f d' c bes |     % 19
    a f' e d-3 e16-1 d,-4 e f g e f d |
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
