\version "2.22.0"
\pointAndClickOff

#(use-modules (guile-user))
$(case output-spec
  ((letter)
   (set-global-staff-size 18)
   (set-default-paper-size "letter")
   #{
   \paper {system-system-spacing =
   #'((basic-distance . 12)
       (minimum-distance . 4)
       (padding . 1)
      (stretchability . 60))
     left-margin = 10
     right-margin = 5
         }
   #}
  )
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
  composer = "Yanni"
  title =  "Until the Last Moment"
}

Upper = \relative c'''
{
  \key a \major
  \time 6/4
  \clef treble
  \tempo 4 = 126

  s2. a2.\fermata\mf | gis8( a) gis( a) gis( a) b( a gis fis e gis) |
  gis a fis e d e fis2 a8 b16 a |
  gis8( a) gis( a) gis( a) b( a gis fis e d ) |
  cis( d) cis( d) cis( b) cis2 d4 |
  %% 6
  cis8( gis) gis( a) b( cis) d( cis b a gis b) |
  b cis a gis a b cis2 d4 |
  %% 8
  cis8( gis) gis( a) b( cis) d( cis b a gis b) |
  b cis a gis a fis e fis d fis a b16 a |
  %% 10
  gis8 a b e, b' cis d e, b' cis d e |
  cis b a b cis d cis2 e4 |
  %% 12
  b8 e, gis a b e, b' cis d e, d' e |
  cis b a b cis fis cis2 a'4 |
  %% 14
  gis8( a) gis( a) gis( a) b( a gis fis e d ) |
  cis d cis d cis b cis2 a'8 b16 a |
  %% 16
  gis8( a) gis( a) gis( a) cis( b a gis fis e) |
  d cis b cis d fis cis2 cis4 |
  %% 18
  d8 b fis b cis b d b fis' d a' b16 a |
  gis8 a cis b d cis e d fis e eis fis |
}

Lower =  \relative c,
{
  \key a \major
  \time 6/4
  \clef bass
  s2. r2.\fermata | d4 a' d fis a d | d, fis a d2. |
  d,,4 a' d fis a d | fis,, cis' fis a cis2 |
  %% 6
  cis,,4 gis' cis eis gis cis | fis,, cis' fis a cis2 |
  %% 8
  cis,,4 gis' cis eis gis cis | d,, a' d fis a fis |
  %% 10
  e,( b' e) gis( b gis) | a, d a' cis cis2 |
  %% 12
  e,,4( b' e) gis( b gis) | a, d a' cis e2 |
  %% 14
  fis,,4 cis' fis a cis e | fis, a cis fis a, cis |
  %% 16
  d,, a' d fis a d | e,, b' gis' a, e' a |
  %% 18
  <<
    { b,4 <d fis> <fis b> <b d> <b fis> <b fis d> }
    \\
    { b,,1. }
  >> |
  <<
    { b'4 <d fis> <fis b> <b d> <b fis> <b fis d> }
    \\
    { b,,1. }
  >> |
}

%% The score definition
\score {
  \new PianoStaff \with { instrumentName = "Piano" }
  <<
    \accidentalStyle Score.piano-cautionary
    \new Staff = "upper" \Upper
    \new Staff = "lower" \Lower
  >>
  \layout {
    \context {
      \Score
      % \override Fingering.staff-padding = #'()
      % \override Fingering.add-stem-support = ##f
    }
  }
}
