\version "2.18.2"

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
  title = "Into Deadlands"
  subtitle = "From Xenoblade Chronicles"
  composer = "Manami Kiyota"
  arranger = "Arrangement by Lozar"
  copyright = "v0.1"
  tagline = "Engraved by MetroWind"
}

%% This may not work with LilyPond 2.19.
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
  \key g \minor
  \clef treble
  \time 4/4
  \tempo 4 = 72
  \relative c''
  {
    r2 r4 g''16_"G" d ees d | c^1 d^4 c bes a^1 bes^4 a g^2 d2^1 |
    r2 r4 r8 d16 ees | d2 r4 g,8 a |
    %% 5
    bes2. c8 d8 | a2. g8 a | g4 g' f8 ees d ees |
    d2~d8 d^2 ees d | c4^1 a^2 d^5 c8 a | g8^1 a bes d g4 g8^3 a |
    bes4 a g^3 ees^2 |
    %% 12
    d4^1 c^4 a g8 a | bes2. c8 d | <a c,>2. g8 a |
    <g bes,>4 g' \stemUp f8 ees <<
      { \voiceOne d ees }
      \new Voice { \voiceTwo ees,4 }
    >> \oneVoice |
    %% 16
    <d' d,>2~d8 d ees d | <c c,>4 a <d d,> c8 <a fis> |
    <<
      { \voiceOne g a bes d g4 ees }
      \new Voice { \voiceTwo bes,4 c bes2 }
    >> \oneVoice |
  }
}

lower =
{
  \key g \minor
  \clef treble
  \time 4/4
  \relative c'
  {
    g8 d' <bes' d g>2.\arpeggio | g,8 d' <bes' d g>2.\arpeggio |
    g,8 d' <bes' d g>2.\arpeggio | g,8 d' <bes' d g>2.\arpeggio |
    %% 5
    g,8( d' g a bes2) | f,8(^"F" c' f g a2) |
    ees,8(^\markup{\concat{"E"\flat}} bes' ees g bes2) |
  }

  \clef bass
  \relative c
  {
    bes8( f' bes c d2) | a,8( e' a c) d, fis a4 |
    g,8 d' f, d' ees,( bes' g' ees) | c,( g' c ees <g bes>2) |
    d,8( a' d a' <d fis>2) | g,,8 d' g a bes g d' d, |
    f, c' f g a c, c' f, | ees, bes' ees g bes bes, ees g |
    %%16
    bes, d f bes d d, bes' f | a, c <ees a> ees'-"R" d, fis a4 |
    g,8 d' f, c' ees, bes' d, d' |
  }
}

\score {
  \new PianoStaff <<
    \set PianoStaff.connectArpeggios = ##t
    %% \set PianoStaff.instrumentName = #"Piano  "
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
}
