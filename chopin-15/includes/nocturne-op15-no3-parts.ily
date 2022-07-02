%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.22.1"
\language "english"

\include "global-variables.ily"
\include "articulate.ly"

voiceSix = #(context-spec-music (make-voice-props-set 5) 'Voice)

global = {
  \time 3/4
  \key g \minor
  \accidentalStyle piano
}

rightHandUpper = \relative {
  \oneVoice
  \partial 4 d''4->
  g,2( bf4 |
  a8 bf g4 a |
  bf8 c d4 g |
  f2.->~ |
  f2.~ |
  f2. |
  d2) d4->( |
  c2) d4->( |

  \barNumberCheck 9
  f,2) d'4->( |
  c2) d4->( |
  bf4) r d->( |
  a4) r d->( |
  g,2) bf4( |
  a8 bf g4 a |
  bf8 c d4 g |
  f2.)~ |

  \barNumberCheck 17
  f2.~ |
  f2.~ |
  f2 f4->( |
  e2) f4->( |
  a,2) f'4->( |
  e2) f4->( |
  d4) r ef->( |
  c4) r d->( |

  \barNumberCheck 25
  \tempo "a Tempo"
  g,2) bf4( |
  a8 bf g4 a |
  bf8 c d4 g |
  f2.->~ |
  f2.~ |
  f2. |
  d2) d4->( |
  c2) d4->( |

  \barNumberCheck 33
  f,2) d'4->( |
  c2) d4->( |
  bf4) \omit TupletBracket \tuplet 6/4 { r8 d(^\leggieriss d f ef d } |
  a4) \tupletNumberOff \tuplet 6/4 { r8 d( d \slashedGrace { d8 } f ef d } |
  g,2) bf4->( |
  a8 bf g4 a |
  bf8 c d4 g |
  f2.~ |

  \barNumberCheck 41
  f2.~ |
  f2.~ |
  f2) f4->( |
  e2) f4->( |
  a,2) f'4->( |
  e4) r f->( |
  d2.->)~ |
  d2.~ |

  \barNumberCheck 49
  d2.~ |
  d2. |
  \tempo "a Tempo"
  c2->( c4 |
  b8 a g4 fs) |
  c'2 c4( |
  b2.)~ |
  b2 b4( |
  a8 g fs4 e) |

  \barNumberCheck 57
  d8( e' d4 a) |
  b2.~ |
  b2 b4( |
  as8 gs fs4 es |
  \slashedGrace { es8 } b'2) b4( |
  as2.~ |
  as2 as4 |
  gs8 fs es4 ds) |

  \barNumberCheck 65
  cs8( ds' cs4 gs |
  as2.~ |
  as2 b8 as |
  gs8 fs es4 ds) |
  \voiceOne
  e8( e' ds2) |
  fs,8( fs' es2) |
  gs,8( gs' fss2) |
  e8( e' ds2) |

  \barNumberCheck 73
  fs,,8( fs' es2) |
  d8( d' cs2) |
  cs,8( cs' bs2) |
  es,8( es' ds2) |
  \oneVoice
  <fs, c' fs>4\(( <f b>) <ef a ef'>( |
  <d gs>4) <c fs c'>( <b f'>)\) |
  <a ds a'>2( <gs es' gs>4) |
  R2. |

  \barNumberCheck 81
  <fs bs fs'>2( <es cs' es>4) |
  R2. |
  <d a' d>2( <gs cs>4) |
  R2. * 4 |
  \tempo "a Tempo"
  R2. |

  \barNumberCheck 89
  \tempo "Religioso"
  <e a c>2^( <c e a>4 |
  <a d f>2 <d g bf>4) |
  \voiceOne
  a'4( g a |
  \oneVoice
  <a, d f>2 <c e g>4) |
  <c f a>2( <c g' c>4 |
  <e a c>2 <f a d>4 |
  <g bf d>2 <g c e>4 |
  <a c f>2.) |

  \barNumberCheck 97
  <a d f>4( <gs b e> <e a c> |
  <f a d>2 <e a c>4) |
  <f a d>4^( <e a c> <d f a> |
  <d g bf>2 <d f a>4) |
  <d g bf>4^( <cs e a> <a d f> |
  <c e g>2 <c f a>4 |
  <d g bf>4 <cs e a> <d g bf> |
  <cs e a>4) \voiceOne g'2->( |

  \barNumberCheck 105
  s2 <c, e a>4 |
  <a d f>2 <d g bf>4 |
  a'4-> g a |
  \oneVoice
  <a, d f>2 <c e g>4) |
  <c f a>2( <c g' c>4 |
  <e a c>2 <f a d>4 |
  <g bf d>2 <g c e>4 |
  <a c f>2.) |

  \barNumberCheck 113
  <a d f>4( <gs b e> <e a c> |
  <f a d>2 <e a c>4) |
  <f a d>4^( <e a c> <d f a> |
  <d g bf>2 <d f a>4) |
  <d g bf>4^( <cs e a> <a d f> |
  <c e g>2 <c f a>4 |
  <d g bf>4 <cs e a> <d g bf> |
  <c e g>2 <c f a>4) |

  \barNumberCheck 121
  \voiceOne c'2.^>-\tieShapeC _~ |
  c2 \oneVoice r4 |
  \voiceOne a2.^>-\tieShapeC _~ |
  a2 \oneVoice r4 |
  \voiceOne c8.^( d16) c2^>-\tieShapeC _~ |
  c2 bf4 |
  a8. bf16 a2^>-\tieShapeC _~ |
  a2 g4^( |

  \barNumberCheck 129
  f2.^>)-\tieShapeD _~ |
  f2 e4 |
  f8. g16 f2^>-\tieShapeD _~ |
  f2 e4 |
  d2.->~ |
  d2.~ |
  d2 <g, c e>4 |
  <a c f>2. |

  \barNumberCheck 137
  c'2.->-\tieShapeC _~ |
  c2 \oneVoice r4 |
  \voiceOne a2.->-\tieShapeC _~ |
  a2 \oneVoice r4 |
  \voiceOne c8. d16 c2->-\tieShapeC _~ |
  c2 bf4 |
  a8. bf16 a2->-\tieShapeC _~ |
  a2 g4 |

  \barNumberCheck 145
  f2.->-\tieShapeD _~ |
  f2 e4 |
  f8. g16 f2->-\tieShapeD _~ |
  f2 e4 |
  \set crescendoText = \ritenuto
  \set crescendoSpanner = #'text
  d2.->~(-\tweak Y-offset 2.5 ^\< |
  d2 \staffDown <g, c ef>4 |
  <g a d>2 <fs a d>4\! |
  <d g b d>2.)-\tweak Y-offset 11 \fermata |
  \bar "|."
}

rightHandLower = \relative {
  \voiceTwo
  \partial 4 s4
  s2. * 8 |

  \barNumberCheck 9
  s2. * 8 |

  \barNumberCheck 17
  s2. * 8 |

  \barNumberCheck 25
  s2. * 8 |

  \barNumberCheck 33
  s2. * 8 |

  \barNumberCheck 41
  s2. * 8 |

  \barNumberCheck 49
  s2. * 8 |

  \barNumberCheck 57
  s2. * 8 |

  \barNumberCheck 65
  s2. * 4 |
  e'4-> s ds^. |
  fs4-> s es^. |
  gs4-> s fss^. |
  e'4->_\accelarando s ds^. |

  \barNumberCheck 73
  fs,4-> s es^. |
  d'4-> s cs^. |
  cs4-> s bs^. |
  es4-> s ds^. |
  s2. * 4 |

  \barNumberCheck 81
  s2. * 8 |

  \barNumberCheck 89
  s2. * 2 |
  <c, e>2. |
  s2. * 5 |

  \barNumberCheck 97
  s2. * 7 |
  s4 d e~ |

  \barNumberCheck 105
  \voiceOne
  \omitOneAccidental <e a c>2 s4 |
  s2. |
  \voiceTwo
  <c e>2. |
  s2. * 5 |

  \barNumberCheck 113
  s2. * 8 |

  \barNumberCheck 121
  r4 r <f a d>^( |
  <e g e'>4^.) q^. s |
  r4 r <d f b>^( |
  <c e c'>4^.) q^. s |
  r4 r <f a d>^( |
  <e g e'>4^.) q^. r |
  r4 r <d f b>4^( |
  <c e c'>4^.) q^. r |

  \barNumberCheck 129
  r4 r <bf d g>^( |
  <a cs a'>2) r4 |
  r4 r <bf d g>^( |
  <a cs a'>2) r4 |
  \staffDown \voiceThree r4 r <fs a> |
  <g bf>2 <fs a>4 |
  <g bf>2 s4 |
  s2. |

  \barNumberCheck 137
  \voiceTwo \staffUp r4 r <f' a d>^( |
  <e g e'>4^.) q^. s |
  r4 r <d f b>^( |
  <c e c'>4^.) q^. s |
  r4 r <f a d>^( |
  <e g e'>4^.) q^. r |
  r4 r <d f b>^( |
  <c e c'>4^.) q^. r |

  \barNumberCheck 145
  r4 r <bf d g>^( |
  <a cs a'>2) r4 |
  r4 r <bf d g>^( |
  <a cs a'>2) r4 |
  s2 \staffDown \stemUp <fs a>4 |
  <g bf>2 s4 |
  s2. * 2 |
}

rightHand = <<
  \clef treble
  \global
  \tempo "Lento" 2. = 60
  \new Voice \rightHandUpper
  \new Voice \rightHandLower
>>

leftHandUpper = \relative {
  \oneVoice
  \partial 4 r4
  <g bf d>4( g,-.) r |
  <g' c ef>4( g,-.) r |
  <g' bf d>4( g,-.) r |
  a4-. <f' c' ef> r |
  a,4-. <f' c' ef> r |
  <f c' ef>( a,-.) r |
  bf4-. <f' bf d> r |
  \voiceThree
  s4 f2-3_~ |

  \barNumberCheck 9
  f2. |
  s4 f2_~ |
  f2 \oneVoice r4 |
  <d fs c'>4 d,-. r |
  <d' bf'>4( g,-.) r |
  <g' c ef>4( g,-.) r |
  <g' bf d>4( g,-.) r |
  d4 <a'' d f a> r |

  \barNumberCheck 17
  d,4-. <a' d f a> r |
  <a d a'>4( d,-.) r |
  <a' d gs>4( d,-.) r |
  <a' cs g'>4( d,-.) r |
  <a' d f>4( d,-.) r |
  <a' cs g'>4( d,-.) r |
  <a' d f>4( d,-.) r |
  <f a ef'>4( fs) r |

  \barNumberCheck 25
  <g bf d>4( g,-.) r |
  <g' c ef>4( g,-.) r |
  <g' bf d>4( g,-.) r |
  a4-. <f' c' ef> r |
  a,4-. <f' c' ef> r |
  <f c' ef>( a,-.) r |
  bf4-. <f' bf d> r |
  \voiceThree
  \hideNotes gf4_( \unHideNotes f2)_~ |

  \barNumberCheck 33
  f2. |
  s4 f2_~ |
  f2 \oneVoice r4 |
  <d fs c'>4 d,-. r |
  <g d' bf'>4( g,-.) r |
  <g'' c ef>4( g,-.) r |
  <g' bf d>4( g,-.) r |
  d4 <a'' d f a> r |

  \barNumberCheck 41
  d,4-. <a' d f a> r |
  <a d a'>4( d,-.) r |
  <a' d gs>4( d,-.) r |
  <a' cs g'>4( d,-.) r |
  <a' d f>4( d,-.) r |
  <a' cs g'>4( d,-.) r |
  <a' d f>4( d,-.) r |
  <a' d f>4( d,-.) r |

  \barNumberCheck 49
  <a' d f>4( d,-.) r |
  <a' f'>4( d,2) |
  <ds fs a c>4 ds,-._\fz r |
  <ds' fs a c>4 ds,-. r |
  <ds' fs a c>4 ds,-. r |
  <ds' g b>4( ds,-.)_\fz r |
  <d' g b>( d,-.) r |
  <d' g b>( d,-.) r |

  \barNumberCheck 57
  <d' fs c'>4( d,-.) r |
  <d' fs b>4( d,-.) r |
  \repeat unfold 3 { <d' es gs b>4 d,-. r | }
  <d' es as>4( d,-.) r |
  <cs' fs as>4( cs,4-.) r |
  <cs' fs as>4( cs,4-.) r |

  \barNumberCheck 65
  <cs' es b'>4( cs,-.) r |
  \repeat unfold 3 { <cs' fs as>4( cs,-.) r | }
  <cs' fss as>4 cs,-. r |
  <cs' gs' b>4 cs,-. r |
  <as'' cs e>4 cs,,-. r |
  <b'' ds gs>4 <cs,, cs'>-. r |

  \barNumberCheck 73
  <gs'' b d>4 <cs,, cs'>-. r |
  <as'' cs fs>4 <cs,, cs'>-. r |
  <a'' ds fs>4 <cs,,, cs'>-. r |
  <a''' c ds fs a>4 <cs,,, cs'> r |
  \clef treble
  <a'''' ds>4( <gs d'>) <fs c'>( |
  <f b>4) <ef a>( <d gs>) |
  <bs fs'>2(_\fz <cs es>4) |
  \clef bass cs,8( fs-1) es4-.-1 cs,-. |

  \barNumberCheck 81
  <a'' d>2( <gs cs>4) |
  cs,8( fs) es4-. cs,-. |
  <fs' bs>2( <es cs'>4) |
  cs8( fs) es4-. gs,-. |
  cs,2. |
  cs2.\( |
  cs2.( |
  df2) c4\) |

  \barNumberCheck 89
  c2.(^\sottoVoce |
  d2) g4 |
  c2._\sempreLeg |
  d4 d c |
  f4 f e |
  a4 a d, |
  g4 g c, |
  f4-. f,( e |

  \barNumberCheck 97
  d4 e a) |
  d,2 a'4 |
  d,4 a' d |
  g,2 d'4 |
  g,4 a d |
  c2 f4 |
  g,4 a g |
  a4 bf c |

  \barNumberCheck 105
  c,2. |
  d2 g4 |
  c2. |
  d4 d c |
  f4 f e |
  a4 a d, |
  g4 g c, |
  f f, e |

  \barNumberCheck 113
  d4 e a |
  d,2 a'4 |
  d,4 a' d |
  g,2 d'4 |
  g,4 a d |
  c2 f4 |
  g,4 a g|
  c2 f,4 |

  \barNumberCheck 121
  \voiceThree c''2.^>~ |
  c2 \oneVoice r4 |
  \voiceThree a2.^>~ |
  a2 \oneVoice r4 |
  \voiceThree c8.^( d16) c2^>~ |
  c2 bf4 |
  a8. bf16 a2^>~ |
  a2 g4^( |

  \barNumberCheck 129
  f2.)~ |
  f2 e4 |
  f8. g16 f2~ |
  f2 e4 |
  \voiceSix d2.->~ |
  d2.~ |
  <g, d'>2 \voiceFour <c, c'>4 |
  <f c'>2. |

  \barNumberCheck 137
  \voiceThree c''2.->~ |
  c2 \oneVoice r4 |
  \voiceThree a2.->~ |
  a2 \oneVoice r4
  \voiceThree c8. d16 c2->~ |
  c2 bf4 |
  a8. bf16 a2->~ |
  a2 g4 |

  \barNumberCheck 145
  f2.~ |
  f2 e4 |
  f8. g16 f2~ |
  f2 e4 |
  \voiceFour d2.~ |
  <g, d'>2 s4 |
  s2. * 2 |
}

leftHandLower = \relative {
  \voiceFour
  \partial 4 s4
  s2. * 7 |
  <gf a ef'>4-> bf, \tweak Y-offset -3 r |

  \barNumberCheck 9
  <bf' d>4 bf,-. r |
  <gf' a ef'>4-> bf, \tweak Y-offset -3 r |
  <bf' d>4 bf,-. s |
  s2. * 5 |

  \barNumberCheck 17
  s2. * 8 |

  \barNumberCheck 25
  s2. * 7 |
  <gf' a ef'>4-> bf, r |

  \barNumberCheck 33
  <bf' d> bf,-. r |
  <gf' a ef'>4-> bf, r |
  <bf' d> bf,-. s |
  s2. * 5 |

    \barNumberCheck 41
  s2. * 8 |

  \barNumberCheck 49
  s2. * 8 |

  \barNumberCheck 57
  s2. * 8 |

  \barNumberCheck 65
  s2. * 8 |

  \barNumberCheck 73
  s2. * 8 |

  \barNumberCheck 81
  s2. * 8 |

  \barNumberCheck 89
  s2. * 8 |

  \barNumberCheck 97
  s2. * 8 |

  \barNumberCheck 105
  s2. * 8 |

  \barNumberCheck 113
  s2. * 8 |

  \barNumberCheck 121
  r4 r f'( |
  c4-.) c-. s |
  r4 r d( |
  a4-.) a-. s |
  r4 r f'( |
  c4-.) c-. r |
  r4 r d( |
  a-.) a-. r |

  \barNumberCheck 129
  r4 r bf( |
  a2) r4 |
  r4 r bf( |
  a2) r4 |
  r4 r d, |
  g2 d4 |
  s2. * 2 |

  \barNumberCheck 137
  \voiceFour r4 r f'( |
  c4-.) c-. s |
  r4 r d->( |
  a4-.) a-. s |
  r4 r f'( |
  c4-.) c-. r |
  r4 r d( |
  a4-.) a-. r |

  \barNumberCheck 145
  r4 r bf( |
  a2) r4 |
  r4 r bf( |
  a2) r4 |
  \voiceSix r4 r d,4( |
  s2 \voiceFour <c c'>4 |
  <d~ d'>2 q4 |
  <g, g'>2.)\fermata |
}

leftHand = <<
  \clef bass
  \global
  \new Voice \leftHandUpper
  \new Voice \leftHandLower
>>

dynamics = {
  \override TextScript.Y-offset = -0.5
  \partial 4 s4^\pLangERubato
  s2. |
  s2.\< |
  s2 s8 s\! |
  s2. |
  s2.^\dimm |
  s2. * 3 |

  \barNumberCheck 9
  s2. * 5 |
  s2.\< |
  s2 s8 s\! |
  s2.\f |

  \barNumberCheck 17
  s2. * 6 |
  \set crescendoText = \markup \large \whiteout "poco ritenuto"
  \set crescendoSpanner = #'text
  s2.\< |
  s2 s8 s\! |

  \barNumberCheck 25
  s2. |
  \set crescendoSpanner = #'hairpin
  s2.\< |
  s2 s8 s\! |
  s2. * 5 |

  \barNumberCheck 33
  s2. * 2 |
  s4 \omit TupletBracket \tupletNumberOff \tuplet 3/2 { s8 s\> s\! } s4 |
  s4 \tuplet 3/2 { s8 s\> s\! } s4 |
  s2. |
  s2.\< |
  s2 s8 s\! |
  s2.\f |

  \barNumberCheck 41
  s4 s8 s^\dimm s4 |
  s2. * 6 |
  s4 s8 s^\dimm s4 |

  \barNumberCheck 49
  s2 s4^\ritenutoWO |
  s2. |
  s2.^\sottoVoce |
  s2. |
  s2 s4\< |
  s4 s\! s |
  s2. |
  s2\> s4\! |

  \barNumberCheck 57
  s4\< s\! s8 s\< |
  s8 s\! s2 |
  s2 s4\> |
  s8 s\! s2 |
  s4\> s\! s |
  s2.\< |
  s16 s\! s8^\sostenuto s2 |
  s2. |

  \barNumberCheck 65
  s4\< s16 s\! s8 s4\< |
  s8 s\! s2 |
  s2 s4\> |
  s2 s4\! |
  s4 s2\cresc |
  s2. * 3 |

  \barNumberCheck 73
  s2. * 3 |
  s2 s8 s\! |
  s4\> s8\! s s4\> |
  s8 s\! s4\> s8 s\! |
  s2-\tweak X-offset -2 ^\riten s4^\dimm |
  s2. |

  \barNumberCheck 81
  s2\> s4\! |
  s4 s2^\rall |
  s2\> s4\! |
  s2. |
  s2.\pp |
  s2. * 3 |

  \barNumberCheck 89
  s2\p\> s8 s\! |
  s2\< s8 s\! |
  s2. * 2 |
  s2.\< |
  s2. |
  s2 s4\! |
  s2. |

  \barNumberCheck 97
  s2.\> |
  s2 s4\! |
  \repeat unfold 3 { s2\> s4\! | }
  s2\< s4\! |
  s2.\< |
  s2 s4\! |

  \barNumberCheck 105
  s2\> s4\! |
  s2\< s4\! |
  s2. * 2 |
  s2.\< |
  s2. * 2 |
  s8 s\! s2 |

  \barNumberCheck 113
  s2.\> |
  s2 s4\! |
  s2\> s4\! |
  s4\> s\! s |
  s4\> s\! s |
  s4\> s\! s\< |
  s2 s4\! |
  s2\> s4\! |

  \barNumberCheck 121
  s2\fz s4\< |
  s4 s\! s |
  s2\fz s4\< |
  s4 s\! s |
  s4 s\fz s\< |
  s4. s8\! s\> s16 s\! |
  s4 s\fz s\< |
  s4 s\! s |

  \barNumberCheck 129
  s2\fz s4\< |
  s8 s\! s2 |
  s4 s\fz s\< |
  s8 s\! s2 |
  s2.\fz |
  s2.\pp |
  s2\< s8 s\! |
  s2. |

  \barNumberCheck 137
  s2\fz s4\< |
  s4 s\! s |
  s2\fz s4\< |
  s4 s\! s |
  s4 s\fz s\< |
  s4 s\! s |
  s4 s\fz s\< |
  s4 s\! s |

  \barNumberCheck 145
  s2.\fz |
  s2. * 3 |
  s2.\fz |
  s2. |
  s2\pp s4\< |
  s2\> s4\! |
}

pedal = {
  \override TextScript.Y-offset = 0
  \partial 4 s4
  \repeat unfold 3 { s2\sustainOn s4\sustainOff | }
  s2.\sustainOn |
  s2. |
  s2 s4\sustainOff |
  s2\sustainOn s4\sustainOff |
  s2. |

  \barNumberCheck 9
  s2\sustainOn s4\sustainOff |
  s2. |
  \repeat unfold 5 { s2\sustainOn s4\sustainOff | }
  s2.\sustainOn |

  \barNumberCheck 17
  s2. |
  s2 s8 s\sustainOff |
  \repeat unfold 6 { s2\sustainOn s4\sustainOff | }

  \barNumberCheck 25
  \repeat unfold 3 { s2\sustainOn s4\sustainOff | }
  s2.\sustainOn |
  s2. |
  s2 s4\sustainOff |
  s2\sustainOn s4\sustainOff |
  s2. |

  \barNumberCheck 33
  s2\sustainOn s4\sustainOff |
  s2.
  \repeat unfold 5 { s2\sustainOn s4\sustainOff | }
  s2.\sustainOn |

  \barNumberCheck 41
  s2. |
  s2 s4\sustainOff |
  \repeat unfold 4 { s2\sustainOn s4\sustainOff | }
  s2.\sustainOn
  s2. |

  \barNumberCheck 49
  s2. |
  \override SustainPedal.Y-offset = -3
  s2 s4\sustainOff |
  s2.\sustainOn |
  s2. |
  s2 s4\sustainOff |
  s2\sustainOn s4\sustainOff |
  \revert SustainPedal.Y-offset
  s2.\sustainOn |
  s2 s4\sustainOff |

  \barNumberCheck 57
  s2\sustainOn s4\sustainOff |
  s2\sustainOn s4\sustainOff |
  s2.\sustainOn |
  s2. |
  s2 s4\sustainOff |
  s2\sustainOn s4\sustainOff |
  s2.\sustainOn |
  s2 s4\sustainOff |

  \barNumberCheck 65
  s2\sustainOn s4\sustainOff |
  s2.\sustainOn |
  s2 s4\sustainOff |
  s2\sustainOn s4\sustainOff |
  \repeat unfold 4 { s2\sustainOn s4\sustainOff | }

  \barNumberCheck 73
  \repeat unfold 2 { s2\sustainOn s4\sustainOff | }
  s2.\sustainOn |
  s2 s4\sustainOff |
  s2. * 3 |
  s4 s\sustainOn s8 s\sustainOff |

  \barNumberCheck 81
}

forceBreaks = {
  \partial 4 s4
  \repeat unfold 6 { s2.\noBreak } s2.\noPageBreak\break
  %{  8 %} \repeat unfold 7 { s2.\noBreak } s2.\noPageBreak\break
  %{ 16 %} \repeat unfold 8 { s2.\noBreak } s2.\noPageBreak\break
  %{ 25 %} \repeat unfold 7 { s2.\noBreak } s2.\noPageBreak\break
  %{ 33 %} \repeat unfold 6 { s2.\noBreak } s2.\pageBreak

  %{ 40 %} \repeat unfold 7 { s2.\noBreak } s2.\noPageBreak\break
  %{ 48 %} \repeat unfold 6 { s2.\noBreak } s2.\noPageBreak\break
  %{ 55 %} \repeat unfold 6 { s2.\noBreak } s2.\noPageBreak\break
  %{ 62 %} \repeat unfold 6 { s2.\noBreak } s2.\noPageBreak\break
  %{ 69 %} \repeat unfold 5 { s2.\noBreak } s2.\pageBreak

  %{ 75 %} \repeat unfold 5 { s2.\noBreak } s2.\noPageBreak\break
  %{ 81 %} \repeat unfold 7 { s2.\noBreak } s2.\noPageBreak\break
  %{ 89 %} \repeat unfold 7 { s2.\noBreak } s2.\noPageBreak\break
  %{ 97 %} \repeat unfold 7 { s2.\noBreak } s2.\noPageBreak\break
  %{ 105 %} \repeat unfold 7 { s2.\noBreak } s2.\noPageBreak\break
  %{ 113 %} \repeat unfold 7 { s2.\noBreak } s2.\pageBreak

  %{ 121 %} \repeat unfold 5 { s2.\noBreak } s2.\noPageBreak\break
  %{ 127 %} \repeat unfold 5 { s2.\noBreak } s2.\noPageBreak\break
  %{ 133 %} \repeat unfold 7 { s2.\noBreak } s2.\noPageBreak\break
  %{ 141 %} \repeat unfold 5 { s2.\noBreak } s2.\noPageBreak\break
}

nocturne-six-header = \header {
  opus = "Opus 10, No 3"
  copyright = \markup {
    "This work is licensed under a"
    \with-url #"https://creativecommons.org/licenses/by-sa/4.0/"
    "Creative Commons Attribution-ShareAlike 4.0 License"
  }
}

nocturne-six-layout = \layout {
  \context {
   \Score
   \override Slur.details.free-head-distance = #1
   \omit BarNumber
  }
}

nocturne-six-music = <<
  \new PianoStaff \with { instrumentName = \markup \huge "No. 6" } <<
    \new Staff = "upper" \rightHand
    \new Dynamics = "dynamics" \dynamics
    \new Staff = "lower" \leftHand
    \new Dynamics = "pedal" \pedal
    \new Devnull \forceBreaks
  >>
>>

nocturne-six-midi = \book {
  \bookOutputName "nocturne-op15-no3"
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
