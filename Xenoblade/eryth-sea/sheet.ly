\version "2.18.2"

#(use-modules (guile-user))
$(case output-spec
  ((letter)
   (set-global-staff-size 17)
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
      { <des, des'>2 ~ <des des'>4
        \ottava #1 <bes bes'> <ces ces'> <des des'> } \\
      { r4 <bes, des f> <des ees aes>1 \arpeggio }
    >> |
    %% 13
    <ees' ees'>4 <f f'> <aes aes'> <bes bes'> |
    <des des'> <bes bes'>2 <aes aes'>4 |
    <bes bes'>2 <ees ees'>4 <f f'> |
    <ees ees'> <d d'> <ees ees'> <f f'> |
    %% 17
    \ottava #0
    <bes,, ees ges>4 <bes ges ees>2 <bes ees ges>4 |
    <aes des f> <aes f des>2 <aes des f>4 |
    %% 19
    <ges ces ees>2 <ges ees ces>4 <ges ces ees> |
    <ges bes des> <des ges bes>2. |
    %% 21
    <ees aes ces>8 <ges bes> <aes ces> <aes ees>
    <ges bes> <aes ces> <bes ees> <ces ges'> |
    %% 22
    <des f> <ces ees> <bes des> <aes des,>
    <ges bes> <aes ces> <ces ees> <des ges> |
    %% 23
    <des ges bes>2. aes'8 ges |
    %% 24
    <f d bes>4 <ees c> <d bes f>\arpeggio <d f> |
    <bes ees ges>\arpeggio bes2 ges'4 |
    <aes, des f>\arpeggio aes2 f'4 |
    %% 27
    <ges, ces ees>2\arpeggio ges4 ees' |
    <ges, bes des>\arpeggio bes2. |
    %% 29
    <aes ees ces>4 bes ces ees |
    <des bes ges>\arpeggio bes2 aes4 |
    %% 31
    <bes ees, ces>2\arpeggio aes4 ges |
    <ges bes ees ges>\arpeggio <f des> des bes |
    <ges des' ees> <aes des f>2 <ces ees ges>4 |
    <aes des aes'>1 \fermata |

    \time 3/4
    %% 35
    <ees' ges bes>2 aes8 ges | <f des aes>4 des aes |
    %% 37
    < bes ges ees> ces ees | <des ges bes>2. |
    %% 39
    <ees aes>4 ges ees | <f des aes> ees f |
    %% 41
    <ees bes ges>1~ <ees bes ges>1 \bar "|."
  }
}

lower =
{
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
    %% 17
    <ees, ees,> ges bes ees <ges, bes ees>\arpeggio ees ees' ges, |
    <des des,> f aes des <des aes f>\arpeggio f, des' aes |
    %% 19
    <ces, ces,> ees ges ces r ees, ces' ges |
    <bes, bes,> des ges bes des des, <des' bes> ges, |
    %% 21
    <aes, aes,> ees' aes4 ees'8 ees, aes aes, |
    %% 22
    des, aes' des f ges aes f f |
    ges, des' ges bes des des, ges ees |
    %% 24
    bes f' bes d bes4 d |
    ees,8 ges bes ges ees' ges, bes ges |
    des f aes f des' f, aes f |
    %% 27
    ces ees ges ees ces' ees, ges ces |
    ges, des' ges aes bes ges des' bes |
    %% 29
    aes, ees' aes ces ees aes, ces ees |
    ges,, des' ges bes des ges, bes des |
    %% 31
    fes,, ces' ees ces' ces ces, ces' ees, |
    ees, bes' des bes bes' des, ges bes, |
    %% 33
    <des des,>4 q2 q4 | q1 \fermata |

    \time 3/4
    ees,8 bes' ees2 | des,8 aes' des2 | ces,8 ges' ces2 |
    bes,8 des bes'2 | aes,8 ees' aes2 | des,8 aes' des2 |

    \time 4/4
    %% 41
    ees,8 bes' ees bes ges'2 | ees,8 bes' ees bes ges'2 | \bar "|."
  }
}

\score {
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
}
