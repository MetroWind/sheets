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
  title = \markup {\override #'(font-name . "Source Han Serif SemiBold") { 廃墟 }}
  composer = \markup {\override #'(font-name . "Source Han Serif") { 清田愛未 }}
  copyright = "v1.1"
  tagline = "Transcribed by MetroWind"
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
  \transpose c f
  {
    \key c \major
    \clef treble
    \time 3/4
    \tempo 4 = 67
    \relative c''
    {
      %% 1st movement
      \sectionmark "Main movement"
      r2 a'8 g8 | e2 g8 fis8 | d2 e8 d8 | a4 b c | g2. | r4 a b | d c4.
      g8 | a4 e' d | c b

      %% Repeat 1st movement
      a'8 g8 |
      \sectionmark "Main movement repeat"
      e2 g8 fis8 | d2 e8 d8 | a4 b c | g2. | r4 a b | d c4. g8 |

      %% Bridge
      \sectionmark "Bridge"
      <d f a>2.~\arpeggio | <d f a>4 e' d | <e c a>8\arpeggio g e2~ | e4 a, g |
      <d f a>2.~\arpeggio | <d f a>4 e' d | <e c a>8\arpeggio g e2~ | e4 d c |
    }
  }

  \transpose c ees
  {
    \key a \minor
    \relative c''
    {
      <a c e>2.~\arpeggio | <a c e>4 d c | b a g | a2 e'4 |
      <a, c e>4 \arpeggio d e | a, g' f | e d a | <e gis b>2.\arpeggio

    %% Second bridge
      \sectionmark "2nd bridge"
      \time 4/4
      \tempo 4 = 45
      \tuplet 3/2 4 {c'8 b a b a g a g' f e~ e b} |
      \tuplet 3/2 4 {c8 b a b a g } a4 \tuplet 3/2 {r8 b d} |

      \tuplet 3/2 4 {c8 b a b a g a g' f e~ e g,} |
      \override TextSpanner.bound-details.left.text = "rall."
      a4\startTextSpan b c <g b d>~\arpeggio | <g b d>1\stopTextSpan
    }
  }

  \transpose c f
  {
    \key c \major
    \time 3/4
    \tempo 4 = 67
    \relative c''
    {
      %% 1st movement again
      \sectionmark "Main movement"
      r2 a'8 g8 | e2 g8 fis8 | d2 e8 d8 | a4 b c | g2. | r4 a b | d c4.
      g8 | a4 e' d | c b a'8 g |

      \sectionmark "Variation"
      %% 1st movement repeat but with varied left hand
      e2 g8 fis8 | d2 e8 d8 | a4 b c | g2. | r4 a b | d c4.
      g8 | a4 g f | e a,2 | <d f a>4\arpeggio g f | e d c |
    }
  }

  %% End of main movement
  {
    \key c \major
    \relative c'
    {
      <c e g>2.\arpeggio | r4. g'8 c d | <c d g>8\arpeggio r4 c8 d c | <b d g>2. \arpeggio |
    }
  }

  \sectionmark "End"
  \transpose c f
  {
    \key c \major
    \relative c''
    {
      %% 1st movement again
      r2 a'8 g8 | e2 g8 fis8 | d2 e8 d8 | a4 b c | g2. | r4 a b | d c g | <a f d>2.\arpeggio
    }
  }
}

lower =
{
  \transpose c f
  {
    \key c \major
    \clef treble
    \time 3/4
    \relative c'
    {
      %% 1st movement
      r2. | <a c>4 <a c>2 | <g b>4 <g b>2 | <a c>4 <a c>2 | <g c>4 <g c>2 |
      <a c>4 <a c>2 | <g c>4 <g c>2 | <a c>4 <a c>2 | <b e>4 <b e>2 |
    }
  }

  \relative c' %% Repeat 1st movement
  {
    <d f a>4 <d f a>2 | <a c e g>4 <a c e g>2 | <bes d f a>4 <bes d f a>2 |
    <a c f>4 <a c f>2 | <bes d f>4 <bes d f>2 | <a c f>4 <a c f>2 |
    %% <g bes d f>4 <g bes d f>2 | <a cis e g>4 <a cis e g>2 |
  }

  \transpose c f
  {
    \clef bass
    \relative c'
    {
      %% Bridge
      ais,,8 d a' d f4 | ais,,8 d a' d f4 | a,,8 e' a c e4 | a,,8 e' a c e4 |
      ais,,8 d a' d f4 | ais,,8 d a' d f4 | a,,8 e' a c e4 | a,,8 e' a c e4 |
    }
  }


  \transpose c ees
  {
    \key a \minor
    \relative c,
    {
      f8 c' e f a4 | f,8 c' e f a4 | g,8 b d g b4 | a,8 c e a c4 |
      ais,,8_\markup{\tiny "C#1"}
      eis' ais d eis4 | ais,,8 eis' ais d eis4 | b,8 e b' d fis4 |  <b, e>2.

      %% Second bridge
      \time 4/4
      <a' c>4 <b g> <a f> <g e> | <d f> <g e> <a f> <b g> |
      <a c>4 <b g> <a f> <g e> | <d f> <g e> <a f> <b g>~ | <b g>1
    }
  }

  \relative c'
  {
    \key f \major
    \clef treble
    \time 3/4
    %% 1st movement
    r2. | <d f a>4 <d f a>2 | <a c e g>4 <a c e g>2 | <bes d f a>4 <bes d f a>2 |
    <a c f>4 <a c f>2 | <bes d f>4 <bes d f>2 | <a c f>4 <a c f>2 |
    <g bes d f>4 <g bes d f>2 | <a cis e g>4 <a cis e g>2 |
  }
      % r2. | <a c>4 <a c>2 | <g b>4 <g b>2 | <a c>4 <a c>2 | <g c>4 <g c>2 |
      % <a c>4 <a c>2 | <g c>4 <g c>2 | <a c>4 <a c>2 | <b e>4 <b e>2 |

  %% 1st movement variation
  \transpose c f
  {
    \relative c'
    {
      \clef bass
      c,8 e a c e4 | g,,8 b e g b4 | f,8 a c f a4 | e,8 g c e g4 | d,8 a' d f a4 |
      c,,8 e g c e4 | ais,,8 f' ais8 d f4 | a,,8 e' <a c>2 | ais,8 f' ais8 d f4 |
      a,,8 e' a c e4 |
    }
  }

  {
    \key c \major
    \relative c
    {
      c8 e g c d g, | c g d' r4. | r8 d g r4. | g,2. |
    }
  }

  %% End
  \relative c'
  {
    \key f \major
    \clef treble
    %% 1st movement
    r2. | <d f a>4 <d f a>2 | <a c e g>4 <a c e g>2 | <bes d f a>4 <bes d f a>2 |
    <a c f>4 <a c f>2 | <bes d f>4 <bes d f>2 | <a c f>4 <a c f>2 |
  }
  \transpose c f
  {
    \relative c'
    {
      \clef bass <ais, f' a>2.\arpeggio \bar "|."
    }
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
