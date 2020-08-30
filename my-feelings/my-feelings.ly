\version "2.20.0"

\header {
  title = "My Feelings"
  composer = "Dan Salvato"
  tagline = "From Doki-Doki Literature Club"
}

upper = \relative c'' {
  \tempo "Rain Clouds" 4 = 67

  \clef treble
  \key c \major
  \time 4/4

  \repeat volta 2 {
  r4 \grace f16 g8 g2 f8 | e4 g8 d4 c d8 | e4 g,2. | d'4 f,2. |
  r4 \grace f'16 g8 g2 f8 | g4 e8 d4 b a8 | g4 g2. | f4 f2. |
  g1 | g16a g2. r8 | g16 a <g c, a>8\arpeggio f e c4 a' | g8 c b c2 d16 e |
  <f c a>8\arpeggio g, f4 r4. f'16 e | c8 g' g2 r8 a | b a b a4 g f8 |
  <e b g>1\arpeggio | <d a f> |} <c e g>\arpeggio~  <c e g> \bar "|."
}

lower = \relative c {
  \clef bass
  \key c \major
  \time 4/4

  \repeat volta 2 {
  c8_\markup{"con pedale"} e8 c'2. | d,8 f c'2. | e,8 b' e2. | d,8 g d'2. |
  c,8 e8 c'2. | d,8 f c'2. | e,8 b' e2. | d,8 g d'2. |
  r8 c,,8 g' c e g c e | r8 b, g' b g d' g, b | g f, c' f a2 | c,,8 g' c e g c e r8 |
  d,, a' d f a d f r8 | c,,8 g' c e g c e g | f,, c' f a c f a r8 |
  <e b e,>1 | <d, a' d> |} <c e g d'>\arpeggio~  <c e g d'> \bar "|."
}

\score {
  \new PianoStaff
  <<
    \set PianoStaff.connectArpeggios = ##t
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
}
