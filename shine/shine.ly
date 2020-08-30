\version "2.18.2"

\header {
  title = "Shine on Your Crazy Diamond"
  composer = "Pink Floyd"
}
melody =
{
  \transpose c bes
  { 
        \tempo 4 = 80
          \time 3/4
    
    g'2\2^"Intro." \bendAfter #+2 g'4\2 g'2.\2^"+2" |r2.| r2 \tuplet 3/2 {a8\3
    c'\2 d'\2} | d'2\2 \bendAfter #+2 d'4\2 | d'2.\2^"+2" | r2. |
    d'8\2^"+2"\bendAfter #-2 c'4.\2 d'4\2 | d'2\2^"+2" d'4\2
    d'2.\2^"+2" r2. | b16\2 c'16\2 b16\2 a16\3 b8\2 g8\3 \tuplet
    3/2{g8\3 e\4 g\3} | r2. | \tuplet 3/2 {a8\3 ^"bend+3" (\hideNotes
    c'\3 \unHideNotes a\3)} a2\3\bendAfter #+3 | a8\3^"+3"
    \bendAfter#-3 g16\3 a16\3 a2\3 \bendAfter#+3 | r2. | a4\3^"+3"
    \bendAfter#-3 g8\3 a8\3 r4 | r2. | r4 d'4\2\bendAfter#+2 g'4\1 |
    g'2.\2\bendAfter#+2 | r2. | r4 g'4\2\bendAfter#+2 a'4\1 | c''2.\1
    | c''8\1\bendAfter#+2 c''8\1~ c''2\1 | d'4\2^"+2"\bendAfter#-2
    c'2\2 | e8\4 g8\3 a2\3 | a8\3\bendAfter#+3 a8\3^"+3"
    a2\3^"+3"\bendAfter#-3 | g8\3 a8\3~ a2\3 | r2. |
    d'4\2^"+2"\bendAfter#-2 c'8\2 d'8\2 r4 | d'2.\2^"+2" | d'4\2
    d'2\2^"+2" | r2. | d'4\2\bendAfter#+2 g'4\1 r4 |
    g'8\2\bendAfter#+2 a'8\1 g'2\2\bendAfter#+2 |
    g'8\2^"+2"\bendAfter#-2 e'8\2 d'2\3\bendAfter#+2 |
    d'8^"+2"\3\bendAfter#-2 c'8\3 d'2\3 | \hideNotes \grace {f\4
    \glissando} \unHideNotes a8\4 c'8\3~c'2\3 | d'8\3^"+2" \bendAfter #-2 c'16\3
    d'16\3 d'2\3^"+2" | r4 d'4\3\bendAfter#+2 g'4\2 |
    d'2.\3\bendAfter#+2 | g'8\2\bendAfter#+2 a'8\1 c''2\1 | e'8\2
    c''8\1 d''2\1\bendAfter#+2 | c''8\1^"bend+2"~ c''8\1 b'8\1 g'8\2
    g'4\2~\bendAfter#+2 | g'2.\2

  }
}
  
\score 
{
    << \new Staff 
    {
        \clef treble
        \key g \minor
        \melody
    }
    \new TabStaff 
    {
        \tabFullNotation
        % \clef tenor
        \key g \minor
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
