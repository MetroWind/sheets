\version "2.22.1"

#(set-global-staff-size 18)

\header {
  maintainer = "Knute Snortum"
  maintainerEmail = "knute (at) snortum (dot) net"
  source = "https://imslp.eu/files/imglnks/euimg/0/02/IMSLP705995-PMLP02311-E705554_29-41-Chopin--nocturnes--Ekier-pd.pdf"
}

\paper {
  ragged-right = ##f
  ragged-last-bottom = ##f

  markup-system-spacing =
    #'((basic-distance . 2)
       (padding . 1)) % defaults: 1, 0.5

  system-system-spacing =
    #'((basic-distance . 6)
       (minimum-distance . 4)
       (padding . 3)
       (stretchability . 40)) % defaults: 12, 8, 1, 60

  last-bottom-spacing =
    #'((basic-distance . 2)
       (minimum-distance . 1)
       (padding . 2)
       (stretchability . 30)) % defaults 1, 0, 1, 30

  top-system-spacing.minimum-distance = 10

  tocTitleMarkup = \markup \huge \column {
    \fill-line { \null "Table of Contents" \null }
    \hspace #1
  }

  tocItemMarkup = \tocItemWithDotsMarkup
}

#(use-modules (guile-user))
$(case output-spec
  ((letter)
   (set-default-paper-size "letter")
   #{
     \paper {
  % These settings are scaled to paper-size
  top-margin = 12\mm % default 5
  bottom-margin = 12\mm % default 6
  left-margin = 10\mm % default 10
  right-margin = 10\mm % default 10
     }
   #})
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
