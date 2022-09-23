\version "2.22.0"

\include "../definitions.ly"
#(define option-instrument-name "b")
\include "score_settings/one-staff.ly"

\book {
  \bookpart {
    \section "1" "Sum offensa, sum irata"
    \addTocLabel "sum"
    \paper { indent = 2\cm }
    \score {
      <<
        \new Staff {
          \set Staff.instrumentName = "Bassi"
          \SumOrgano
        }
      >>
    }
  }
  \bookpart {
    \section "2" "Quae loquor quae deliro"
    \addTocLabel "quae"
    \score {
      <<
        \new Staff { \QuaeOrgano }
      >>
    }
  }
  \bookpart {
    \section "3" "Dum Philomela in ramo"
    \addTocLabel "dum"
    \score {
      <<
        \new Staff { \DumOrgano }
      >>
    }
  }
  \bookpart {
    \section "4" "Alleluia"
    \addTocLabel "alleluia"
    \score {
      <<
        \new Staff { \AlleluiaOrgano }
      >>
    }
  }
}
