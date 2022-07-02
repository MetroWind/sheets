\version "2.22.1"

\include "includes/header-paper.ily"
\include "includes/nocturne-op15-no1-parts.ily"

\bookpart {
  \nocturne-four-header
  \score {
    \keepWithTag layout
    \nocturne-four-music
    \nocturne-four-layout
  }
}

\nocturne-four-midi
