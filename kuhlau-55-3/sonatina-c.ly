\version "2.23.2"
\pointAndClickOff

#(use-modules (guile-user))
$(case output-spec
  ((letter)
   (set-global-staff-size 18)
   (set-default-paper-size "letter")
   #{
   \paper {system-system-spacing =
   #'((basic-distance . 4)
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
  composer = "Friedrich Kuhlau"
  copyright = "Converted & modified by MetroWind from Mississippi College Piano Pedagogy version, with custom fingering"
  title =  "Sonatina in C Major"
  subtitle = "Op. 55 No. 3"
}

st = \staccato
dolce = \markup{\italic "dolce."}
legato = \markup{\italic "legato."}

% PartPOneVoiceOne =  \relative a'' {
%     \repeat volta 2 {
%         \repeat volta 2 {
%             \clef "treble" \time 4/4 \key c \major | % 1
%             r4. - "Allegro con spirito" s8*5 | % 2
%             R1*24 }
%         \repeat volta 2 {
%             | % 26
%             r4. s8*5 | % 27
%             R1*32 }
%         \alternative { {
%                 | % 59
%                 r2 r4 }
%             } s4 }
%     \alternative { {
%             | \barNumberCheck #60
%             R1 }
%         } \bar "|."
%     \time 2/4  r8 - "Allegro Grazioso" s8*15 R2 s2 a32 ( b32 c16 ) \staccato b8
%     \staccato a8 \staccato g8 \staccato s1 s1*2 R2*4 \repeat volta 2 {
%         R2*17 s1 }
%     \alternative { {
%             s2 }
%         {
%             s2 }
%         } s1 b32 ( a16. ) \staccato gis8 \staccato a8 \staccato c8 \staccato R2*81 | % 123
%     r4 \bar "|."
%     }

MvtOneUpper =  \relative e'
{
  %% \set fingeringOrientations = #'(up)
  \mark "Allegro con spirito."
  \repeat volta 2
  {
    \clef "treble" \time 4/4 \key c \major
    s8*5 <e-1 c'-5>8_\dolce \st <f d'>8\st <g e'>8\st | % 1
    <a f'>4.-> <g e'>8 \st <f d'>4. <fis dis'-4>8 \st| % 2
    <g e'>4.-> <f d'>8 \st <e c'>4. c'8-3 \st | % 3
    c16-4 ( b a g fis-2 \cresc g-1 a b c-1 \! d e f g8\mf\st ) <c,-2 g'-5>8\st | % 4
    <b-1 g'-5>8 \st <c g'>8 \st <b g'>8 \st <c g'>8 \st <b g'>8 \st g16-1 [( a16] b16
    c16-1 d16 e16 | % 5
    <d f>4.->_\dolce ) <c e>8 \st <b-1 d-2>4. <b d>8 \st | % 6
    <e g>4.-> <d-1 f-4>8 \st <cis-2 e-3>4. <cis e>8 \st | % 7
    <d-1 f-4>8 \st a'16-5-> ( g16 f16 e16 d16-1 c16-2 b8-1 \st) b'16-> ( a16 g16
    f16 e16 d16-3 | % 8
    c8 ) \st <g-1 b-3>8 \st  <g c>8 \st <g b>8 \st <g c>4 r4 | % 9
    \barNumberCheck #10
    c'8-5 ( \sf b16 a16 g16 f16-1 e16-3 d16
    c16-1 b16-4 a16 g16 f16 e16-3 d16 c16 | % 10
    b8 -2 )\st \p b8 \st d16 c16 b16 c16 d4 \st r4 | % 11
    d''8-4 ( \sf c16 b16 a16 g16-1 f16-3 e16 d16-1 c16-4 b16 a16 g16-1 f16-3 e16
    d16 | % 12
    c8 ) \st c8 \st e16 ( d16 c16 d16 e4 ) \st r8 e'8-4 \st\p | % 13
    e8-3 \st e8-2 \st e8-1 ( fis16 gis16 a8-1 \st ) c4 ( -> -3 a8 | % 14
    b8-2 \st ) e4 ( -> b8 c16 d16 c16 b16 a8 \st ) c16-4 ( b16 | % 15
    a16 g16-1 fis16-3 e16 d16-1 e16 f16-3 fis16-4 g8-5 \st ) b4-3 ( -> g8 | % 16
    %% 17
    a8 \st ) d4 ( -> a8 b16-2 c16 b16 a16 g8 \st ) b16-3 a16 |
    %% 18
    g16-1 \f fis16-3 e16 d16-1 cis16-2 d16 e16 d16 c16-2 b16-1
    a16-4 g16 fis16 g16 a16 g16 |
    %% 19
    fis16-2 ( e16-1 dis16-2 e16-1 fis16 \cresc gis16 a16-1 b16
    c16 b16 a16-1 gis16-2 a16-3 b16-1 c16 d16 |
    \barNumberCheck #20
    e16-4 d16 c16 b16-1 c16-4 b16 a16 g16-1
    fis16-2 g16-1 a16 b16 c16-1 d16 e16 fis16 |
    %% 21
    g4 \st ) <b, d g>4 \st\ff <b d g>4 \st <b,^1 g'^5>8 \p\st <c a'>8 \st |
    %% 22
    <d b'>2 ~ <d b'>8 <b-1 g'-5>8 \st <c a'>8 \st <d b'>8 \st |
    %% 23
    <e c'>2 ~ <e c'>8 \cresc <c-1 a'-5>8 \st <d b'>8 \st <e c'>8 \st \!|
    %% 24
    <f d'>2 -> ~ <f d'>8 <d-1 b'-5>8 \st <e c'>8 \st <f d'>8 \st |
    %% 25
    <g e'>2. \sf ~ <g e'>8 r8 |
  }
  \repeat volta 2
  {
    %% 26
    s8*5 <e-1 c'-5>8 \st _\dolce <f d'>8 \st <g e'>8 \st |
    %% 27
    <a f'>4.-> <g e'>8 \st <f d'>4. <fis dis'-4>8 \st |
    %% 28
    <g e'>2-> ~ <g e'>8 \st <gis-2 e'-5>8  <a-1 e'-5>8 <ais-2 e'-5>8 |
    %% 29
    <b-1 e-4>4.-> <b-1 e-3>8 \st <dis-2 fis-4>4. <dis fis>8 \st |
    \barNumberCheck #30
    <e g>2-> ~ <e g>8 \st <b-1 g'-5>8 \st <c-1 g'-5>8 \st <cis-2 g'-5>8 \st |
    %% 31
    <d-1 g-4>4.-> _\markup{\italic{poco a poco cresc.}} <d-1 g-3>8 \st <fis-2 a-4>4. <fis a>8 \st |
    %% 32
    <g b>2-> ~ <g b>8 \st <g-1 b-2>8 \st <a-1 c-3>8 \st <ais-2 cis-4>8 |
    %% 33
    <b-3 d-5>2-> ~ <b d>8 \st <b-1 d-2>8 \st <c-1 es-3>8 \st <cis e>8 \st |
    %% 34
    <d f>2->\sf ~ <d f>8 \st <c e>8 \st <b d>8 \st <a-2 c-4>8 \st |
    %% 35
    <g b>8\dim \st r8 <f-2 a-4>8 \st r8 <e g>8 \st r8 <dis-2 fis-4>8 \st r8 |
    %% 36
    <d f>4 \p r4 <cis-2 e-4>4 r4 |
    %% 37
    <d-3 f-5>4 r4 <b d>4 r4 |
    %% 38
    c'8 \sf \> ( b16 a16 g16 f16 e16 d16 c16 b16 a16 g16 f16 e16 d16
    c16 |
    %% 39
    b8-2 \p ) \st b8-1 \st d16 ( c16 b16 c16 d4 \st ) r4 |
    \barNumberCheck #40
    d''8 \sf \> ( c16 b16 a16 g16 f16 e16 d16 c16 b16 a16 g16 f16 e16
    d16 |
    %% 41
    c8-2 \p \st ) c8-1 \st e16 ( d16 c16 d16 e4 ) \st r8 e'8-4 \st \p |
    %% 42
    e8-3 \st e8-2 \st e8-1 ( fis16 gis16 a8-4 \st ) c4-3 ( -> a8 |
    %% 43
    b8 \st ) e4 ( -> b8-2 c16 d16 c16 b16 a8 )\st c8-5 -> ( |
    %% 44
    c,8 \st ) c8-2 \st c8-1 ( d16 e16 f8-4 \st ) a4-3-> ( f8 |
    %% 45
    g8 \st ) c4 -> ( g8-2 a16 bes16 a16 g16 f8 \st ) r8 |
    %% 46
    r8 d'4 -> ( a8 b16 c16 b16 a16 g8 \st ) r8 |
    %% 47
    r8 g'4 -> ( d8 e16-4 f16 e16 d16 c8 \st ) e16-3-> ( d16 |
    %% 48
    c16-1 \f b16-3 a16 g16-1 fis16-2 g16 a16 g16 f16 e16-1 d16-4 c16 b16 c16 d16 c16 |
    %% 49
    b16-2 a16-1 gis16-2 a16-1 b16 \cresc cis16 d16-1 e16 f16-3-> e16 d16-1 cis16-2
    d16-3 e16-1 f16 g16 |
    \barNumberCheck #50
    a16-> g16 f16 e16-1 f16-4-> e16 d16 c16-1 b16-2 c16-1 d16 e16 f16-1 g16 a16 b16 |
    %% 51
    c4-5 \ff \st ) <g-1 d'-4>4 \st \sf <g e'>4 \st \sf r8 g'16-5-> ( f16 |
    %% 52
    e16 \f d16 c16-1 b16-2 c16-1 d16 e16 d16 c16-1 b16-3 a16 g16-1 fis16-2 g16 a16 g16 |
    %% 53
    f16 e16 d16-3 cis16-2 d16-1 e16 f16 e16 d16-1 e16-4 c16
    d16 b16-1 c16-4 a16 b16 |
    %% 54
    g8 \st ) r8 r4 r8 <c-2 e-4>8 \st <d f>8 \st <b d>8 \st |
    %% 55
    c8 \st e16-1 ( g16-2 c16-4 e16-5 c16-4 g16-2 e16-1 c'16-5 g16-3 e16-2
    c16 -1 g'16 -5 e16 -4 c16 -2 |
    %% 56
    g8 \st ) r8 r4 r8 <c-2 e-4>8 \st <d f>8 \st <b d>8 \st |
    %% 57
    c8 e16-1 ( g16-2 c16-4 e16-5 c16-4 g16-2 e16-1 c'16-5 g16-3 e16-2 c16-1 g'16-5 e16-4 c16-2 |
    %% 58
    g8 \st ) r8 r4 r8 <c-2 e-4>8 \st <d f>8 \st <b d>8 \st |
    }
    \alternative {
      { c4 \st <e, g c>4 \st <e g c>8 \st s8 s4 }
      { \barNumberCheck #60 c'4 \st <e, g c>4 \st <e g c>4 \st r4 }} \bar "|."
}
MvtTwoUpper =  \relative c'
{
  %% \set fingeringOrientations = #'(up)
  \mark "Allegretto grazioso."
  \clef "treble" \time 2/4 \key c \major |
  %% 1
  s4. fis'16 ( -2 g16 | a8 ) g8 \st f8 \st e8 \st cis4 ( -2 d8 )
  -1 e16 ( f16 g8 ) f8 \st e8 \st d8 \st d16 ( -3 c16 b16 c16 e8 ) c'16 (
  -3 d16 e8 ) d8 \st c8 \st b8 \st \grace { a32 ( b32 ) } c8 \st b8 \st a8
  \st g8 \st -3 fis16 -2 g16 a16 fis16 d16 e16 fis16 d16 g8 \st -4 -\<
  fis16 ( -2 g16 fis16 g16 fis16 g16 a8 ) -\! g8 \st f8 \st e8 \st cis4 (
  d8 ) e16 ( f16 g8 ) f8 \st e8 \st d8 \st d16 ( c16 b16 c16 e8 ) c'16 -3
  -\mf d16 e16 d16 c16 b16 a16 g16 -4 f16 e16 d16 gis16 a16 g16 f16 e16
  d16 -1 c16 -2 b8 -1 <b g'>8 <b g'>8 <b g'>8 c8 -2 g16 -1 a16 b16 c16
  -1 d16 e16 \repeat volta 2 {
    f8 \st -4 -\p g16 ( f16 e8 ) \st f16 ( e16 d8 ) \st e16 ( d16 c8 )
    \st d16 ( -3 c16 b2 ) d16 ( c16 b16 c16 e8 ) -4 bes'16 ( -4 a16 g8
    ) \st a16 ( -3 g16 f8 ) \st g16 ( -4 f16 e8 ) \st f16 ( -3 e16 d8 )
    \st e16 ( -4 d16 cis2 ) e16 -4 d16 cis16 d16 f8 -4 a'16 ( -5 g16
    f8 ) r8 r8 f16 ( -4 e16 d8 ) r8 r8 d16 ( c16 b8 ) r8 r8 b16 ( a16
    g8 ) r8 r8 fis16 ( g16 a8 ) g8 \st f8 \st e8 \st cis4 ( d8 ) e16 (
    f16 g8 ) f8 \st e8 \st d8 \st d16 ( c16 b16 c16 e8 ) c'16 \mf d16
    e16 d16 c16 b16 a16 g16 f16 e16 d16 gis16 a16 g16 f16 e16 d16 c16
    b8 <b g'>8 <b g'>8 <b g'>8 }
  \alternative { {c8 g16 a16 b16 c16 d16 e16 }
                 {c8 e8 -3 e8 e8 }}
  f16 -\p e16 dis16 e16 -1 a8 -4 e8 c'4. ( -5 b8 ) \acciaccatura
  { b8 } a8 \st gis8 \st a8 \st c8 \st e,4. e8 -3 f16 ( e16 dis16 e16 ) a8
  \st a8 \st a8 \st g4 ( -> f8 ) e8 -1 -\! e8 e16 -3 d16 c16 d16 e4. e8
  f16 ( e16 dis16 e16 ) -1 a8 \st -2 c8 \st -4 e4. -5 e,8 f16 ( e16 dis16
  e16 ) a8 \st c8 \st e2 ~ e4. e,8 f16 ( e16 dis16 e16 ) a8 \st -4 e8 \st
  -1 c'4. ( -5 b8 ) \acciaccatura { b8 } a8 \st gis8 \st a8 \st c8 \st e,4.
  e8 -3 f16 ( e16 dis16 e16 ) a8 \st c8 \st e4. c16 a16 e8 e8 b'8 -3 b16
  ( c16 ) a8 a16 c16 b16 -\mf a16 g16 f16 -3 e8 <d-2 e-3>8 <d e>8 <d
                                                                   e>8 |
  %% 61
  <c-1 e-3>8 a16 -2 c16 b16 a16 g16 f16 |
  %% 62
  e8 -2 <d-2 e-3>8 <d e>8 <d e>8 |
  %% 63
  <c e>8 a16 -1 b16 c16 -\markup{ \small\italic {cresc.} } d16 -1 e16
  fis16 |
  %% 64
  gis16 a16 -1 b16 c16 d16 -1 e16 fis16 gis16 |
  %% 65
  a16 e16 -1 fis16 gis16 a16 -1 b16 c16 a16 |
  %% 66
  e'2 ~ -5 -\f -> |
  %% 67
  e4. -\! e,8 -\p |
  %% 68
  f16 ( -4 e16 dis16 e16 a8 ) e8 |
  %% 69
  c'4. ( b8 ) | \barNumberCheck #70
  \acciaccatura { b8 } a8 \st gis8 \st a8 \st c8 \st |
  %% 71
  e,4. e8 |
  %% 72
  f16 ( e16 dis16 e16 a8 ) \st c8 \st |
  %% 73
  e4. c16 a16 |
  %% 74
  e8 e8 b'8 \st b16 ( c16 ) |
  %% 75
  a8 a16 ( -\mf c16 ) b16 a16 g16 f16 |
  %% 76
  e8 <d e>8 <d e>8 <d e>8 |
  %% 77
  <c es>8 c'16 -2 e16 -4 d16 c16 b16 a16 -3 |
  %% 78
  g8 -2 <f-2 g-3>8 <f g>8 <f g>8 |
  %% 79
  <e-1 g-3>8 e'16 -3 g16 -5 f16 e16 d16 c16 | \barNumberCheck #80
  b16 -4 -\f a16 g16 f16 e16 -3 d16 c16 b16 -2 |
  %% 81
  c16 -3 e16 -5 d16 c16 b16 -\markup{ \small\italic {dim.} } a16 g16
  -3 fis16 -2 |
  %% 82
  g8 -3 g16 -1 a16 b8 b16 -1 c16 |
  %% 83
  d8 d16 -1 e16 f8 fis16 ( -2 g16 |
  %% 84
  a8 ) g8 \st f8 \st e8 \st |
  %% 85
  cis4 ( -2 d8 ) -1 e16 ( f16 |
  %% 86
  g8 ) f8 \st e8 \st d8 \st |
  %% 87
  d16 ( c16 b16 c16 e8 ) c'16 ( d16 |
  %% 88
  e8 ) d8 \st c8 \st b8 \st |
  %% 89
  \grace { a32 ( b32 ) } c8 \st b8 \st a8 \st g8 \st | \barNumberCheck #90
  fis16 g16 a16 fis16 d16 e16 fis16 d16 |
  %% 91
  g8 fis16 -\< g16 fis16 g16 fis16 g16 |
  %% 92
  a8 \st -\! g8 \st f8 \st e8 \st |
  %% 93
  cis4 ( d8 ) e16 ( f16 |
  %% 94
  g8 ) f8 \st e8 \st d8 \st |
  %% 95
  d16 ( c16 b16 c16 e8 ) c'16 -\mf d16 |
  %% 96
  e16 d16 c16 b16 a16 g16 f16 e16 |
  %% 97
  d16 gis16 a16 g16 f16 e16 d16 c16 |
  %% 98
  b8 <b g'>8 <b g'>8 <b g'>8 |
  %% 99
  c8 g16 a16 b16 c16 d16 e16 | \barNumberCheck #100
  f8 \st -\p g16 ( f16 e8 ) \st f16 ( e16 |
  %% 101
  d8 ) \st e16 ( d16 c8 ) \st d16 ( c16 |
  %% 102
  b2 ) |
  %% 103
  d16 ( c16 b16 c16 e8 ) bes'16 ( a16 |
  %% 104
  g8 ) \st a16 ( g16 f8 ) \st g16 ( f16 |
  %% 105
  e8 ) \st f16 ( e16 d8 ) \st e16 ( d16 |
  %% 106
  cis2 ) |
  %% 107
  e16 d16 cis16 d16 f8 a'16 ( g16 |
  %% 108
  f8 ) r8 r8 f16 ( e16 |
  %% 109
  d8 ) r8 r8 d16 ( c16 | \barNumberCheck #110
  b8 ) r8 r8 b16 ( a16 |
  %% 111
  g8 ) r8 r8 fis16 ( g16 |
  %% 112
  a8 ) g8 \st f8 \st e8 \st |
  %% 113
  cis4 ( d8 ) e16 ( f16 |
  %% 114
  g8 ) f8 \st e8 \st d8 \st |
  %% 115
  d16 c16 b16 c16 e8 c'16 -\mf d16 |
  %% 116
  e16 d16 c16 b16 a16 g16 f16 e16 |
  %% 117
  d16 gis16 a16 g16 f16 e16 d16 c16 |
  %% 118
  b8 <b g'>8 <b g'>8 <b g'>8 |
  %% 119
  c8 c16 e16 d16 c16 b16 a16 | \barNumberCheck #120
  g8 <f g>8 <f g>8 <f g>8 |
  %% 121
  <e g>8 g16 -1 a16 b16 -\f c16 -1 d16 e16 |
  %% 122
  f16 cis16 -2 d16 -1 e16 f16 g16 -1 a16 b16 |
  %% 123
  c8 r8 \bar "|."
}

MvtOneLower =  \relative c'
{
  %% \set fingeringOrientations = #'(down)
  \repeat volta 2 {
    \clef "bass" \time 4/4 \key c \major |
    %% 1
    s8*5 r4.|
    %% 2
    r8 c8-1 \st c8-2 \st r8 r8 c8-1 \st c8-2 \st r8 |
    %% 3
    r8 c8-1 \st c8-2 \st r8 r8 c8-1 \st c8-2 \st r8 |
    %% 4
    <g_5 d'_2>2 -> ( <c_3 e_1>4. ) <c-3 e-1>8 |
    %% 5
    <g d'>8 \st <c e>8 \st <g d'>8 \st <c e>8 \st <g d'>4 \st r4 |
    %% 6
    \clef "treble" r8 g'8-1 \st g8-2 \st r8 r8 <f-2 g-1>8 \st <f g>8 \st r8 |
    %% 7
    r8 <e g>8 \st <e g>8 \st r8 r8 <a, g'>8 \st <a g'>8 \st r8 |
    %% 8
    <d-3 f-1>4 r4 \clef "bass" <g, d' f>2 ( -> |
    %% 9
    <c-3 e-1>8 \st ) <g-5 d'-2>8 \st <c-3 e-1>8 \st <g d'>8 \st <c e>4 r4 | \barNumberCheck
    #10
    <c, e g>1 \f\>_( |
    %% 11
    <d_4 f g>4 ) \!\st <c_5 e g>4 \st <b f' g>4 \st r4 |
    %% 12
    <b f' g>1 \f\>_( |
    %% 13
    <c_4 e g>4 )\! \st <b f' g>4 \st <c_4 e g>4 \st r4 |
    %% 14
    c'8 -3 \pp ( e8 <b d>8 e8 <a, c>8 e'8 <a, c>8 e'8 )( |
    %% 15
    <gis, d'>8 )_\legato e'8 <gis, d'>8 e'8 <a,_4 c>8 e'8 <a, c>8 e'8 ( |
    %% 16
    <a, c>8 ) d8 <a c>8 d8 <g, b>8 d'8 <g, b>8 d'8 ( |
    %% 17
    <fis, c'>8 )( d'8 <fis, c'>8 d'8 <g,_5 b>8 d'8 <g, b>8 d'8 \st ) |
    %% 18
    <g,-4 b-2>1 \sf ( |
    %% 19
    c1 ) | \barNumberCheck #20
    r4 <d, a' c>4 \st <d a' c>4 \st <d a' c>4 \st |
    %% 21
    <g b>4 \st g4 \st g,4 \st r4 |
    %% 22
    r8 g8-5 \st b8-4 \st d8-2 \st g4 r4 |
    %% 23
    r8 g,8-5 \st c8-3 \st e8-2 \st g4 r4 |
    %% 24
    r8 g,8-5 \st b8-4 \st d8-2 \st g4 r4 |
    %% 25
    r16 c,16-5 \f ( \< d16 e16 f16 g16-1 a16-3 b16 c8 )\! r8 r4 }
  \repeat volta 2 {
    |
    %% 26
    s8*5 r4. |
    %% 27
    r8 c8-1 \st c8-2 \st r8 r8 c8-1\st c8-2\st r8 |
    %% 28
    r16 c,16 \<( d16 e16 f16 g16-1 a16-3 b16 c8\st\! ) r8 r4 |
    %% 29
    r8 b,8-5 \st b8-4 \st r8 r8 b'8-1 \st b8-2 \st r8 | \barNumberCheck #30
    r16 e,16-4 \< ( fis16 g16 a16-1 b16-4 cis16 dis16 e8 \! )\st r8 r4
    |
    %% 31
    r8 d,8-5\st d8-4\st r8 r8 d'8-1 \st d8-2 \st r8 |
    %% 32
    r16 g,16-5 \<( a16 b16 c16 d16-1 e16-3 fis16 g8 \st) \! r8 r4 |
    %% 33
    r16 g,16-5 \< ( a16 b16 c16 d16-1 e16-3 fis16 g8 \st) \! r8 r4 |
    %% 34
    r16 g,16-5 \f\<( a16 b16 c16 d16-1 e16-3 fis16 \! g8-1\st ) g8-2 \st g8-1 \st g8-2 \st |
    %% 35
    g8-1 \st r8 g8-2 \st r8 g8-1 \st r8 g8-2 \st r8 |
    %% 36
    g4-1 r4 g4-2 r4 |
    %% 37
    g4-1 r4 g4-2 r4 |
    %% 38
    <c,, e g>1_( \f |
    %% 39
    <d_4 f g>4 \st ) <c_5 e g>4 \st <b f' g>4 \st r4 |
    \barNumberCheck #40
    <b f' g>1_( \f |
    %% 41
    <c_4 e g>4 \st ) <b f' g>4 \st <c_4 e g>4 \st r4 |
    %% 42
    c'8-3 ( \pp e8 <b d>8 e8 <a, c>8 e'8 <a, c>8 e'8 ) ( |
    %% 43
    <gis,_5 d'>8 ) ( e'8 <gis, d'>8 e'8 <a,_4 c>8 e'8 <a, c>8 e'8-3 )( |
    %% 44
    <a,-5 c-3>8 \st ) c8-1 ( <g-4 bes-2>8 c8 <f, a>8 c'8 <f, a>8 c'8 ) ( |
    %% 45
    <e, bes'>8 )( c'8 <e, bes'>8 c'8 <f,_5 a>8 c'8 <f, a>8 c'8 \st )( |
    %% 46
    <fis,-5 c'-2>8 ) d'8 <fis, c'>8 d'8 <g,_5 b>8 d'8 <g, b>8 d'8 ( |
    %% 47
    \clef "treble" <b-5 f'-2>8 ) ( g'8 <b, f'>8 g'8 <c, e>8 g'8 <c, e>8
    g'8 \st ) |
    %% 48
    <e-4 g-2>1 \sf ( |
    %% 49
    f1 ) | \barNumberCheck #50
    r4 <g, d' f>4 \st <g d' f>4 \st <g d' f>4 \st |
    %% 51
    <a_5 c e>4 \st <b_5 f' g>4 \st <c_5 e g>4 \st r4 |
    %% 52
    <e-4 g-2>1 \sf ( |
    %% 53
    <f a>2 ) r2 |
    %% 54
    \clef "bass" r16 g,16-5\< ( a16 b16 c16 d16-1 e16-3 f16 \! g8-1 \st ) g8-2 \st g8-1 \st g8-2 \st|
    %% 55
    c,4 r4 r2 |
    %% 56
    r16 g16-5 \< ( a16 b16 c16 d16-1 e16-3 f16 \! g8 \st ) g8-1 \st g8-2 \st g8-1 \st |
    %% 57
    c,4 r4 r2 |
    %% 58
    r16 g16-5 \< ( a16 b16 c16 d16-1 e16-3 f16 \! g8-1 \st ) g8-2 \st g8-1 \st g8-2 \st |
    }
    \alternative {
      { c,4-5 \st c4-1 \st c,8 \st s8 s4 }
      { \barNumberCheck #60 c'4-5 \st c4-1 \st c,4 \st r4 }
    } \bar "|."
}
MvtTwoLower =  \relative c
{
  %% \set fingeringOrientations = #'(down)
  \clef "bass" \time 2/4 \key c \major | s4. r8 |
  \clef "treble" r8 <c'-3 e-5>8\st <d-4 f-2>8\st <e-3 g-1>8 \st
  <f-4 a-2>4 ~ <f a>8 r8 \clef "bass" r8 <g, b f'>8 <g b f'>8 <g b f'>8
  <c e>4 r4 r4 r4 \clef "treble" \grace { c'32 ( -3 d32 ) } e8
  \st d8 \st c8 \st b8 \st a8 \st r8 <d, a' c>4 ( <g b>8 ) r8 r4 r8 <c, e>8
  \st <d f>8 \st <e g>8 \st <f a>4. r8 \clef "bass" r8 <g, b f'>8 <g b f'>8
  <g b f'>8 <c e>4 r4 r8 <c, e>8 \st <d f>8 \st <e g>8 \st <f a>8
  <f a>8 <f a>8 r8 r8 <g d' f>8 <g d' f>8 <g d' f>8 <c e>4 r4
  \repeat volta 2 {
    <g b>8 r8 <g a c>8 r8 <g b d>8 r8 <g c e>8 r8 <g d' f>2 <c e>4 r4
    <a cis>8 r8 <a b d>8 r8 <a cis e>8 r8 <a d f>8 r8 <a e' g>2 <d
                                                                 f>4 r4 r8 <g, b d f>8 <g b d f>8 r8 r8 <g b d f>8 <g b d f>8
    r8 r8 <g b d f>8 <g b d f>8 r8 r8 <g b d f>8 <g b d f>8 r8 \clef
    "treble" r8 <c e>8 <d f>8 <e g>8 <f a>4 ~ -> ~ <f a>8 r8 \clef
    "bass" r8 <g, b f'>8 <g b f'>8 <g b f'>8 <c e>4 r4 r8 <c, e>8 \st
    <d f>8 \st <e g>8 \st <f a>8 <f a>8 <f a>8 r8 r8 <g d' f>8 <g d' f>8 <g d' f>8 }
  \alternative { {
    <c e>4 r4 }
                 {
                   <c e>4 r4 }
               }
  <a c>8 e'8 <a, c>8 e'8 <a, c>8 e'8 <a, c>8 e'8 <a, c>8 e'8 <a,c>8
  e'8 <a, c>8 e'8 <a, c>8 e'8 <a, c>8 e'8 <a, c>8 e'8
  \clef "treble" <b d>8 g'8 <b, d>8 g'8 c,8 -5 g'8 -1 f8 -4 a8 -2 <e gis b>2
  ~ <e gis b>4 <a c>4 <e gis b>2 ~ <e gis b>4 <a c>4 <e gis b>2 ~
  ~ <e gis b>4. r8 \clef "bass" <a, c>8 e'8 <a, c>8 e'8 <a, c>8 e'8
  <a, c>8 e'8 <a, c>8 e'8 <a, c>8 e'8 <a, c>8 e'8 <gis, d'>8 e'8 <a, c>8
  e'8 <a, c>8 e'8 \clef "treble" <a, c>8 e'8 <c-5 e-3>8 a'8
  <e-4 a-2>8 c'8 <e,-5 gis-3>8 d'8 <a-4 c-2>8 r8 r4 r8 gis16 -3 a16
  b16 e,16 fis16 gis16 |
  %% 61
  a8 r8 r4 |
  %% 62
  \clef "bass" r8 gis,16 -3 a16 b16 e,16 fis16 gis16 |
  %% 63
  a8 r8 r4 |
  %% 64
  r4 r4 |
  %% 65
  r8 <a c>8 <a c>8 <a c>8 |
  %% 66
  <e a c>2 ( |
  %% 67
  <e gis b>4. ) r8 |
  %% 68
  <a c>8 e'8 <a, c>8 e'8 |
  %% 69
  <a, c>8 e'8 <a, c>8 e'8 | \barNumberCheck #70
  <a, c>8 e'8 <a, c>8 e'8 |
  %% 71
  <a, c>8 e'8 <gis, d'>8 e'8 |
  %% 72
  <a, c>8 e'8 <a, c>8 e'8 |
  %% 73
  \clef "treble" <a, c>8 e'8 <c e>8 a'8 |
  %% 74
  <e a>8 c'8 <e, gis>8 d'8 |
  %% 75
  <a c>8 r8 r4 |
  %% 76
  r8 gis16 a16 b16 e,16 fis16 gis16 |
  %% 77
  a8 r8 r4 |
  %% 78
  r8 b16 c16 d16 g,16 a16 b16 |
  %% 79
  c8 r8 r4 | \barNumberCheck #80
  \clef "bass" <g, d' f>2 ( |
  %% 81
  <g c e>2 ) ( |
  %% 82
  <g b d>8 ) r8 <g b d>8 r8 |
  %% 83
  <g b d>8 r8 r4 |
  %% 84
  \clef "treble" r8 <c e>8 \st <d f>8 \st <e g>8 \st |
  %% 85
  <f a>4. r8 |
  %% 86
  \clef "bass" r8 <g, d' f>8 <g d' f>8 <g d' f>8 |
  %% 87
  <c e>4 r4 |
  %% 88
  r4 r4 |
  %% 89
  \clef "treble" \grace { c'32 ( d32 ) } e8 \st d8 \st c8 \st b8 \st |
  \barNumberCheck #90
  a8 r8 <d, a' c>4 |
  %% 91
  <g b>8 r8 r4 |
  %% 92
  r8 <c, e>8 \st <d f>8 \st <e g>8 \st |
  %% 93
  <f a>4. r8 |
  %% 94
  \clef "bass" r8 <g, d' f>8 <g d' f>8 <g d' f>8 |
  %% 95
  <c e>4 r4 |
  %% 96
  r8 <c, e>8 \st <d f>8 \st <e g>8 \st |
  %% 97
  <f a>8 <f a>8 <f a>8 r8 |
  %% 98
  r8 <g d' f>8 <g d' f>8 <g d' f>8 |
  %% 99
  <c e>4 r4 | \barNumberCheck #100
  <g b>8 r8 <g a c>8 r8 |
  %% 101
  <g b d>8 r8 <g c e>8 r8 |
  %% 102
  <g d' f>2 |
  %% 103
  <c e>4 r4 |
  %% 104
  <a cis>8 r8 <a b d>8 r8 |
  %% 105
  <a cis e>8 r8 <a d f>8 r8 |
  %% 106
  <a e' g>2 |
  %% 107
  <d f>4 r4 |
  %% 108
  r8 <g, b d f>8 <g b d f>8 r8 |
  %% 109
  r8 <g b d f>8 <g b d f>8 r8 | \barNumberCheck #110
  r8 <g b d f>8 <g b d f>8 r8 |
  %% 111
  r8 <g b d f>8 <g b d f>8 r8 |
  %% 112
  \clef "treble" r8 <c e>8 \st <d f>8 \st <e g>8 \st |
  %% 113
  <f a>4 ~ <f a>8 r8 |
  %% 114
  \clef "bass" r8 <g, b f'>8 <g b f'>8 <g b f'>8 |
  %% 115
  <c e>4 r4 |
  %% 116
  r8 <c, e>8 <d f>8 <e g>8 |
  %% 117
  <f a>8 <f a>8 <f a>8 r8 |
  %% 118
  r8 <g b f'>8 <g b f'>8 <g b f'>8 |
  %% 119
  <c e>4 r4 | \barNumberCheck #120
  r8 b,16 c16 d16 g,16 a16 b16 |
  %% 121
  c8 r8 r4 |
  %% 122
  r8 <g' b f'>8 <g b f'>8 <g b f'>8 |
  %% 123
  <c e>8 r8 \bar "|."
}

%% The score definition
\score {
  \new PianoStaff \with { instrumentName = "Piano" }
  <<
    \accidentalStyle Score.piano-cautionary
    \new Staff = "upper" \MvtOneUpper
    \new Staff = "lower" \MvtOneLower
  >>
  \layout {
    \context {
      \Score
      % \override Fingering.staff-padding = #'()
      % \override Fingering.add-stem-support = ##f
    }
  }

}

\score {
  \new PianoStaff
  <<
    \new Staff = "upper" \MvtTwoUpper
    \new Staff = "lower" \MvtTwoLower
  >>
}
