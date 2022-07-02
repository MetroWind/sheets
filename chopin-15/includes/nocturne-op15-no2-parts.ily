%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.22.1"
\language "english"

\include "global-variables.ily"
\include "articulate.ly"

voiceFive = #(context-spec-music (make-voice-props-set 4) 'Voice)

global = {
  \time 2/4
  \key fs \major
  \accidentalStyle piano
}

rightHandUpper = \relative {
  \oneVoice
  \stemUp
  \partial 8 as'16.->( b32
  as16^\> gs es cs-1\! cs8-. cs-.) |
  cs8->~( cs32 fs as ds cs8\noBeam) as16.->( b32 |
  \omit TupletBracket \tupletDown
  \tuplet 5/4 { as16^\> gs es d-1 cs-2)\! } cs8-.-1( cs-.) |
  cs8->~( \tuplet 5/4 { cs32 fs as fs ds' } cs8-^\noBeam) b16.->( cs32 |
  b16^\> as fss ds)\! ds8-.( ds-.) |
  ds8-^ fs'->~([ fs16 ds fs, gs] |
  as8-.\noBeam) b16.->( as32 gs8[\startTrillSpan 
    \appoggiatura { fss16\stopTrillSpan gs } as16) r32 gs]( |
  fs8 es16.->-4 ds32 <gs, cs>8-^\noBeam)
    \magnifyMusic 0.63 { \scaleDurations 2/3 { \omitOneAccidental as16*1/8_([ 
    cs fs] } } as16.)^\( b32*1/2 |
    
  \barNumberCheck 9
  \magnifyMusic 0.63 { \forceHShiftD b,16*1/8_([ es] \forceHShiftOff } 
    as16*3/4)[ gs16 es cs\)] cs8_._( cs_.) |
  cs8~( cs32 fs as ds cs8-^\noBeam) \tuplet 7/4 { as32( b as gss as cs bs) } |
  \tupletNumberOff
  \magnifyMusic 0.63 {
    \override Fingering.font-size = 0
    \tuplet 30/4 { b8^\leggiero([ as b) as( a gs) a( gs a) gs( g fs) g( fs g)
    fs\( f e es fs es ds( es fs) as( gs es-1 fs ds-1 gs-4)\)] } 
  } |
  \revert Fingering.font-size \tupletNumberOn \tupletUp
  \slashedGrace { gs8*1/2 } cs,8~([ \tuplet 5/4 { cs32 fs as fs'-.) r64 ds]( }
    cs8\noBeam) \tupletDown \tuplet 6/4 { gss32->( as b as e' ds-4 } |
  \tuplet 5/4 { ds16-.-5 cs-.-3 as-. fss-. as-.) } e16.->([ ds32)]
    \tuplet 6/4 { ds32( css ds fs e ds) } |
  \stemDown
  \tuplet 3/2 { ds16-.-\moveConForza^\conForza([ fs'-. ds-.)] } fs'8->~([ 
    fs32 ds b gs-4 fs ds \tuplet 3/2 { b32 fs-2 gs] } |
  \stemUp
  as8-.) b16.->( as32 gs8[\startTrillSpan 
    \appoggiatura { fss16\stopTrillSpan gs } as16) r32 gs]( |
  fs4) r8 es16.->( fs32) |
  
  \barNumberCheck 17
  \stemDown
  gs8-\threeOne(_\p\< cs16. ds32 es8-. es-.)\!
  \tupletNumberOff
  es4*1/4-> \stemUp \magnifyMusic 0.63 { 
    \tuplet 14/3 { e8_([^\dolcissSmall ds d cs c b as] } } \stemDown a4^~)( |
  \tupletNumberOn
  a8 cs16. es32 \tuplet 3/2 { fs8-. fs-. fs-.) } |
  \tupletNumberOff
  fs4*1/4-> \stemUp \magnifyMusic 0.63 {
    \tuplet 16/3 { f8_([_\> e ds d cs c b as]\! } } \stemDown a4)~( |
  a8 ds16. es32 fs8 fs16. fs32) |
  \tupletNumberOn
  fs8.->( es16) \tuplet 6/4 { ds16( es ds css ds es) } |
  ds8.( css16) \tuplet 3/2 { b16([^\conForza cs b] } 
    \tuplet 5/4 { as32 b ds cs b) } |
  \voiceThree \tupletNumberOff 
  b8-> as~ \tuplet 6/4 { as16( as-.\< as-. as-. as-. b-.)\! } |
  
  \barNumberCheck 25
  \tag layout { \tempo "doppio movimento" }
  \tag midi   { \tempo 4 = 80 }
  \scaleDurations 4/5 { 
    es8.*4/3-\slurShapeC ( ds16 \dynamicUnderSlur cs8.*4/3^\< ds16 |
    es8.*4/3 fs16 gs8.*4/3 as16\! |
    gs8.*4/3-> es16 fs8.*4/3-> ds16 |
  } 
  \insideSlur es2*1/2-> \scaleDurations 4/5 { s4 \hideNotes es16) 
                                              \unHideNotes }  |
  \scaleDurations 4/5 { 
    es8.*4/3 ds16 cs8.*4/3^\< ds16 |
    es8.*4/3 fs16 gs8.*4/3 as16\! |
    gs8.*4/3-> es16 fs8.*4/3-> ds16 |
    es8.*4/3^\< es16 fss8.*4/3 fss16\! |
  }
  
  \barNumberCheck 33
  \override Beam.breakable = ##t
  \beamPositionsS gs8.*2/3[ \scaleDurations 2/3 { s8 fs16] } 
    \beamPositionsU e8.*2/3[^\< \scaleDurations 2/3 { s8 fs16] } |
  \beamPositionsV gs8.*2/3[ \scaleDurations 2/3 { s8 a16]\! }
    b8.*2/3[ \scaleDurations 2/3 { s8 cs16] } |
  b8.*2/3->[ \scaleDurations 2/3 { s8 gs16] } 
    a8.*2/3->[ \scaleDurations 2/3 { s8 fs16] } |
  gs2*1/2->-\slurShapeD( s8 \scaleDurations 2/3 { s8 \hideNotes gs16) 
                                                  \unHideNotes } |
  \beamPositionsS gs8.*2/3[ \scaleDurations 2/3 { s8 fs16] } 
    \beamPositionsU e8.*2/3[^\< \scaleDurations 2/3 { s8 fs16] } |
  \beamPositionsV gs8.*2/3[ \scaleDurations 2/3 { s8 a16] }
    b8.*2/3[ \scaleDurations 2/3 { s8 cs16]\! } |
  d8.*2/3->[ \scaleDurations 2/3 { s8 cs16] }
    d8.*2/3->[ \scaleDurations 2/3 { s8 cs16] } |
  d8.*2/3->[^\< \scaleDurations 2/3 { s8 cs16]\! }
    e8.*2/3[^\< \scaleDurations 2/3 { s8 d16]\! } |
    
  \barNumberCheck 41
  d8.*2/3->[ \scaleDurations 2/3 { s8 cs16] } 
    cs8.*2/3->[ \scaleDurations 2/3 { s8 b16] } |
  a8.*2/3->[ \scaleDurations 2/3 { s8 gs16] }
    gs8.*2/3->[ \scaleDurations 2/3 { s8 fs16] } |
  fs8.*2/3[ \scaleDurations 2/3 { s8 es16] } 
    d8.*2/3->[ \scaleDurations 2/3 { s8 cs16] } |
  d8.*2/3->[ \scaleDurations 2/3 { s8 cs16] }
    d8.*2/3->[ \scaleDurations 2/3 { s8 cs16] } |
  d8.*2/3[ \scaleDurations 2/3 { s8 cs16] } \oneVoice r r32 \voiceThree
    \clef bass es,,\noBeam( \scaleDurations 2/3 { gs16 cs, cs') } |
  d8.*2/3->([ \scaleDurations 2/3 { s8 cs16)] }
    d8.*2/3->([ \scaleDurations 2/3 { s8 cs16)] } |
  \tag midi { \tempo 4 = 70 }
  d8.*2/3->([ \scaleDurations 2/3 { s8 cs16)] }
    \tag midi { \tempo 4 = 60 }
    d8.*2/3->([ \scaleDurations 2/3 { s8 cs16)] } |
  \tag midi { \tempo 4 = 50 }
  d8.*2/3->([ \scaleDurations 2/3 { s8 cs16)] } \oneVoice 
    \tag midi { \tempo 4 = 20 } r8\fermata
    \clef treble \tag layout { \tempo "a Tempo I" } 
                 \tag midi   { \tempo 4 = 40 }
    as'16.->( b32) |
  
  \barNumberCheck 49
  \stemUp
  as16( gs es16. cs32) cs8-.( cs-.) |
  \tupletNumberOn
  cs8->~( cs32 fs as ds cs8\noBeam) \tuplet 7/4 { as32( b as gss as cs ds) } |
  \tupletNumberOff
  \magnifyMusic 0.63 { \tuplet 40/4 { 
    b8([ gs' b, as fss' as, a fs' a, gs es' gs, g e' g, fs ds' fs, es)
    d'( cs c b as a gs g fs es fs es ds es fs as gs es fs ds gs)]
  } } |
  \tupletNumberOn
  \slashedGrace { gs8*1/64 } cs,8->~( \tuplet 7/4 { 
    cs32[ fs as cs as fs') r64 ds]( } cs8\noBeam)  b16.( cs32) |
  b16( as fss16. ds32 ds8-. ds-.) |
  \stemDown
  \tuplet 3/2 { ds16-.[^\conForza fs'-. ds-.] } fs'8~-\slurPositionA ( 
    \tupletNumberOff 
    \tuplet 3/2 4 { fs32 as-5 gs fs ds b as-5 gs fs ds fs,-1 gs } |
  \stemUp
  as8-^\noBeam) b16.^>( as32  gs8[ \startTrillSpan
    \grace { fss16*1/2[ \stopTrillSpan gs] } as16.^> gs32)] |
  \tupletNumberOn
  \voiceOne
  ds'16.->([ cs32] \tuplet 3/2 { cs16 b as } \grace { fss16*1/2[ gs] }
    gs8[ \startTrillSpan \grace { fss16*1/2[ \stopTrillSpan gs] } 
    as16-> \moveRestA r32 gs)_(] |
  
  \barNumberCheck 57
  \tupletNumberOff \tuplet 3/2 { fs16)_(^\([ fs' es] } 
    \tupletNumberOn \tupletDown \moveTupletNumberA \tuplet 5/4 { 
    gs32-\moveFingerA-5) g-.-5 fs-.-4 f-.-5 e-.-5 } \tupletNumberOff 
    \tuplet 3/2 4 { ds-.[ b-. d-. as-. cs-. a-.] c-.[ gs-. b->~]( b[ 
                    as gs)]\) } |
  fs8-.\noBeam \ottava 1 \stemDown ds'''8->~([ ds16 \tupletNumberOn
    \tuplet 3/2 { cs32 as fs)] } b16([ \tuplet 3/2 { as32 fs cs)] } |
  \ottava 0 gs'16([ \tuplet 3/2 { fs32 cs as)] } \tupletNumberOff
    ds16([ \tuplet 3/2 { cs32 as fs)] } b16([ \tuplet 3/2 { as32 fs cs)] }
    gs'16([ \tuplet 3/2 { fs32 cs as)] } |
  \tupletNumberOn 
  \tuplet 6/4 { ds32([ cs as fs b as] } \tupletNumberOff \tuplet 6/4 {
    fs32[ cs gs' fs cs as]  \staffDown \stemUp ds[ cs as fs cs as']
    ds[ cs as fs cs as']
  } |
  \tuplet 6/4 { ds32[ cs as fs cs as']  ds[ cs as fs cs as'] 
                ds[ cs as fs cs as']  ds[ cs as fs cs cs']) } |
  \staffUp \oneVoice as'2\fermata | 
  \bar "|."
}

rightHandMiddle = \relative {
  \override Beam.details.collision-padding = 0
  \override Beam.breakable = ##t 
  \voiceOne
  \partial 8 s8
  s2 * 8 |
  
  \barNumberCheck 9
  s2 * 8 |
  
  \barNumberCheck 17 
  s2 * 8 |
  
  \barNumberCheck 25
  \scaleDurations 4/5 { 
    s16 gs' b8*1/2 \beamPositionsB ds,8[  
      cs8*1/2] gs'16[ b8*1/2] \beamPositionsC ds,8[ |
    es8*1/2] b'16 cs8*1/2 \beamPositionsD fs,8[  
      gs8*1/2] b16[ cs8*1/2] \beamPositionsE as8[ |
    gs8*1/2] b16[ cs8*1/2] \beamPositionsF es,8[
      fs8*1/2] gss16[ bs8*1/2] ds,8 |
    s8. a'8[\> gs]\! s8. |
    s16 gs b8*1/2 \beamPositionsB ds,8[  
      cs8*1/2] gs'16[ b8*1/2] \beamPositionsC ds,8[ |
    es8*1/2] b'16 cs8*1/2 \beamPositionsD fs,8[  
      gs8*1/2] b16[ cs8*1/2] \beamPositionsE as8[ |
    gs8*1/2] b16[ cs8*1/2] \beamPositionsF es,8[
      fs8*1/2] gss16[ bs8*1/2] \beamPositionsC ds,8[ | 
    es8*1/2] gs16[ cs8*1/2] \beamPositionsF es,8[  
      fss8*1/2] as16[ e'8*1/2] \beamPositionsD \forceStemLength 4.5 fss,8[ |
  }
  
  \barNumberCheck 33
  gs8*3/4] \beamPositionsT b32[ \scaleDurations 2/3 { e16] \beamPositionsJ 
    fs,8[ } e8*3/4] gs32[ \scaleDurations 2/3 { b16] \beamPositionsD fs8[ } | 
  gs8*3/4] \beamPositionsT b32[ \scaleDurations 2/3 { e16] \beamPositionsK 
    a,8[ } b8*3/4] e32[ \scaleDurations 2/3 { gs16] \beamPositionsL cs,8[ } |
  b8*3/4] e32[ \scaleDurations 2/3 { gs16] \beamPositionsM gs,8[ }
    a8*3/4] c32[ \scaleDurations 2/3 { fs16] s8 } |
  s8 \scaleDurations 2/3 { s16 \dynamicUnderSlur c8[^\> } b8]\! s8 |
  s16. \beamPositionsT b32[ \scaleDurations 2/3 { e16] \beamPositionsJ fs,8[ }
    e8*3/4] gs32[ \scaleDurations 2/3 { b16] \beamPositionsD fs8[ } | 
  gs8*3/4] \beamPositionsT b32[ \scaleDurations 2/3 { e16] \beamPositionsK 
    a,8[ } b8*3/4] e32[ \scaleDurations 2/3 { gs16] \beamPositionsN 
    \forceStemLength 4 cs,8[ } |
  d8*3/4] es32[ \scaleDurations 2/3 { gs16] \beamPositionsN cs,8[ }
    d8*3/4] fs32[ \scaleDurations 2/3 { a16] \beamPositionsN cs,8[ } |
  d8*3/4] es32[ \scaleDurations 2/3 { gs16] \beamPositionsG cs,8[ }
    e8*3/4] fs32[ \scaleDurations 2/3 { a16] \beamPositionsI d,8[ } |
  
  \barNumberCheck 41
  d8*3/4] es32[ \scaleDurations 2/3 { gs16] \beamPositionsW cs,8[ }
    cs8*3/4] d32[ \scaleDurations 2/3 { fs16] \beamPositionsH 
                                        \forceStemLength 4 b,8[ } |
  a8*3/4] b32[ \scaleDurations 2/3 { d16] \beamPositionsO gs,8[ } 
    gs8*3/4] b32[ \scaleDurations 2/3 { d16] \beamPositionsP fs,8[ } |
  fs8*3/4] gs32[ \scaleDurations 2/3 { b16] es,8 } 
    s8 \scaleDurations 2/3 { s16 \beamPositionsQ cs8[ } |
  d8] \scaleDurations 2/3 { s16 \beamPositionsQ cs8[ } 
    d8] \scaleDurations 2/3 { s16 \beamPositionsQ \forceStemLength 4 cs8[ } |
  d8] s8 s16 s32 \clef bass s s8 |
  \stemLengthB d,8 \scaleDurations 2/3 { s16 \beamPositionsR cs8[ } 
    d8] \scaleDurations 2/3 { s16 \beamPositionsR cs8[ } |
  d8] \scaleDurations 2/3 { s16 \beamPositionsR cs8[ } 
    d8] \scaleDurations 2/3 { s16 \beamPositionsR \forceStemLength 4 cs8[ } |
  d8] s4. |
  
  \barNumberCheck 49
}

rightHandLower = \relative {
  \voiceTwo
  \partial 8 s8
  s2 * 7 |
  s4 s8 \forceHShiftF as[ |
  
  \barNumberCheck 9
  \forceHShiftE b16*1/2] s16. s8 s4 |
  s2 * 7 |
  
  \barNumberCheck 17
  s2 * 7 |
  s4 es->~ |
  
  \barNumberCheck 25
  \omit TupletBracket
  \tuplet 5/4 { es16 gs b ds, ds' } \tuplet 5/4 { cs,16 gs' b ds, ds' } |
  \scaleDurations 4/5 {
    es,16 b' cs fs, fs'  gs, b cs as as' |
    gs,16 b cs es, es'  fs, gss bs ds, ds' |
    es,16 gs cs a cs  gs es cs' gs cs |
    es,16 gs b ds, ds'  cs, gs' b ds, ds' |
    es,16 b' cs fs, fs'  gs, b cs as as' |
    gs,16 b cs es, es'  fs, gss bs ds, ds' |
    es,16 gs cs es, es'  fss, as e' fss, fss' |
  }
  
  \barNumberCheck 33
  gs,16.[ b32] \tuplet 3/2 { e16 fs, fs' } e,16.[ gs32] 
    \tuplet 3/2 { b16 fs fs' } |
  gs,16.[ b32] \scaleDurations 2/3 { e16 a, a' }
    b,16.[ e32] \scaleDurations 2/3 { gs16 cs, cs' } |
  b,16.[ e32] \scaleDurations 2/3 { gs16 gs, gs' }
    a,16.[ c32] \scaleDurations 2/3 { fs16 fs, fs' } |
  gs,16.[ b32] \scaleDurations 2/3 { e16 c e }
    b16.[ gs32] \scaleDurations 2/3 { e'16 b e } |
  gs,16.[ b32] \scaleDurations2/3 { e16 fs, fs' } 
    e,16.[ gs32] \scaleDurations 2/3 { b16 fs fs' } |
  gs,16.[ b32] \scaleDurations 2/3 { e16 a, a' }
    b,16.[ e32] \scaleDurations 2/3 { gs16 cs, cs' } |
  d,16.[ es32] \scaleDurations 2/3 { gs16 cs, cs' }
    d,16.[ fs32] \scaleDurations 2/3 { a16 cs, cs' } |
  d,16.[ es32] \scaleDurations 2/3 { gs16 cs, cs' }
    e,16.[ fs32] \scaleDurations 2/3 { a16 d, d' } |
    
  \barNumberCheck 41
  d,16.[ es32] \scaleDurations 2/3 { gs16 cs, cs' }
    cs,16.[ d32] \scaleDurations 2/3 { fs16 b, b' } |
  a,16.[ b32] \scaleDurations 2/3 { d16 gs, gs' }
    gs,16.[ b32] \scaleDurations 2/3 { d16 fs, fs' } |
  fs,16.[ gs32] \scaleDurations 2/3 { b16 es, es' } 
    d16.[ es,32] \scaleDurations 2/3 { gs16 cs, cs' } |
  d,16.[ es32] \scaleDurations 2/3 { gs16 cs, cs' } 
    d,16.[ fs32] \scaleDurations 2/3 { a16 cs, cs' } |
  d,16.[ es32] \scaleDurations 2/3 { gs16 cs, cs' } 
    s16. \clef bass s32 \scaleDurations 2/3 { s16 cs,,8 } |
  d16.[ es32] \scaleDurations 2/3 { gs16 cs, cs' }
    d,16.[ fs32] \scaleDurations 2/3 { a16 cs, cs' } |
  d,16.[ es32] \scaleDurations 2/3 { gs16 cs, cs' }
    d,16.[_\dimm es32] \scaleDurations 2/3 { gs16 cs, cs' } |
  d,16.[ es32] \scaleDurations 2/3 { gs16 cs, cs' } s4 |
  
  \barNumberCheck 49
  s2 * 7 |
  fs4. es8 |
  
  \barNumberCheck 57
  fs4-\tieShapeB ~ fs8. es16 |
}

rightHand = <<
  \clef treble
  \global
  \mergeDifferentlyDottedOn
  \tempo "Larghetto" 4 = 40
  \new Voice \rightHandUpper
  \new Voice \rightHandMiddle 
  \new Voice \rightHandLower 
>>

leftHand = \relative {
  \clef bass
  \global
  \oneVoice
  \stemDown
  \partial 8 \tag layout { r8 }
             \tag midi   { s8\p }
  cs,8([ cs' <es b'> cs)] |
  fs,([ cs' <fs as> cs)] |
  cs,8([ cs' <es b'> cs)] |
  fs,8([ cs' <fs as cs>)] r |
  ds,8([ ds' <fss cs'> ds)] |
  <<
    { 
      \oneVoice gs,8-. <ds' gs b>( b-.) <ds gs~ ds'~> | 
      \voiceThree <gs ds'>8[ ds' bs cs16. b32] |
      s2 |
    }
    \\
    { 
      s2 | 
      \voiceFour cs,4.~ cs16. css32 | 
      <ds as'>8^([ <bs a'> <cs es>) <fs, cs' fs>]\arpeggio |
    }
    \\
    { s2 | s8 \voiceFive fs'4 \forceHShiftC es8 | fs4 s | }
  >> 
  
  \barNumberCheck 9
  \moveNoteColumnA cs,8^([ cs' <es b'> cs)] |
  fs,8([ cs' <fs as> cs)] |
  << { s8 d4 s8 } \\ { fs,^([ d' <gs b> cs,)] } >> |
  fs,8([ cs' <fs as cs>)] r | 
  ds,8([ ds' <fss cs'> ds)]
  gs,8([ <ds' gs b> <fs gs b ds> <gs b ds fs>)] |
  << { cs,2*1/4 ds'8[ bs cs16 r32 b] } \\ { cs,,8 fs'4-> es8 } >> |
  fs,8-.([ <as' cs>-. <fs as>-.)] r |
  
  \barNumberCheck 17
  \oneVoice
  cs,8\noBeam-\moveFzB\fz <gs'' cs es>([ <es gs cs> <gs cs es>)] |
  cs,8([ <a' cs fs> <fs a cs> <a cs fs>)] |
  <cs,, cs'>8\noBeam <a'' cs fs>([ <fs a cs> <a cs a'>)] |
  <c,, c'>8\noBeam <a'' d fs>([ <fs a d> <a d fs>)] |
  <b,, b'>8\noBeam <a'' ds fs>([ <fs a ds> <gss gss'>)] |
  <as,, as'>8\noBeam <es'' as css as'>\arpeggio <as,, as'>\noBeam 
    <es'' b' ds gss>\arpeggio |
  <as,, as'>8\noBeam <es'' css' as'>\arpeggio <as,, as'>\noBeam 
    <ds' gss fs'>\arpeggio |
  \omit TupletBracket \tupletUp \moveTupletNumberB
  \tuplet 6/4 { as,16\noBeam-\slurShapeE ^( css' as' es css' as) } r4 |
  
  \barNumberCheck 25
  cs,,8-. <cs' gs' b>4 gs8-.( |
  cs,8-.) <cs' gs' b>4 gs8-.( |
  cs,8-.) << { <gs'' b>8[ <gss bs>] } \\ { cs,4 } >> cs,8-. |
  << 
    { \scaleDurations 4/5 { gs''8*3/2_([ a8\> } gs)]\! } 
    \\ 
    { <cs, cs'>4. } 
  >> gs8-.( |
  cs,8-.) <cs' gs' b>4 gs8-.( |
  cs,8-.) <cs' gs' b>4 gs8-.( |
  cs,8-.) <cs' gs' b>([ <cs gss' bs>)] cs,-. |
  \stemDown
  <cs' gs' cs>8-. cs,-. <fss' as e'>-. <cs, cs'>-. |
  
  \barNumberCheck 33
  << { d'2-> } \\ { d,8 <e' gs b>4 q8 } >> |
  << { d2-> } \\ { d,8 <e' gs b>4 q8 } >> |
  << { d4. } \\ { d,8 <gs' b>[^( <fs c'>)] } >> \oneVoice d,8 |
  << { b''8->[ c^\> b\! gs] } \\ { <d e gs>2 } >> |
  << { d2-> } \\ { d,8 <e' gs b>4 q8 } >> |
  <d, d'>8 <e' gs b>4 <gs b>8 |
  <cs,, cs'>8 <gs'' b es> <cs,, cs'> <a'' fs'> |
  <cs,, cs'>8 <gs'' cs es> \stemDown <cs,, cs'> <fs' a d> |
  
  \barNumberCheck 41
  << { cs4 } \\ { <cs, cs'>8 <es' cs'> } >> <gs,, gs'>8 <fs'' b>~ |
  <fs b>8 << { <fs b>4*1/2-> b,4 } \\ { s8 b gs' } >> |
  \oneVoice
  cs,,8\noBeam <cs' gs'>([ d'->)]_\fz r |
  r4 <fs,, cs' a'>8\arpeggio r |
  <cs gs' es'>8\arpeggio r <d' d'>-> r |
  r4 <fs,, fs'>( |
  <cs cs'>4) r |
  R2 |
  
  \barNumberCheck 49
  \stemDown
  cs'8([ cs' <es b'> cs)] |
  fs,8([ cs' <fs as> cs)] |
  << { s8 d4 s8 } \\ { fs,8^([ d' <gs b> cs,)] } >> |
  fs,8([ cs' <fs as cs>)] r |
  ds,8([ ds' <fss cs'> ds)] |
  <gs,, gs'>8 <ds'' fs gs b> 
  <<
    {  
      \stemDown <b, b'>8 <fs'' gs b ds~> |
      \stemUp ds'8[ ds bs cs16. b32] |
      as8[ ds bs cs16. b32] |
    }
    \\
    {  
      s4 |
      s8 fs4 es16. b'32 |
      s2 |
    }
    \\
    {
      s4 |
      \stemDown cs,2_~ |
      cs4._~ cs16. cs32 |
    }
  >> 
  
  \barNumberCheck 57
  <<
    { 
      s8 ds'4 d16->_~_( \tupletNumberOff \omit TupletBracket
        \tuplet 3/2 { d32 cs b) } 
    }
    \\
    { <ds, as'>8-\slurShapeF ^( <bs a'>) <cs gs'>4 }
  >> |
  \oneVoice
  fs,,8-.\noBeam \tuplet 3/2 { <cs'' as'>16( q q } <fs as cs>8-. 
    <cs fs as>-.) |
  fs,8\noBeam <cs' fs as>16([ \tuplet 3/2 { q32-. q-. q-.] } <fs as cs>8-.
    <cs fs as>-.) |
  \stemDown <fs, cs' as'>8\arpeggio r r \voiceFour cs |
  <fs, fs'>4. cs'8 |
  \oneVoice fs,2\fermata |
}

dynamics = {
  \override TextScript.Y-offset = -0.5
  \partial 8 s8^\sostenuto
  s2 * 7 |
  s4 s8\< s16 s\! |
  
  \barNumberCheck 9
  s8\> s16\! s s4 |
  s8\> s\< s4\! |
  \tag layout { s2 | }
  \tag midi   { s2\p | }
  s2 * 5 |
  
  \barNumberCheck 17
  s2 * 2 |
  s8 s\< s s\! |
  \tag layout { s2^\ppEPocoRit | }
  \tag midi   { s2\pp | }
  s4.\< s8\! |
  s4 s8.\< s16\! |
  s2 |
  s4^\stringendo s16 s^\ritenuto s8 |
  
  \barNumberCheck 25
  \tag layout { s2^\sottoVoce | }
  \tag midi   { s2\p | }
  s2 * 5 |
  s8 s4.\cresc |
  s2 |
  
  \barNumberCheck 33
  s2\fz |
  s2 * 4 |
  s4 s\cresc |
  s2 * 2 |
  
  \barNumberCheck 41
  s4 s\! |
  s4 s16 s8.^\decrescm |
  s2 * 3 |
  s8 s4.\pp |
  \set crescendoText = \markup \large "molto rallentando"
  \set crescendoSpanner = #'text
  s16. s32\< s4 s16 s32 s\! |
  \set crescendoText = \markup \large "smorz."
  s8.\< s32 s\! s8 \tag layout { s8^\dolce | }
                   \tag midi   { s8\p | }
                   
  \barNumberCheck 49
  \set crescendoSpanner = #'hairpin 
  s8.\> s16\! s4 |
  s8 s16\< s32 s\! s8 s16\> s\! |
  s2^\leggierissimo |
  s8 s16\< s\! s8 s16.\> s32\! |
  s8.\> s16\! s4 |
  s8 s\fz s\> s16 s32 s\! |
  s2 * 2 |
  
  \barNumberCheck 57
  s4 s16^\dimm s^\rall s8 |
  s8\pp s\fz\> s16 s\! s8 |
  s2^\dimm |
  s2 |
  s2^\smorzando |
  s2 |
}

pedal = {
  \override TextScript.Y-offset = 0
  \partial 8 s8
  \repeat unfold 3 { s4.\sustainOn s16 s\sustainOff | }
  s4\sustainOn s16 s\sustainOff s8 |
  s4.\sustainOn s16 s\sustainOff |
  s2 * 3 |
  
  \barNumberCheck 9 
  s4-\movePedalA \sustainOn s8 s16 s\sustainOff |
  s4.\sustainOn s16 s\sustainOff |
  s4.\sustainOn s8\sustainOff |
  s16\sustainOn s^\iDuePed s4 s16 s\sustainOff |
  s4.\sustainOn s16 s\sustainOff |
  s4.\sustainOn s16 s\sustainOff |
  s4\sustainOn s16 s\sustainOff s8 |
  s2 |
  
  \barNumberCheck 17
  s4.\sustainOn s16 s\sustainOff |
  s16\sustainOn s^\unaCordaM s4 s16 s\sustainOff |
  s4.\sustainOn s16 s\sustainOff |
  s16\sustainOn s^\unaCordaM s4 s16 s\sustainOff |
  s4.\sustainOn s16 s\sustainOff |
  s8.\sustainOn s16\sustainOff s8.\sustainOn s16\sustainOff |
  s2 * 2 |
  
  \barNumberCheck 25
  s2\sustainOn |
  s2 |
  s4 s\sustainOff\sustainOn |
  s2\sustainOff |
  s2\sustainOn |
  s2 |
  s4 s8.\sustainOff\sustainOn s16\sustainOff |
  s4\sustainOn s8.\sustainOff\sustainOn s16\sustainOff |
  
  \barNumberCheck 33
  s2\sustainOn |
  s2 |
  s4 s\sustainOff |
  s2 |
  s2\sustainOn |
  s4. s16 s\sustainOff |
  s4\sustainOn s8.\sustainOff\sustainOn s16\sustainOff |
  s4\sustainOn s8.\sustainOff\sustainOn s16\sustainOff |
  
  \barNumberCheck 41
  s4\sustainOn s\sustainOff\sustainOn |
  s4. s16. s32\sustainOff |
  s4\sustainOn s\sustainOff |
  s4 s8\sustainOn s\sustainOff |
  s4-\movePedalB \sustainOn s-\movePedalB \sustainOff |
  s4 s8\sustainOn s16. s32\sustainOff |
  s4\sustainOn s\sustainOff |
  s2 |
  
  \barNumberCheck 49
  s16\sustainOn s^\unaCordaM s4 s16 s\sustainOff |
  s4.\sustainOn s16 s32 s\sustainOff |
  s4.\sustainOn s8\sustainOff |
  s4\sustainOn s16 s\sustainOff s8 |
  s4.\sustainOn s16 s\sustainOff |
  s2 * 3 |
  
  \barNumberCheck 57
  s2 |
  s16\sustainOn s^\iDuePed s4. |
  s2 |
  s4 s8\sustainOff s16.\sustainOn s32\sustainOff |
  s4.\sustainOn s16.\sustainOff\sustainOn s32\sustainOff |
  s2\sustainOn |
}

ossiaPart = \relative {
  \global
  \stopStaff
  \partial 8 s8
  s2 * 7 |
  s4. \startStaff
  <<
    { 
      \magnifyMusic 0.63 { \slashFlag as8*1/32\noBeam^\ossia 
        as16*1/16[ cs fs] } as16. b32*1/2 | \stopStaff s8
    }
    \\
    { \forceHShiftF as,8*15/16[ \hideNotes b8] }
  >> 
  s4. |
}

forceBreaks = {
  \partial 8 s8
  s2\noBreak s2\noBreak s2\noPageBreak\break
  %{  4 %} s2\noBreak s2\noBreak s2\noBreak s2\noPageBreak\break
  %{  8 %} s2\noBreak s2\noBreak s2\noPageBreak\break
  %{ 11 %} s2\noBreak s2\noPageBreak\break
  %{ 13 %} s2\noBreak s2\noBreak s2\noBreak s2\pageBreak
  
  %{ 17 %} s2\noBreak s2\noBreak s2\noBreak s2\noPageBreak\break
  %{ 21 %} s2\noBreak s2\noBreak s2\noBreak s2\noPageBreak\break
  %{ 25 %} s2\noBreak s2\noBreak s2\noBreak s2\noPageBreak\break
  %{ 29 %} s2\noBreak s2\noBreak s2\noBreak s2\noPageBreak\break
  %{ 33 %} s2\noBreak s2\noBreak s2\pageBreak
  
  %{ 36 %} s2\noBreak s2\noBreak s2\noPageBreak\break
  %{ 39 %} s2\noBreak s2\noBreak s2\noPageBreak\break
  %{ 42 %} s2\noBreak s2\noBreak s2\noPageBreak\break
  %{ 45 %} s2\noBreak s2\noBreak s2\noPageBreak\break
  %{ 48 %} s2\noBreak s2\noBreak s2\pageBreak
  
  %{ 51 %} s2\noBreak s2\noPageBreak\break
  %{ 53 %} s2\noBreak s2\noBreak s2\noPageBreak\break
  %{ 56 %} s2\noBreak s2\noPageBreak\break
  %{ 58 %} s2\noBreak s2\noPageBreak\break
}

nocturne-five-header = \header { 
  opus = "Opus 10, No 2"
  copyright = \markup { 
    "This work is licensed under a" 
    \with-url #"https://creativecommons.org/licenses/by-sa/4.0/" 
    "Creative Commons Attribution-ShareAlike 4.0 License" 
  }
}

nocturne-five-layout = \layout {
  \context {
   \Score
   \remove System_start_delimiter_engraver
   \override Slur.details.free-head-distance = #1
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

nocturne-five-music = <<
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
    \with { instrumentName = \markup \huge "No. 5" } <<
    \new Staff = "upper" \rightHand
    \new Dynamics = "dynamics" \dynamics
    \new Staff = "lower" \leftHand
    \new Dynamics = "pedal" \pedal
    \new Devnull \forceBreaks
  >>
>>

nocturne-five-midi = \book {
  \bookOutputName "nocturne-op15-no2"
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

#(ly:expect-warning-times 4 "weird stem size")
