\version "2.18.2"

\header {
  title = "Shape of My Heart"
  composer = "Sting"
}
melody =
{
  \time 4/4

  a'8\3^\markup { \fret-diagram-terse #"14;x;11;14;x;x;" }fis16\6
  des'8\4 a'8.\3 <gis'\3 e\6>8^\markup { \fret-diagram-terse
  #"12;x;11;13;x;x;" }e16\6 des'8\4 gis'8.\3 | <fis'\3 d\6>8^\markup {
  \fret-diagram-terse #"10;x;9;11;x;x;" } d16\6 ces'8\4 fis'8.\3
  <des\6~ ges'\3~>8^\markup { \fret-diagram-terse #"9;x;9;11;x;x;" }
  <des\6~ b\4 ges'\3>8 <des\6~ f'\3~>8 <des\6 b\4 f'\3 >8 |

  \hideNotes \grace {f'\3 \glissando} \unHideNotes a'8\3^\markup {
  \fret-diagram-terse #"14;x;12;14;x;x;" } fis16\6 d'8\4 a'8.\3
  <gis'\3 e\6>8^\markup { \fret-diagram-terse #"12;x;11;13;x;x;" }
  e16\6 des'8\4 gis'8.\3 | <fis'\3 d\6>8^\markup { \fret-diagram-terse
  #"10;x;9;11;x;x;" } d16\6 ces'8\4 fis'8.\3 <des\6~ ges'\3~>8^\markup
  { \fret-diagram-terse #"9;x;9;11;x;x;" } <des\6~ b\4 ges'\3>8
  <des\6~ f'\3~>8 <des\6 b\4 f'\3>8 |

  d8\6^\markup { \fret-diagram #"6-10;5-x;4-9;3-11;2-10;1-x;" } 
  b16\4 fis'8.\3 d8\6 a'8.\2 fis'8.\3 d8\6 |
  <a,\6~ e\4 a\3~>16^\markup{
   \fret-diagram-verbose #'((barre 4 3 2) (place-fret 4 2) (place-fret
  3 2) (place-fret 6 5) (mute 5) (place-fret 3 4) (mute 2) (mute 1))}
  <a,\6 e\4 b\3>8 <a,\6~ e\4~ a\3~>16 <a,\6 e\4 a\3>4  
  cis8\5^\markup { \fret-diagram-terse #"x;4;6;x;6;x;" } gis8\4
  eis'8\2 gis8\4 | <d\5 a\4 fis'\2>8.\arpeggio^\markup { 
   \fret-diagram-verbose #'((barre 5 2 4) (place-fret 5 5) (place-fret
  4 7) (place-fret 2 7) (place-fret 2 5) (mute 1) (mute 6))} fes'8.\2
  d'8\3 
  <gis,\6 fis\4 b\3 cis'\2 fis'\1>8.\arpeggio^\markup { \fret-diagram-verbose
  #'((place-fret 6 4) (place-fret 4 4) (place-fret 3 4) (place-fret 2
  2) (place-fret 1 2) (barre 5 1 2) (mute 5))}
  b8.\3 a8\3 | 
  <fis,\6 cis\5 fis\4 a\3 cis'\2 fis'\1>1\arpeggio^\markup { \fret-diagram-terse #"2-(;4;4;2;2;2-);" } |

}
cord = \chordmode { r1 r1 r1 r1 d:6 }
\score 
{
    % \new ChordNames { \cord }
    \new TabStaff 
    {
        \tabFullNotation
        \tempo 4 = 80 
        % \clef tenor
        \key a \minor
        \melody
    }
  \layout 
  { 
    \context 
    {
      \Score
      \override Glissando.minimum-length = #4
      \override Glissando.springs-and-rods =
                          #ly:spanner::set-spacing-rods
      % \override Glissando.thickness = #2
    }
  }
}

\score 
{
    \new TabStaff 
    {
        \tabFullNotation
        \tempo 4 = 80 
        % \clef tenor
        \key c \major
        \melody
    }
  \midi { }
}
