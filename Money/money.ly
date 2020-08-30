\version "2.18.2"

\header {
  title = "Money"
  composer = "Pink Floyd"
}
melody =
{
  \transpose c d
  { 
  \time 7/4
    \repeat volta 3
    {a,4\5^\markup { \fret-diagram-terse #"x;2;4;4;x;x;" }^"Intro." a8.\3 e16\4 a,4\5 e,4 g,4 a,4 c4 |}
    \repeat volta 4
    {a,4\5^"Verse" a8.\3 e16\4 a,4\5 e,4 g,4 a,4 c4 |}

  \time 3/4 e4^"Chorus" e4 e8. c16 e,4 g,4 b,4 e4 ees4 d8. a,16 d,4 f,4 g,4
  \time 2/4 a,4 c4 | 
  \time 7/4
    \repeat volta 3
    {a,4\5^\markup { \fret-diagram-terse #"x;2;4;4;x;x;" }^"Verse" a8.\3 e16\4 a,4\5 e,4 g,4 a,4 c4 |}
  }
}
  
\score 
{
    << \new Staff 
    {
        \tempo 4 = 120
        \clef bass
        \key b \minor
        \melody
    }
    \new TabStaff 
    {
        \tabFullNotation
        \tempo 4 = 120
        % \clef tenor
        \key d \minor
        \melody
    }>>
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
        \tempo 4 = 120
        % \clef tenor
        \key c \major
        \melody
    }
  \midi { }
}
