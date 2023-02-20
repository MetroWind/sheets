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
  title = "Eryth Sea"
  subtitle = "From Xenoblade Chronicles"
  composer = \markup{\override #'(font-name . "Source Han Serif") {清田愛未}}
  arranger = "Arrangement by Libera"
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
  \set Staff.ottavationMarkups = #ottavation-ordinals
  \key ees \minor
  \clef bass
  \time 4/4
  \tempo 4 = 62
  \relative c
  {
    <ces ees ges bes>4 aes'8 bes ees,2~ |
    ees4 f ges bes |
    <bes, des f aes>4 ges'8 aes des,2~|
    des4 \clef treble bes' ces des |
    <aes ces ees> f' aes f |
    %% 6
    <ges, bes des>4 bes2 des 4 |
    <aes ces ees>2 f'4 ges |
    <bes, d f>2 bes' |
    %% 9
    \ottava #1
    <bes' bes'>4 <aes aes'>8 <bes bes'> <ees, ees'>2~|
    <ees ees'>4 <f f'> <ges ges'> <bes bes'> |
    %% 11
    <aes aes'>4 <ges ges'>8 <aes aes'>8 \ottava #0
    <<
      {
        \voiceOne <des, des'>2 ~ <des des'>4 \ottava #1 <bes bes'> <ces ces'> <des des'> |
      }
      \new Voice {
        \voiceTwo r4 <bes, des f> <des ees aes>1 \arpeggio
      }
    >> \oneVoice
    %% 13
    <ees' ees'>4 <f f'> <aes aes'> <bes bes'> |
    <des des'> <bes bes'>2 <aes aes'>4 |
    <bes bes'>2 <ees ees'>4 <f f'> |
    <ees ees'> <d d'> <ees ees'> <f f'> |
  }
}

lower =
{
  \set Staff.ottavationMarkups = #ottavation-ordinals
  \key ees \minor
  \clef bass
  \time 4/4
  \relative c,
  {
    \ottava #-1
    ces1~ | ces | bes~ | bes | aes2 ces4 ees |
    %% 6
    <ges, des'> 2 bes | <fes fes'>1 | bes |
    %% 9
    \ottava #0
    ces'8 ges' ces ees ges  ges, ces ges |
    ces, ges' ces ees <ces ges' bes>\arpeggio ges ces ges |
    bes, des f bes des des, aes' bes |
    bes, des f bes <des ees f> \arpeggio des, <bes' des> f |
    %% 13
    aes, ees' ges ces ees ees, <ces' ees ges> ges |
    ges, des' ges bes des des, bes' ges |
    %% 15
    f, c' ees a c c, <a' ees'> ees |
    bes d f bes d f, f' bes, |
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
