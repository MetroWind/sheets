\version "2.22.1"

\include "includes/header-paper.ily"
\include "includes/nocturne-op15-no3-parts.ily"

\bookpart {
  \header {
    title = "Nocturnes"
    composer = "Frédéric Chopin (1810-1849)"
    opus = "Opus 15, No 3"
    copyright = \markup {
      "This work is licensed under a"
      \with-url #"https://creativecommons.org/licenses/by-sa/4.0/"
      "Creative Commons Attribution-ShareAlike 4.0 License"
    }
  }
  \score {
    \keepWithTag layout
    \nocturne-six-music
    \nocturne-six-layout
  }
}

\nocturne-six-midi
