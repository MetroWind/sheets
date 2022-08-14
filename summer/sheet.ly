\version "2.23.2"

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
  title = "菊次郎的夏天"
  composer = "久石讓"
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
  \key b \minor
  \relative c'
  {
    \clef "treble"
    \time 4/4
    r1 r1 r1 | r2 r4 a'16\staccato d\staccato e\staccato fis\staccato |
    \repeat volta 2
    {
      e8 d16\staccato d~ d4 r a16\staccato d\staccato e\staccato fis\staccato |
      e8 d16 e16~e fis8 fis16~ fis4 a,16\staccato d\staccato e\staccato fis\staccato |
      e8 d16\staccato d~ d4 r a16\staccato d\staccato e\staccato fis\staccato |
      e8 d16 e16~ e a8 fis16~ fis4 <fis fis,>8 <g g,> |
      <a a, cis>8 <a a, cis>16 <a a, cis>16~ <a a, cis>8 <a a, cis>8 <a b,> <fis b,>16 <d b>16~ <d b>8 fis16 g |
      <a a, cis>8 <a a, cis>16 <a a, cis>16~ <a a, cis>8 <a a, cis>8 <a b,> <fis b,>16 <d b>16~ <d b>8 d16 e |
    }
    \alternative {
      {
        <fis gis, b>8 <fis gis, b>16 <fis gis, b>16~ <fis gis, b>8 <fis gis, b>8 <fis g, b> b8 \tuplet 3/2 8 {<b e,>16 fis e} d8 |
        e4 <e g, b>8 <e g, b>16 <e g, b>16 <e g, b>8 cis a16\staccato d\staccato e\staccato fis\staccato |
      }
      {
        <fis d gis,>8 <fis d gis,>16 <fis d gis,>16~ <fis d gis,>8 <fis d gis,> <fis cis g>4 \tuplet 3/2 8 {<b e,>16 fis e} d16 b |
      }
    }
  }
}

lower = {
  \key b \minor
  \relative c
  {
    \clef "bass"
    \time 4/4
    b8( fis')\staccato b\staccato fis\staccato g,( d')\staccato g\staccato d\staccato |
    a( e')\staccato a\staccato e\staccato d( a')\staccato d\staccato a\staccato |

    b,8( fis')\staccato b\staccato fis\staccato g,( d')\staccato g\staccato d\staccato |
    a( e')\staccato a\staccato e\staccato d( a')\staccato d\staccato a\staccato |

    \repeat volta 2
    {
      b,8( fis')\staccato b\staccato fis\staccato g,( d')\staccato g\staccato d\staccato |
      a( e')\staccato a\staccato e\staccato d( a')\staccato d\staccato a\staccato |

      b,8( fis')\staccato b\staccato fis\staccato g,( d')\staccato g\staccato d\staccato |
      a( e')\staccato a\staccato e\staccato d( a')\staccato d\staccato a\staccato |

      a, e' a e g, d' g d | fis, cis' fis cis b fis' b fis |
    }
    \alternative {
      {
        e, b' e b g d' g d | a e' a e a, e' a e |
      }
      {
        e, b' e b <a a'>2 |
      }
    }
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
