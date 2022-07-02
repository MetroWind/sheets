\version "2.22.1"

%%% ------
%%% Pieces
%%% ------

\include "includes/header-paper.ily"
\include "includes/title-page.ily"
\include "includes/nocturne-op15-no1-parts.ily"
\include "includes/nocturne-op15-no2-parts.ily"
\include "includes/nocturne-op15-no3-parts.ily"


nocturne-four = \bookpart {
  \tocItem \markup { 
    \concat { "Nocturne No. 4 in F major" } 
  }
  \nocturne-four-header
  \score {
    \keepWithTag layout
    \nocturne-four-music
    \nocturne-four-layout
  }
}

nocturne-five = \bookpart {
  \tocItem \markup { 
    \concat { "Nocturne No. 5 in C" \raise #0.75 \teeny \sharp " major" }
  }
  \nocturne-five-header
  \score {
    \keepWithTag layout
    \nocturne-five-music
    \nocturne-five-layout
  }
}

nocturne-six = \bookpart {
  \tocItem \markup { 
    \concat { "Nocturne No. 6 in G minor" }
  }
  \nocturne-six-header
  \score {
    \keepWithTag layout
    \nocturne-six-music
    \nocturne-six-layout
  }
}

%%% ------------------
%%% Construct the book
%%% ------------------

\title-page
\pageBreak

\markuplist \table-of-contents
\pageBreak


\nocturne-four
\nocturne-five
\nocturne-six

%%% ----
%%% MIDI
%%% ----

\nocturne-four-midi
\nocturne-five-midi
\nocturne-six-midi
