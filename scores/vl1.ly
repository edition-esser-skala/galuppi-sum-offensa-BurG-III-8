\version "2.22.0"

\include "../definitions.ly"
#(define option-instrument-name "vl 1")
\include "score_settings/one-staff.ly"

\book {
  \bookpart {
    \section "1" "Sum offensa, sum irata"
    \addTocLabel "sum"
    \paper { indent = 2\cm }
    \score {
      <<
        \new Staff {
          \set Staff.instrumentName = "Violino I"
          \SumViolinoI
        }
      >>
    }
  }
  \bookpart {
    \section "2" "Quae loquor quae deliro"
    \addTocLabel "quae"
    \score {
      <<
        \new Staff { \QuaeViolinoI }
      >>
    }
  }
  \bookpart {
    \section "3" "Dum Philomela in ramo"
    \addTocLabel "dum"
    \paper { page-count = #1 }
    \score {
      <<
        \new Staff {
          \set Staff.instrumentName = \markup \center-column { "vl" "solo" }
          \DumViolinoSolo
        }
      >>
    }
  }
  \bookpart {
    \section "3" "Dum Philomela in ramo"
    \addTocLabel "dum"
    \score {
      <<
        \new Staff { \DumViolinoI }
      >>
    }
  }
  \bookpart {
    \section "4" "Alleluia"
    \addTocLabel "alleluia"
    \score {
      <<
        \new Staff { \AlleluiaViolinoI }
      >>
    }
  }
}
