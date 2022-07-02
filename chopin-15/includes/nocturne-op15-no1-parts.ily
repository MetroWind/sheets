%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.22.1"
\language "english"

\include "global-variables.ily"
\include "articulate.ly"

voiceSix = #(context-spec-music (make-voice-props-set 5) 'Voice)

global = {
  \time 3/4
  \key f \major
  \accidentalStyle piano
}

rightHandUpper = \relative {
  \oneVoice
  \partial 4 c''4(
  f2 e4 |
  d4 e c) |
  d8.( e16 f4 g |
  a2.) |
  g4( a8. g16 \scaleDurations 2/3 { g8 f e } |
  f4. e8 \scaleDurations 2/3 { d8 e f) } |
  e2( \scaleDurations 2/3 { e8 d a } |
  b2) \scaleDurations 2/3 { c8_\p^\dolciss( d8. c16 } |
  
  \barNumberCheck 9
  \omit TupletBracket
  \grace { c8 } f2) \scaleDurations 2/3 { 
    \tuplet 3/2 { e16([^\delicatiss f e } g8)] r }
  \scaleDurations 2/3 { \tuplet 3/2 { d16([ e d } f8)] r } e4->( c) |
  d8.( e16 f4 g |
  a2.) |
  bf2( a4 |
  \strictGraceOn 
  g4\< \grace { a8 g f g } a4 f)\! |
  \strictGraceOff
  \grace { a,8^( } c4 f e |
  g2.) |
  
  \barNumberCheck 17
  bf2( a4 |
  \strictGraceOn
  g4 \grace { \columnShiftAOn a8 g \columnShiftOff \accidentalShiftA fs g } 
    a4 f |
  \strictGraceOff
  c4) g'~( g8. f16 |
  f4) d'2*1/2->( \omit TupletNumber \magnifyMusic 0.63 { 
    \tuplet 8/2 { \stemUp \textUnderSlur \moveTextA e,8^\dolcissSmall 
                  f e d e g f d } } |
  \stemNeutral c4) g'~( g8. f16 |
  f2 e4 |
  d4 e c |
  d4 e) r\fermata | \bar "||" 
  
  \barNumberCheck 25
  \key f \minor
  \tag midi { \tempo 4 = 84 }
  \scaleDurations 2/3 {
    <af,, f'>16^(^\conFuocoTempo <c af'> 
      \repeat unfold 8 { <af f'>16 <c af'> } |
    \repeat unfold 8 { <bf f'>16 <df af'> } <bf f'>16 <df af'>) |
    <bf g'>16^( <f' bf> \repeat unfold 8 { <bf, g'> <f' bf> } |
    \repeat unfold 6 { <bf, gf'>16 <ef bf'> } <a, gf'> <ef' a> 
      <a, gf'> <ef' a> <a, gf'> <ef' a>) |
    <f c'>16( <a f'> <f c'> <a f'> <f c'> <a f'> 
      <f df'> <bf f'> <f df'> <bf f'> <f df'> <bf f'> 
      <f df'> <cf' f> <f, df'> <cf' f> <f, df'> <cf' f> |
    <f, df'>16 <cf' f> <f, df'> <cf' f> <f, df'> <cf' f>
      <gf df'>\< <cf gf'> <gf df'> <cf gf'> <gf df'> <cf gf'>
      <af df> <cf af'> <af df> <cf af'> <af df> <cf af'>\! |
  }
  \voiceOne
  af'8. bf16 gf4 f |
  ef4 f2) |
  
  \barNumberCheck 33
  af8.->( -\moveFzA ^\fzm bf16 gf4 f |
  ef4 f2 |
  g8.^\aTempo af16 \scaleDurations 2/3 { f8) s \voiceTwo \hideNotes ef^( } s4 |
  \unHideNotes
  \time 6/8
  \voiceOne
  af,8 g f g^\dimm f e) |
  \time 3/4
  \scaleDurations 2/3 {
    \oneVoice
    <af, f'>16^(^\conFuoco <c af'> \repeat unfold 8 { <af f'>16 <c af'> } |
    \repeat unfold 8 { <bf f'>16 <df af'> } <bf f'>16 <df af'>) |
    <bf g'>16^( <f' bf> \repeat unfold 8 { <bf, g'> <f' bf> } |
    \repeat unfold 6 { <bf, gf'>16 <ef bf'> } <a, gf'> <ef' a> 
      <a, gf'> <ef' a> <a, gf'> <ef' a>) |
      
    \barNumberCheck 41
    <c af'>16^( <gf' c> <c, af'> <gf' c> <c, af'> <gf' c>
      <df af'> <gf df'> <df af'> <gf df'> <df af'> <gf df'>
      <ef af> <gf ef'> <ef af> <gf ef'> <ef af> <gf ef'> |
    \repeat unfold 8 { <ef af> <gf ef'> } <ef af> <gf ef'>) |
    r16 <af d>^( <d, bf'> <af' d> <d, bf'> <af' d>
      <ef bf'> <af ef'> <ef bf'> <af ef'> <ef bf'> <af ef'>
      \stemUp
      <f bf> <af f'> <f bf> <af f'> <f bf> <af f'> |
    \repeat unfold 8 { <f bf> <af f'> } <f bf> <af f'>) |
  }  
  \voiceOne
  f'8.->( gf16 ef4) f8.->( gf16 |
  ef4) ef8.( f16 df4~ |
  df4) c8.( df16 bf4~ |
  \time 6/8
  bf4. a4 g8) |
  
  \barNumberCheck 49
  \key f \major
  \time 3/4 
  \oneVoice
  \stemNeutral
  \tempo "a Tempo primo" 4 = 69
  \appoggiatura { \slurUp c,8*1/64[ f a] } f'2( e4 |
  d4 e c) |
  d8.( e16 f4 g |
  a2.) |
  g4( a8. g16 \scaleDurations 2/3 { g8 f e } |
  f4. e8 \undo \omit TupletNumber \tuplet 7/4 { d16 e d cs d e f } |
  e4.) e8->~-\slurShapeB ( \scaleDurations 2/3 { e8 d a } |
  b2 \scaleDurations 2/3 { c8~[^\dolciss \scaleDurations 2/3 { 
    c16 b c \acciaccatura { \slurUp c8 } e16 d c)] } } \slurNeutral |
  
  \barNumberCheck 57
  f2( \scaleDurations 2/3 { \scaleDurations 2/3 { e16[ f e } g8)] r } |
  \scaleDurations 2/3 { \scaleDurations 2/3 { d16([ e d } f8)] r } e4( c) |
  d8.( e16 f4 g |
  a2.) |
  bf2( a4 |
  \strictGraceOn 
  g4-\moveHairpinA _\< \grace { a8 g f g } a4\! f) |
  \strictGraceOff
  \grace { a,8^( } c4 f e |
  g2.) |
  
  \barNumberCheck 65
  bf2( a4 |
  \strictGraceOn
  g4 \grace { \columnShiftAOn a8 g \columnShiftOff \accidentalShiftA fs g } 
    a4 f |
  \strictGraceOff
  c4) g'~( g8. f16 |
  f4) d'2*1/2->\( \omit TupletNumber \magnifyMusic 0.63 { 
    \tuplet 8/2 { \stemUp \textUnderSlur \moveTextA e,8_(^\dolcissSmall 
                  f e d e \slashedGrace { e } g f d) } } |
  \stemNeutral c4\) g'4~( g8. f16 |
  f2 e4 |
  d4 e c |
  d4 e c) |
  
  \barNumberCheck 73
  \staffDown \grace { \stemUp f,,,8*1/64^( c' g' bf c 
                      \staffUp \stemDown e bf' c) } g'2.\( |
  \staffDown \grace { \stemUp f,,,8*1/16^( c' a' 
                      \staffUp \stemDown c f a c) } f2.\) |
  \bar "|."
}

rightHandLower = \relative {
  \partial 4 s4
  s2. * 8 |
  
  \barNumberCheck 9
  s2. * 8 |
  
  \barNumberCheck 17
  s2. * 8 |
  
  \barNumberCheck 25
  s2. * 6 |
  \scaleDurations 2/3 {
    cf''16 df cf df cf df  bf df bf df bf df  af df af df af df |
    gf,16 df' gf, df' gf, df'  f, df' f, df'^\dimm f, df'  
      f,^\> df' f, df' f, df'\! | 
      
    \barNumberCheck 33
    cf16 df cf df cf df  bf df bf df bf df  af df af df af df |
    gf,16 df' gf, df' gf, df'  f, df' f, df' f, df'  \textUnderSlur \moveTextB
      f,^\dimm df' f, c' f, b |
    bf16 c bf c bf c  af c af c <g ef'> bf  <f df'> af <ef c'> g <df bf'> f |
  }
  \time 6/8
  c16 ef bf df af c  bf df af c g c | 
  \time 3/4
  s2. * 4 |
  
  \barNumberCheck 41
  s2. * 4 |
  \scaleDurations 2/3 {
    af'16 bf af bf af bf  gf bf gf bf gf bf  af bf af bf af bf |
    gf bf gf bf gf bf  af bf af bf af bf  f af f af f af |
    f16 af f af f af  ef f ef f ef f  df f df f df f |
  }
  \time 6/8
  \repeat unfold 6 { df16 f } |
  
  \barNumberCheck 49
  \key f \major
  \time 3/4
  \grace { s8*1/64 s s } s2. |
}

rightHand = <<
  \clef treble
  \global
  \tempo "Andante cantabile" 4 = 69
  \mergeDifferentlyHeadedOn
  \new Voice { \voiceOne \rightHandUpper }
  \new Voice { \voiceTwo \rightHandLower }
>>

leftHandUpper = \relative {
  \oneVoice
  \partial 4 r4
  \voiceThree
  <a f'>4 q <a e'> |
  <a d>4 <g e'> <g c> |
  <g d'>4 <g e'> <g c> |
  <f c'>4 <g cs> <f d'> |
  <f b>4 <f bf> <e bf'> |
  <e a>4 <d a'> q |
  <d gs>4 <c a'> a' |
  gs4 <gs e'> <bf e> |
  
  \barNumberCheck 9
  <a f'>4 q <a e'> |
  <a d>4 <g e'> <g c> |
  <g d'>4 <g e'> <g c> |
  <f c'>4 <g cs> q |
  <g df'>4 <g c> <a d> |
  <bf e>4 <a f'> <b gs'> |
  s4 <a f'> <g e'> |
  <g df'>4 q q |
  
  \barNumberCheck 17
  <\tweak duration-log 2 g df'>2 * 1/2 g4 <gf df'> |
  <g cs>4 <fs c'> <f b> |
  c2. * 1/3 <bf' f'>4 <bf e> |
  <a f'>4 s <f d'> |
  c,2. * 1/3 <bf'' f'>4 <bf e> |
  <a f'>4 q <a e'> |
  <a d>4 <g e'> <g c> |
  <g d'>4 <g e'> \oneVoice r\fermata |
  
  \barNumberCheck 25
  \key f \minor
  \scaleDurations 2/3 {
    \voiceThree
    c,16-\slurShapeA _( b c df c b  c bf af g f e  f ef df c bf af) |
    f16_([\< df' f bf df) r32 f-^]\! 
  } \oneVoice f4-> r |
  \scaleDurations 2/3 {
    \voiceThree
    df16_( c df ef df c  df c bf a bf af  g f ef df c bf) |
    f16-^[\< gf'_( c ef gf) r32 c-^]\!
  } \oneVoice c4-> r |
  \voiceThree 
  c8.( df16 bf4 af) |
  af8.( bf16 gf4 f~ |
  f4) gf( af |
  bf4 af df) |
  
  \barNumberCheck 33
  \grace { df,,8 } f'4( gf af |
  bf4 af df) |
  \oneVoice
  \scaleDurations 2/3 { \slashedGrace { c,8 } e'16 c e c e c } <f, f'>8 r r4 |
  \time 6/8
  R2. |
  \time 3/4
  \scaleDurations 2/3 {
    \voiceThree
    c16-\slurShapeA _( b c df c b  c bf af g f e  f ef df c bf af) |
    f16_([\< df' f bf df) r32 f-^]\! 
  } \oneVoice f4-> r |
  \scaleDurations 2/3 {
    \voiceThree
    df16_( c df ef df c  df c bf a bf af  g f ef df c bf) |
    f16-^[\< gf'_( c ef gf) r32 c-^]\!
  } \oneVoice c4-> r |
  
  \barNumberCheck 41
  \voiceThree 
  \forceHShiftAOn ef,8. \forceHShiftOff f16_( df4) c |
  <b, b'>8. <c c'>16_( <af af'>2) |
  \forceHShiftAOn f''8. \forceHShiftOff gf16_( ef4) d |
  <cs, cs'>8. <d d'>16_( <bf bf'>2) |
  \scaleDurations 2/3 {
    \oneVoice
    \slashedGrace { bf'8 } d'16 bf d bf d bf  <ef, ef'> bf' ef bf ef bf
      \slashedGrace { bf,8 } d'16 bf d bf d bf |
    <ef, ef'> bf' ef bf ef bf  \slashedGrace { af,8 } c'16 af c af c af
      <df, df'> af' df af df af |
    df16 af df af df af  \slashedGrace { f,8 } a'16 f a f a f  
      <bf, bf'> f' bf f bf f |
  }
  \time 6/8
  \repeat unfold 6 { bf f }
  
  \barNumberCheck 49
  \key f \major
  \time 3/4 
  \voiceThree
  \grace { s8*1/64 s s } s4 <a f'> <a e'> |
  <a d>4 <g e'> <g c> |
  <g d'>4 <g e'> <g c> |
  <f c'>4 <g cs> <f d'> |
  <f b>4 <f bf> <e bf'> |
  <e a>4 <d a'> q |
  <d gs>4 <c a'> a' |
  gs4 <gs e'> <bf e> |
  
  \barNumberCheck 57
  <a f'>4 q <a e'> |
  <a d>4 <g e'> <g c> |
  <g d'>4 <g e'> <g c> |
  <f c'>4 <g cs> q |
  <g df'>4 <g c> <a d> |
  <bf e>4 <a f'> <b gs'> |
  s4 <a f'> <g e'> |
  <g df'>4 q q |
  
  \barNumberCheck 65
  <\tweak duration-log 2 g df'>2 * 1/2 g4 <gf df'> |
  <g cs>4 <fs c'> <f b> |
  c2. * 1/3 <bf' f'>4 <bf e> |
  <a f'>4 s <f d'> |
  c,2. * 1/3 <bf'' f'>4 <bf e> |
  <a f'>4 q <a e'> |
  <a d>4 <g e'> <g c> |
  <g d'>4 <g e'> <g c> |
  
  \barNumberCheck 73
  s2. |
  s2. |
}

leftHandMiddle = \relative {
  \override Beam.details.collision-padding = 0
  
  \partial 4 s4
  \tuplet 3/2 4 { a8 c c a c c a c c } |
  \scaleDurations 2/3 {
    a8 bf bf g bf bf g bf bf |
    g8 bf bf g bf bf g bf bf |
    f8 a a g a a f a a |
    f8 g g f g g e g g |
    e8 f f d f f d f f |
    d8 e e c e e <f, b a'>\arpeggio d' d |
    <e, b' gs'>8\arpeggio b'' b gs b b bf c c |
    
    \barNumberCheck 9
    a8 c c a c c a c c |
    a8 bf bf g bf bf g bf bf |
    g8 bf bf g bf bf g bf bf |
    f8 a a g a a g a a |
    g8 bf bf g bf bf a c c |
    bf8\< c c a c c b d d\! |
    c,8 c' c a c c g c c |
    g8 b b g b b g bf bf |
    
    \barNumberCheck 17
    g8 bf bf g bf bf gf a a |
    g8 a a fs a a f g g |
    c,8 c' c bf c c bf c c |
    a8 c c b, af' af f af af |
    \beamPositionsA c,,8 c''^. c^. bf c c bf c c |
    a8 c c a c c a c c |
    a8 bf bf g bf bf g bf bf |
  }
  g8[ bf] g[ bf] s4 |
  
  \barNumberCheck 25
  \key f \minor
  s2. * 8 |
  
  \barNumberCheck 33
  s2. * 3 |
  \time 6/8
  s2. |
  \time 3/4
  s2. * 4 |
  
  \barNumberCheck 41
  s2. * 7
  \time 6/8
  s2.
  
  \barNumberCheck 49
  \key f \major
  \time 3/4
  \grace { s8*1/64 s s }
  \scaleDurations 2/3 {
    f,8 c'' c a c c a c c |
    a8 bf bf g bf bf g bf bf |
    g8 bf bf g bf bf g bf bf |
    f8 a a g a a f a a |
    f8 g g f g g e g g |
    e8 f f d f f d f f |
    d8 e e c e e <f, b a'>\arpeggio d' d |
    <e, b' gs'>8\arpeggio b'' b gs b b bf c c |
    
    \barNumberCheck 57
    a8 c c a c c a c c |
    a8 bf bf g bf bf g bf bf |
    g8 bf bf g bf bf g bf bf |
    f8 a a g a a g a a |
    g8 bf bf g bf bf a c c |
    bf8_\< c c a c c b d d\! |
    c,8 c' c a c c g c c |
    g8 b b g b b g bf bf |
    
    \barNumberCheck 65
    g8 bf bf g bf bf gf bf bf |
    g8 a a fs a a f g g |
    c,8 c' c bf c c bf c c |
    a8 c c b,^. af' af f af af |
    \beamPositionsA c,,8 c'' c bf c c bf c c |
    a c c a c c a c c |
    a bf bf g bf bf g bf bf |
    g bf bf g bf bf g bf bf |
  }
  
  \barNumberCheck 73
  s2. |
  s2. |
}

leftHandLower = \relative {
  \partial 4 s4
  \forceHShiftAOn f2._\sempreLeg |
  f2. |
  \forceHShiftBOn f2. |
  \forceHShiftOff f4 \forceHShiftAOn e d |
  d4 df c |
  c4 b2 |
  b4 a s |
  s4 s g' |
  
  \barNumberCheck 9
  f2. |
  f2 \forceHShiftBOn f4 |
  f2 f4 |
  \forceHShiftOff \stemLengthA f4 \forceHShiftAOn e2 |
  e2 fs4 |
  g4 f s |
  s2. |
  \forceHShiftBOn f2 \forceHShiftAOn e4 |
  
  \barNumberCheck 17
  ef2 ef4 |
  ef4 d d |
  s4 g s |
  f4 s2 |
  s4 g s |
  f2.-\tieShapeA ~ |
  f2. |
  \forceHShiftBOn f4 f \forceHShiftOff s |
  
  \barNumberCheck 25
  \key f \minor
  f,4 s2 |
  s2. |
  f4 s2 |
  s2. |
  df'2.~ |
  df2. |
  <gf, df'~>2. |
  df'2. |
  
  \barNumberCheck 33
  s4 df2~ |
  df2. |
  s2. |
  \time 6/8
  s2. |
  \time 3/4
  f,4 s2 |
  s2. |
  f4 s2 |
  s2. |
  
  \barNumberCheck 41
  <af af'>2. |
  s2. |
  <bf bf'>2. |
  s2. * 4 |
  \time 6/8
  s2.
  
  \barNumberCheck 49
  \key f \major
  \time 3/4
  \grace { s8*1/64 s s } s2. |
  \forceHShiftAOn f'2. |
  \forceHShiftBOn f2. |
  \forceHShiftOff \stemLengthA f4 \forceHShiftAOn e d |
  d4 df c |
  c4 b2 |
  b4 a s |
  s2 g'4 |
  
  \barNumberCheck 57
  f2. |
  f2 \forceHShiftBOn f4 |
  f2 f4 |
  \forceHShiftOff f4 \forceHShiftAOn e2 |
  e2 fs4 |
  g4 f s |
  s2. |
  \forceHShiftBOn f2 \forceHShiftAOn e4 |
  
  \barNumberCheck 65
  ef2 ef4 |
  ef4 d d |
  s4 g s |
  f4 s2 |
  s4 g s |
  f2. |
  f2. |
  \forceHShiftBOn f2. |
  
  \barNumberCheck 73
  s2. |
  s2. |
}

leftHand = <<
  \clef bass
  \global
  \mergeDifferentlyHeadedOn
  \mergeDifferentlyDottedOn
  \new Voice { \voiceThree \leftHandUpper }
  \new Voice { \voiceFour \leftHandMiddle }
  \new Voice { \voiceSix \leftHandLower }
>>

dynamics = {
  \override TextScript.Y-offset = -0.5
  \partial 4 \tag layout { s4^\semplice }
             \tag midi   { s4\p }
  s2. * 2 |
  s2.\< |
  s8 s\! s2 |
  s4 s4.\> s8\! |
  s4. s8\< s8. s16\!
  \set crescendoText = \markup \large \whiteout "poco cresc. e ritenuto"
  \set crescendoSpanner = #'text
  s2.\< |
  s2 s8 s16 s\! |
  
  \barNumberCheck 9
  s2. * 2 |
  \set crescendoSpanner = #'hairpin
  s2.\< |
  s8 s\! s2 |
  s2\> s8 s\! |
  % s2\< s8 s\! |
  s2. |
  s4 s2\< |
  s16\! s\> s8 s4 s8. s16\! |
  
  \barNumberCheck 17
  s2.\> |
  s2 s4\! |
  s4 s\> s8 s\! |
  s4 s8 s\> s s\! |
  s4 s\> s8 s\! |
  s2. |
  \set crescendoText = \markup \large "smorzando"
  \set crescendoSpanner = #'text
  s2.\< |
  s2 s4\! |
  
  \barNumberCheck 25
  \set crescendoSpanner = #'hairpin
  \scaleDurations 2/3 { s4\f s8\< s4. s4 s16 s\! } |
  s2. |
  \scaleDurations 2/3 { s4 s8\< s4. s4 s16 s\! } |
  s2. |
  \scaleDurations 2/3 {
    \set crescendoText = \markup \large "crescendo"
    \set crescendoSpanner = #'text
    s4.\fz s4 s8\< s4. |
    s2. s4 s16 s\! |
  }
  s2.\ff |
  s2. |
  
  \barNumberCheck 33
  \tag layout { s2.-\ppPocoRit | }
  \tag midi   { s2.\pp | }
  s2. |
  \set crescendoSpanner = #'hairpin
  s8.^\sottoVoce\> s16\! s4\< s16 s-\crescm s s16\! |
  \time 6/8
  s8 s\> s s4 s16 s\! |
  \time 3/4
  s4\f s\< s8 s16 s32 s\! |
  s2. |
  \scaleDurations 2/3 { s4-\tweak X-offset 0 \fz s8\< s4. s4 s16 s\! } |
  s4 s\< s8 s16 s32 s\! |
  
  \barNumberCheck 41
  \set crescendoText = \markup \large "crescendo"
  \set crescendoSpanner = #'text
  s16-\tweak X-offset -2.5 \fz\> s\! s8 s2\< |
  s4 s2\! |
  s4 s2\< |
  s8 s\! s2 |
  \tag layout { s2-\tweak X-offset -2 ^\pfzSempre }
  \tag midi   { s2\p }
    s4\pp |
  s4 s8.\> s16\! s4 |
  \set decrescendoText = \markup \large "rall. e calando" 
  \set decrescendoSpanner = #'text
  s4\dim s2\> |
  \time 6/8
  s4. s4 s8\! |
  
  \barNumberCheck 49
  \time 3/4
  \grace { s8*1/64 s s } \tag layout { s2.-\tweak X-offset -1 ^\sottoVoce | }
                         \tag midi   { s2.\p }
  s2. |
  \set crescendoSpanner = #'hairpin
  s2.\< |
  s8 s\! s2 |
  \set decrescendoSpanner = #'hairpin
  s2\> s8 s16 s\! |
  s4. s8\< s s16 s\! |
  \set crescendoText = \markup \large "poco cresc."
  \set crescendoSpanner = #'text
  s4. s8\< s4 |
  \set crescendoText = \markup \large "e ritenuto"
  s2\< s4\! |
  
  \barNumberCheck 57
  \set crescendoSpanner = #'hairpin
  s4\< s2\! |
  s4 s\> s\! |
  s2.\< |
  s16 s\! s8 s\< s16 s\! s4 |
  s2\> s8 s16 s\! |
  s2. |
  s2 s4\< |
  s8 s\! s2 |
  
  \barNumberCheck 65
  s2. * 2 |
  s4 s\> s\! |
  s2. |
  s4 s\> s\! |
  s2-\tweak X-offset 0 \pp s8\dim s16 s\! |
  \set crescendoText = \markup \large "rall."
  \set crescendoSpanner = #'text
  s2.\< |
  \set crescendoText = \markup \large "smorzando"
  s2.\< |
  
  \barNumberCheck 73
  s2. |
  s2 s8 s16 s\! |
}

pedal = {
  \partial 4 s4
  s2. * 6 |
  s2 s8\sustainOn s16 s\sustainOff |
  s2\sustainOn s8\sustainOff\sustainOn s16 s\sustainOff |
  
  \barNumberCheck 9
  s4\sustainOn s8. s16\sustainOff s4 |
  s2. * 5 |
  s4\sustainOn s8. s16\sustainOff s4 |
  s2. |
  
  \barNumberCheck 17
  s2. * 2 |
  s2\sustainOn s8. s16\sustainOff |
  s4 s\sustainOn s8. s16\sustainOff |
  s2\sustainOn s4\sustainOff |
  s2. * 3 |
  
  \barNumberCheck 25
  s2. |
  s4\sustainOn s s\sustainOff |
  s2. |
  s4\sustainOn s s\sustainOff |
  s2 s4\sustainOn |
  s4 s\sustainOff s\sustainOn |
  s4 s\sustainOff s |
  s4 s2\sustainOn |
  
  \barNumberCheck 33
  s4 s2\sustainOff |
  s4 s4\sustainOn s8 s16 s\sustainOff |
  s8\sustainOn s16 s32 s\sustainOff s2 |
  \time 6/8
  s2. |
  \time 3/4
  s2. |
  s4\sustainOn s s\sustainOff |
  s2. |
  s4\sustainOn s s\sustainOff |
  
  \barNumberCheck 41
  s2. |
  s4 s\sustainOn s8 s16 s\sustainOff |
  s2. * 2 |
  s4\sustainOn s\sustainOff\sustainOn s8.\sustainOff\sustainOn 
    s32 s\sustainOff | 
  s4\sustainOn s\sustainOff\sustainOn s4\sustainOff\sustainOn |
  s4 s\sustainOff\sustainOn s4\sustainOff\sustainOn |
  \time 6/8
  s4. s4 s16 s\sustainOff |
  
  \barNumberCheck 49
  \time 3/4
  \grace { s8*1/64 s s } s2\sustainOn s8. s16\sustainOff |
  s2. * 7 |
  
  \barNumberCheck 57
  s2. * 6 |
  s2\sustainOn s4\sustainOff |
  s2.
  
  \barNumberCheck 65
  s2. * 2 |
  s2\sustainOn s8 s16 s\sustainOff |
  s4 s\sustainOn s8 s16 s\sustainOff |
  s2\sustainOn s8 s16 s\sustainOff |
  s2\sustainOn s8 s16 s\sustainOff |
  s4\sustainOn s\sustainOff\sustainOn s8. s16\sustainOff |
  s4\sustainOn s2\sustainOff\sustainOn |
  
  \barNumberCheck 73
  \tag layout { s2 s4\sustainOff |
                s2.-\tweak X-offset -12 \sustainOn | }
  \tag midi   { s2 s4\sustainOff\sustainOn | 
                s2. | }
}

ossiaPart = \relative {
  \key f \minor
  \stopStaff
  \partial 4 s4
  s2. * 8 |
  
  \barNumberCheck 9
  s2. * 8 |
  
  \barNumberCheck 17
  s2. * 8 |
  
  \barNumberCheck 25
  s2. * 2 |
  \scaleDurations 2/3 {
    s128 \startStaff r16*7/8^\ossia <f' bf>16 <bf, g'> <f' bf> <bf, g'> 
      <f' bf> \stopStaff
  } s2 |
  s2. |
  \scaleDurations 2/3 {
    s128 \startStaff r16*7/8^\ossia <a f'>16 <f c'> <a f'>16 <f c'> <a f'> 
    \stopStaff
  } s2 |
  s2. * 3 |
  
  \barNumberCheck 33
  s2. * 3 |
  \time 6/8
  s2. |
  \time 3/4
  s2. * 2 |
  \scaleDurations 2/3 {
    s128 \startStaff r16*7/8^\ossia <f bf>16 <bf, g'> <f' bf> <bf, g'> 
      <f' bf> \stopStaff
  } s2 |
  s2. |
  
  \barNumberCheck 41
  \scaleDurations 2/3 {
    s128 \startStaff r16*7/8^\ossia <gf c>16 <c, af'> <gf' c> <c, af'> <gf' c> 
      \stopStaff
  } s2 |
  s2. |
}

forceBreaks = {
  \partial 4 s4
  s2.\noBreak s2.\noBreak s2.\noBreak s2.\noPageBreak\break
  %{  5 %} s2.\noBreak s2.\noBreak s2.\noBreak s2.\noPageBreak\break
  %{  9 %} s2.\noBreak s2.\noBreak s2.\noBreak s2.\noPageBreak\break
  %{ 13 %} s2.\noBreak s2.\noBreak s2.\noBreak s2.\noPageBreak\break
  %{ 17 %} s2.\noBreak s2.\noBreak s2.\noBreak s2.\pageBreak
  
  %{ 21 %} s2.\noBreak s2.\noBreak s2.\noBreak s2.\noPageBreak\break
  %{ 25 %} s2.\noBreak s2.\noPageBreak\break
  %{ 27 %} s2.\noBreak s2.\noPageBreak\break
  %{ 29 %} s2.\noBreak s2.\noPageBreak\break
  %{ 31 %} s2.\noBreak s2.\pageBreak
  
  %{ 33 %} s2.\noBreak s2.\noPageBreak \slashedGrace { s8 } \break
  %{ 35 %} s2.\noBreak s2.\noPageBreak\break
  %{ 37 %} s2.\noBreak s2.\noPageBreak\break
  %{ 39 %} s2.\noBreak s2.\noPageBreak\break
  %{ 41 %} s2.\noBreak s2.\pageBreak
  
  %{ 43 %} s2.\noBreak s2.\noPageBreak\break
  %{ 45 %} s2.\noBreak s2.\noPageBreak\break
  %{ 47 %} s2.\noBreak s2.\noPageBreak\break
  %{ 49 %} s2.\noBreak s2.\noBreak s2.\noBreak s2.\noPageBreak\break
  %{ 53 %} s2.\noBreak s2.\noBreak s2.\pageBreak
  
  %{ 56 %} s2.\noBreak s2.\noBreak s2.\noPageBreak\break
  %{ 59 %} s2.\noBreak s2.\noBreak s2.\noBreak s2.\noPageBreak\break
  %{ 63 %} s2.\noBreak s2.\noBreak s2.\noBreak s2.\noPageBreak\break
  %{ 67 %} s2.\noBreak s2.\noBreak s2.\noBreak s2.\noPageBreak\break
}

nocturne-four-header = \header { 
  title = "Nocturnes"
  composer = "Frédéric Chopin (1810-1849)"
  opus = "Opus 10, No 1"
  copyright = \markup { 
    "This work is licensed under a" 
    \with-url #"https://creativecommons.org/licenses/by-sa/4.0/" 
    "Creative Commons Attribution-ShareAlike 4.0 License" 
  }
}

nocturne-four-layout = \layout {
  \context {
   \Score
   \remove System_start_delimiter_engraver
   \omit BarNumber 
  }
  \context {
   \PianoStaff
   \name InnerPianoStaff
  }
  \context {
   \PianoStaff
   \accepts InnerPianoStaff
   systemStartDelimiter = #'SystemStartBar
  }
}

nocturne-four-music = <<
  \new Staff = "ossia" \with {
    \remove "Time_signature_engraver"
    \hide Clef
    \hide BarLine
    \override BarLine.allow-span-bar = ##f
    \override KeySignature.stencil = ##f
    \magnifyStaff #2/3
    \override VerticalAxisGroup.staff-staff-spacing = 
      #'((basic-distance . 0) 
        (minimum-distance . 0)
        (padding . 1)
        (stretchability . 0))
  } {
    \ossiaPart
  }
  \new PianoStaff \new InnerPianoStaff 
    \with { instrumentName = \markup \huge "No. 4" } <<
    \new Staff = "upper" \rightHand
    \new Dynamics = "dynamics" \dynamics
    \new Staff = "lower" \leftHand
    \new Dynamics = "pedal" \pedal
    \new Devnull \forceBreaks
  >>
>>

nocturne-four-midi = \book {
  \bookOutputName "nocturne-op15-no1"
  \score { 
    \keepWithTag midi
    \articulate << 
      \new Staff = "upper" << \rightHand \dynamics \pedal >>
      \new Staff = "lower" << \leftHand \dynamics \pedal >>
    >>
    \midi {
      \context {
        \Staff
        \consists "Dynamic_performer"
      }
      \context {
        \Voice
        \remove "Dynamic_performer"
      }    
    }
  }
}

#(ly:expect-warning-times 7 "forced break was overridden")
