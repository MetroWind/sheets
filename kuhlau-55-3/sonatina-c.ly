\version "2.23.2"
\pointAndClickOff

#(use-modules (guile-user))
$(case output-spec
  ((letter)
   (set-global-staff-size 18)
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
  composer = "Friedrich Kuhlau"
  copyright = "Converted & modified by MetroWind from Mississippi College Piano Pedagogy version, with custom fingering"
  title =  "Sonatina in C Major"
  subtitle = "Op. 55 No. 3"
}

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

MvtOneUpper =  \relative e' {
  \mark "Allegro con spirito."
  \repeat volta 2 {
    \clef "treble" \time 4/4 \key c \major
    s8*5 <e-1 c'-5>8 <f d'>8 <g e'>8 | % 1
    <a f'>4.-> <g e'>8 <f d'>4. <fis dis'>8 | % 2
    <g e'>4.-> <f d'>8 <e c'>4. c'8-3 | % 3
    c16-4 b a g fis-2 g-1 a b c-1 d e f g8\mf <c,-2 g'-5>8 | % 4
    <b-1 g'-5>8 <c g'>8 <b g'>8 <c g'>8 <b g'>8 g16-1 [( a16] b16
    c16-1 d16 e16 | % 5
    <d f>4. ) <c e>8 <b d>4. <b d>8 | % 6
    <e g>4. <d-1 f-4>8 <cis-2 e-3>4. <cis e>8 | % 7
    <d-1 f-4>8 a'16 -5 g16 f16 e16 d16 -1 c16 -2 b8 -1 b'16 a16 g16
    f16 e16 d16-3 | % 8
    c8-1 <g-1 b-3>8  <g c>8 <g b>8 <g c>4 r4 | % 9
    \barNumberCheck #10
    c'8 \f b16 a16 g16 f16-1 e16-3 d16
    c16-1 b16-4 a16 g16 f16 e16-3 d16 c16 | % 10
    b8 -2 \p b8 d16 c16 b16 c16 d4 r4 | % 11
    d''8 \f c16 b16 a16 g16 f16 e16 d16 c16 b16 a16 g16 f16 e16
    d16 | % 12
    c8 c8 e16 d16 c16 d16 e4 r8 e'8-4 | % 13
    e8-3 e8-2 e8-1 fis16 gis16 a8-1 c4 ( -> -3 a8 ) | % 14
    b8 -2 e4 ( -> b8 ) c16 d16 c16 b16 a8 c16 b16 | % 15
    a16 g16 -4 fis16 e16 d16 e16 f16 -3 fis16 -4 g8 -1 b4 ( -> g8
    ) |
    %% 17
    a8 d4 ( -> a8 ) b16 c16 b16 a16 g8 b16 -3 a16 |
    %% 18
    g16 -\f fis16 -3 e16 d16 cis16 -2 d16 e16 d16 c16 -2 b16 -1
    a16 -4 g16 fis16 g16 a16 g16 |
    %% 19
    fis16 e16 dis16-2 e16-1 fis16 gis16 a16-1 b16
    c16 b16 a16 gis16 -2 a16 -1 b16 c16 d16 |
    \barNumberCheck #20
    e16 d16 c16 b16 c16 b16 a16 g16
    fis16 g16 a16 b16 c16 d16 e16 fis16 |
    %% 21
    g4 <b, d g>4 <b d g>4 <b, g'>8 -\p <c a'>8 |
    %% 22
    <d b'>2 ~ <d b'>8 <b g'>8 <c a'>8 <d b'>8 |
    %% 23
    <e c'>2 ~ <e c'>8 <c a'>8 <d b'>8 <e c'>8 |
    %% 24
    <f d'>2 ~ <f d'>8 <d b'>8 <e c'>8 <f d'>8 |
    %% 25
    <g e'>2. ~ <g e'>8 r8 } |
  \repeat volta 2 {
    %% 26
    s8*5 <e c'>8 <f d'>8 <g e'>8 |
    %% 27
    <a f'>4. <g e'>8 <f d'>4. <fis dis'>8 |
    %% 28
    <g e'>2 ~ <g e'>8 <gis-2 e'-5>8  <a-1 e'-5>8 <ais-2 e'-5>8 |
    %% 29
    <b-1 e-5>4. <b-1 e-3>8 <dis-2 fis-4>4. <dis fis>8 |
    \barNumberCheck #30
    <e g>2 ~ <e g>8 <b g'>8 <c g'>8 <cis g'>8 |
    %% 31
    <d g>4. <d g>8 <fis a>4. <fis a>8 |
    %% 32
    <g b>2 ~ <g b>8 <g-1 b-2>8 <a-1 c-3>8 <ais-2 cis-4>8 |
    %% 33
    <b-5 d-3>2 ~ <b d>8 <b d>8 <c es>8 <cis e>8 |
    %% 34
    <d f>2 ~ <d f>8 <c e>8 <b d>8 <a-2 c-4>8 |
    %% 35
    <g b>8 -> r8 <f-2 a-4>8 r8 <e g>8 r8 <dis-2 fis-4>8 r8 |
    %% 36
    <d-1 f-3>4 -\! -\p r4 <cis-2 e-4>4 r4 |
    %% 37
    <d f>4 r4 <b d>4 r4 |
    %% 38
    c'8 -\f b16 a16 g16 f16 e16 d16 c16 b16 a16 g16 f16 e16 d16
    c16 |
    %% 39
    b8 -\p b8 d16 c16 b16 c16 d4 r4 | \barNumberCheck #40
    d''8 -\f c16 b16 a16 g16 f16 e16 d16 c16 b16 a16 g16 f16 e16
    d16 |
    %% 41
    c8 -\p c8 e16 d16 c16 d16 e4 r8 e'8 |
    %% 42
    e8 e8 e8 fis16 gis16 a8 c4 ( -> a8 ) |
    %% 43
    b8 e4 ( -> b8 ) c16 d16 c16 b16 a8 c8 |
    %% 44
    c,8 c8 c8 d16 e16 f8 a4 ( f8 ) |
    %% 45
    g8 c4 ( g8 ) a16 bes16 a16 g16 f8 r8 |
    %% 46
    r8 d'4 ( a8 ) b16 c16 b16 a16 g8 r8 |
    %% 47
    r8 g'4 ( d8 ) e16 f16 e16 d16 c8 e16 -3 d16 |
    %% 48
    c16 -\f b16 -3 a16 g16 fis16 -2 g16 a16 g16 f16 -2 e16 -1 d16
    -4 c16 b16 c16 d16 c16 |
    %% 49
    b16 a16 gis16 -2 a16 -1 b16 cis16 d16 -1 e16 f16 e16 d16 cis16
    -2 d16 e16 f16 g16 | \barNumberCheck #50
    a16 g16 f16 e16 f16 e16 d16 c16 -3 b16 c16 -1 d16 e16 f16 -1
    g16 a16 b16 |
    %% 51
    c4 <g-1 d'-4>4 -\sf <g e'>4 -\sf r8 g'16 f16 |
    %% 52
    e16 d16 c16 b16 -2 c16 d16 e16 d16 c16 b16 a16 -1 g16 -3 fis16
    g16 a16 g16 |
    %% 53
    f16 -2 e16 -1 d16 -3 cis16 -2 d16 e16 f16 e16 d16 e16 -4 c16
    d16 b16 -1 c16 -4 a16 b16 |
    %% 54
    g8 r8 r4 r8 <c-2 e-4>8 <d f>8 <b d>8 |
    %% 55
    c8 e16 -1 g16 -2 c16 -4 e16 -5 c16 g16 e16 c'16 -5 g16 -3 e16
    -2 c16 -1 g'16 -5 e16 -4 c16 -2 |
    %% 56
    g8 -1 r8 r4 r8 <c e>8 <d f>8 <b d>8 |
    %% 57
    c8 e16 g16 c16 e16 c16 g16 e16 c'16 g16 e16 c16 g'16 e16 c16 |
    %% 58
    g8 r8 r4 r8 <c e>8 \staccato <d f>8 \staccato <b d>8 \staccato |
    \alternative {
      { c4 <e, g c>4 <e g c>8 r8 s4 }
      { \barNumberCheck #60 c'4 <e, g c>4 <e g c>4 r4 }} \bar "|."
  }
}
MvtTwoUpper =  \relative c' {
  \mark "Allegretto grazioso."
  \clef "treble" \time 2/4 \key c \major |
  %% 1
  s4. fis'16 ( -2 g16 | a8 ) g8 \staccato f8 \staccato e8 \staccato cis4 ( -2 d8 )
  -1 e16 ( f16 g8 ) f8 \staccato e8 \staccato d8 \staccato d16 ( -3 c16 b16 c16 e8 ) c'16 (
  -3 d16 e8 ) d8 \staccato c8 \staccato b8 \staccato \grace { a32 ( b32 ) } c8 \staccato b8 \staccato a8
  \staccato g8 \staccato -3 fis16 -2 g16 a16 fis16 d16 e16 fis16 d16 g8 \staccato -4 -\<
  fis16 ( -2 g16 fis16 g16 fis16 g16 a8 ) -\! g8 \staccato f8 \staccato e8 \staccato cis4 (
  d8 ) e16 ( f16 g8 ) f8 \staccato e8 \staccato d8 \staccato d16 ( c16 b16 c16 e8 ) c'16 -3
  -\mf d16 e16 d16 c16 b16 a16 g16 -4 f16 e16 d16 gis16 a16 g16 f16 e16
  d16 -1 c16 -2 b8 -1 <b g'>8 <b g'>8 <b g'>8 c8 -2 g16 -1 a16 b16 c16
  -1 d16 e16 \repeat volta 2 {
    f8 \staccato -4 -\p g16 ( f16 e8 ) \staccato f16 ( e16 d8 ) \staccato e16 ( d16 c8 )
    \staccato d16 ( -3 c16 b2 ) d16 ( c16 b16 c16 e8 ) -4 bes'16 ( -4 a16 g8
    ) \staccato a16 ( -3 g16 f8 ) \staccato g16 ( -4 f16 e8 ) \staccato f16 ( -3 e16 d8 )
    \staccato e16 ( -4 d16 cis2 ) e16 -4 d16 cis16 d16 f8 -4 a'16 ( -5 g16
    f8 ) r8 r8 f16 ( -4 e16 d8 ) r8 r8 d16 ( c16 b8 ) r8 r8 b16 ( a16
    g8 ) r8 r8 fis16 ( g16 a8 ) g8 \staccato f8 \staccato e8 \staccato cis4 ( d8 ) e16 (
    f16 g8 ) f8 \staccato e8 \staccato d8 \staccato d16 ( c16 b16 c16 e8 ) c'16 \mf d16
    e16 d16 c16 b16 a16 g16 f16 e16 d16 gis16 a16 g16 f16 e16 d16 c16
    b8 <b g'>8 <b g'>8 <b g'>8 }
  \alternative { {c8 g16 a16 b16 c16 d16 e16 }
                 {c8 e8 -3 e8 e8 }}
  f16 -\p e16 dis16 e16 -1 a8 -4 e8 c'4. ( -5 b8 ) \acciaccatura
  { b8 } a8 \staccato gis8 \staccato a8 \staccato c8 \staccato e,4. e8 -3 f16 ( e16 dis16 e16 ) a8
  \staccato a8 \staccato a8 \staccato g4 ( -> f8 ) e8 -1 -\! e8 e16 -3 d16 c16 d16 e4. e8
  f16 ( e16 dis16 e16 ) -1 a8 \staccato -2 c8 \staccato -4 e4. -5 e,8 f16 ( e16 dis16
  e16 ) a8 \staccato c8 \staccato e2 ~ e4. e,8 f16 ( e16 dis16 e16 ) a8 \staccato -4 e8 \staccato
  -1 c'4. ( -5 b8 ) \acciaccatura { b8 } a8 \staccato gis8 \staccato a8 \staccato c8 \staccato e,4.
  e8 -3 f16 ( e16 dis16 e16 ) a8 \staccato c8 \staccato e4. c16 a16 e8 e8 b'8 -3 b16
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
  \acciaccatura { b8 } a8 \staccato gis8 \staccato a8 \staccato c8 \staccato |
  %% 71
  e,4. e8 |
  %% 72
  f16 ( e16 dis16 e16 a8 ) \staccato c8 \staccato |
  %% 73
  e4. c16 a16 |
  %% 74
  e8 e8 b'8 \staccato b16 ( c16 ) |
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
  a8 ) g8 \staccato f8 \staccato e8 \staccato |
  %% 85
  cis4 ( -2 d8 ) -1 e16 ( f16 |
  %% 86
  g8 ) f8 \staccato e8 \staccato d8 \staccato |
  %% 87
  d16 ( c16 b16 c16 e8 ) c'16 ( d16 |
  %% 88
  e8 ) d8 \staccato c8 \staccato b8 \staccato |
  %% 89
  \grace { a32 ( b32 ) } c8 \staccato b8 \staccato a8 \staccato g8 \staccato | \barNumberCheck #90
  fis16 g16 a16 fis16 d16 e16 fis16 d16 |
  %% 91
  g8 fis16 -\< g16 fis16 g16 fis16 g16 |
  %% 92
  a8 \staccato -\! g8 \staccato f8 \staccato e8 \staccato |
  %% 93
  cis4 ( d8 ) e16 ( f16 |
  %% 94
  g8 ) f8 \staccato e8 \staccato d8 \staccato |
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
  f8 \staccato -\p g16 ( f16 e8 ) \staccato f16 ( e16 |
  %% 101
  d8 ) \staccato e16 ( d16 c8 ) \staccato d16 ( c16 |
  %% 102
  b2 ) |
  %% 103
  d16 ( c16 b16 c16 e8 ) bes'16 ( a16 |
  %% 104
  g8 ) \staccato a16 ( g16 f8 ) \staccato g16 ( f16 |
  %% 105
  e8 ) \staccato f16 ( e16 d8 ) \staccato e16 ( d16 |
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
  a8 ) g8 \staccato f8 \staccato e8 \staccato |
  %% 113
  cis4 ( d8 ) e16 ( f16 |
  %% 114
  g8 ) f8 \staccato e8 \staccato d8 \staccato |
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

MvtOneLower =  \relative c' {
  \repeat volta 2 {
    \clef "bass" \time 4/4 \key c \major |
    %% 1
    s8*5 r4.|
    %% 2
    r8 c8 c8 r8 r8 c8 c8 r8 |
    %% 3
    r8 c8 c8 r8 r8 c8 c8 r8 |
    %% 4
    <g-5 d'-2>2 ( <c e>4 ) r8 <c e>8 |
    %% 5
    <g d'>8 <c e>8 <g d'>8 <c e>8 <g d'>4 r4 |
    %% 6
    \clef "treble" r8 g'8 g8 r8 r8 <f g>8 <f g>8 r8 |
    %% 7
    r8 <e g>8 <e g>8 r8 r8 <a, g'>8 <a g'>8 r8 |
    %% 8
    <d f>4 r4 \clef "bass" <g, d' f>2 ( -> |
    %% 9
    <c e>8 ) <g d'>8 <c e>8 <g d'>8 <c e>4 r4 | \barNumberCheck
    #10
    <c, e g>1 ( |
    %% 11
    <d f g>4 ) <c e g>4 <b f' g>4 r4 |
    %% 12
    <b f' g>1 |
    %% 13
    <c e g>4 <b f' g>4 <c e g>4 r4 |
    %% 14
    c'8 -3 e8 <b d>8 e8 <a, c>8 e'8 <a, c>8 e'8 |
    %% 15
    <gis, d'>8 e'8 <gis, d'>8 e'8 <a, c>8 e'8 <a, c>8 e'8 |
    %% 16
    <a, c>8 d8 <a c>8 d8 <g, b>8 d'8 <g, b>8 d'8 |
    %% 17
    <fis, c'>8 d'8 <fis, c'>8 d'8 <g, b>8 d'8 <g, b>8 d'8 |
    %% 18
    <g, b>1 ( |
    %% 19
    c1 ) | \barNumberCheck #20
    r4 <d, a' c>4 <d a' c>4 <d a' c>4 |
    %% 21
    <g b>4 g4 -1 g,4 r4 |
    %% 22
    r8 g8 -5 b8 -4 d8 -2 g4 r4 |
    %% 23
    r8 g,8 -5 c8 -3 e8 -1 g4 r4 |
    %% 24
    r8 g,8 b8 d8 g4 r4 |
    %% 25
    r16 c,16 -5 d16 e16 f16 g16 -1 a16 -3 b16 c8 r8 r4 }
  \repeat volta 2 {
    |
    %% 26
    s8*5 r4. |
    %% 27
    r8 c8 c8 r8 r8 c8 c8 r8 |
    %% 28
    r16 c,16 d16 e16 f16 g16 a16 b16 c8 r8 r4 |
    %% 29
    r8 b,8 b8 r8 r8 b'8 b8 r8 | \barNumberCheck #30
    r16 e,16 -5 fis16 g16 a16 b16 -1 cis16 -3 dis16 -2 e8 r8 r4
    |
    %% 31
    r8 d,8 d8 r8 r8 d'8 d8 r8 |
    %% 32
    r16 g,16 a16 b16 c16 d16 -1 e16 -3 fis16 g8 r8 r4 |
    %% 33
    r16 g,16 a16 b16 c16 d16 e16 fis16 g8 r8 r4 |
    %% 34
    r16 g,16 a16 b16 c16 d16 e16 fis16 g8 g8 g8 g8 |
    %% 35
    g8 r8 g8 r8 g8 r8 g8 r8 |
    %% 36
    g4 r4 g4 r4 |
    %% 37
    g4 r4 g4 r4 |
    %% 38
    <c,, e g>1 |
    %% 39
    <d f g>4 <c e g>4 <b f' g>4 r4 | \barNumberCheck #40
    <b f' g>1 |
    %% 41
    <c e g>4 <b f' g>4 <c e g>4 r4 |
    %% 42
    c'8 e8 <b d>8 e8 <a, c>8 e'8 <a, c>8 e'8 |
    %% 43
    <gis, d'>8 e'8 <gis, d'>8 e'8 <a, c>8 e'8 <a, c>8 e'8 |
    %% 44
    <a,-5 c-3>8 c8 -1 <g-4 bes-2>8 c8 <f, a>8 c'8 <f, a>8 c'8
    |
    %% 45
    <e, bes'>8 c'8 <e, bes'>8 c'8 <f, a>8 c'8 <f, a>8 c'8 |
    %% 46
    <fis, c'>8 d'8 <fis, c'>8 d'8 <g, b>8 d'8 <g, b>8 d'8 |
    %% 47
    \clef "treble" <b f'>8 g'8 <b, f'>8 g'8 <c, e>8 g'8 <c, e>8
    g'8 |
    %% 48
    <e g>1 |
    %% 49
    f1 | \barNumberCheck #50
    r4 <g, d' f>4 <g d' f>4 <g d' f>4 |
    %% 51
    <a c e>4 <b f' g>4 <c e g>4 r4 |
    %% 52
    <e g>1 |
    %% 53
    <f a>2 r2 |
    %% 54
    \clef "bass" r16 g,16 a16 b16 c16 d16 e16 f16 g8 g8 g8 g8 |
    %% 55
    c,4 r4 r2 |
    %% 56
    r16 g16 a16 b16 c16 d16 e16 f16 g8 g8 g8 g8 |
    %% 57
    c,4 r4 r2 |
    %% 58
    r16 g16 a16 b16 c16 d16 e16 f16 g8 g8 \staccato g8 \staccato g8 \staccato |
    \alternative {
      { c,4 c4 c,8 r8 s4 }
      { \barNumberCheck #60 c'4 c4 c,4 r4 }
    } \bar "|."
  }
}
MvtTwoLower =  \relative c {
  \clef "bass" \time 2/4 \key c \major | s4. r8 |
  \clef "treble" r8 <c'-3 e-5>8\staccato <d-4 f-2>8\staccato <e-3 g-1>8 \staccato
  <f-4 a-2>4 ~ <f a>8 r8 \clef "bass" r8 <g, b f'>8 <g b f'>8 <g b f'>8
  <c e>4 r4 r4 r4 \clef "treble" \grace { c'32 ( -3 d32 ) } e8
  \staccato d8 \staccato c8 \staccato b8 \staccato a8 \staccato r8 <d, a' c>4 ( <g b>8 ) r8 r4 r8 <c, e>8
  \staccato <d f>8 \staccato <e g>8 \staccato <f a>4. r8 \clef "bass" r8 <g, b f'>8 <g b f'>8
  <g b f'>8 <c e>4 r4 r8 <c, e>8 \staccato <d f>8 \staccato <e g>8 \staccato <f a>8
  <f a>8 <f a>8 r8 r8 <g d' f>8 <g d' f>8 <g d' f>8 <c e>4 r4
  \repeat volta 2 {
    <g b>8 r8 <g a c>8 r8 <g b d>8 r8 <g c e>8 r8 <g d' f>2 <c e>4 r4
    <a cis>8 r8 <a b d>8 r8 <a cis e>8 r8 <a d f>8 r8 <a e' g>2 <d
                                                                 f>4 r4 r8 <g, b d f>8 <g b d f>8 r8 r8 <g b d f>8 <g b d f>8
    r8 r8 <g b d f>8 <g b d f>8 r8 r8 <g b d f>8 <g b d f>8 r8 \clef
    "treble" r8 <c e>8 <d f>8 <e g>8 <f a>4 ~ -> ~ <f a>8 r8 \clef
    "bass" r8 <g, b f'>8 <g b f'>8 <g b f'>8 <c e>4 r4 r8 <c, e>8 \staccato
    <d f>8 \staccato <e g>8 \staccato <f a>8 <f a>8 <f a>8 r8 r8 <g d' f>8 <g d' f>8 <g d' f>8 }
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
  \clef "treble" r8 <c e>8 \staccato <d f>8 \staccato <e g>8 \staccato |
  %% 85
  <f a>4. r8 |
  %% 86
  \clef "bass" r8 <g, d' f>8 <g d' f>8 <g d' f>8 |
  %% 87
  <c e>4 r4 |
  %% 88
  r4 r4 |
  %% 89
  \clef "treble" \grace { c'32 ( d32 ) } e8 \staccato d8 \staccato c8 \staccato b8 \staccato |
  \barNumberCheck #90
  a8 r8 <d, a' c>4 |
  %% 91
  <g b>8 r8 r4 |
  %% 92
  r8 <c, e>8 \staccato <d f>8 \staccato <e g>8 \staccato |
  %% 93
  <f a>4. r8 |
  %% 94
  \clef "bass" r8 <g, d' f>8 <g d' f>8 <g d' f>8 |
  %% 95
  <c e>4 r4 |
  %% 96
  r8 <c, e>8 \staccato <d f>8 \staccato <e g>8 \staccato |
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
  \clef "treble" r8 <c e>8 \staccato <d f>8 \staccato <e g>8 \staccato |
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
    \new Staff = "upper" \MvtOneUpper
    \accidentalStyle Score.piano-cautionary
    \new Staff = "lower" \MvtOneLower
  >>
}

\score {
  \new PianoStaff
  <<
    \new Staff = "upper" \MvtTwoUpper
    \new Staff = "lower" \MvtTwoLower
  >>
}
