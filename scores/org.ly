\version "2.22.0"

\include "../definitions.ly"
#(define option-instrument-name "org")
\include "score_settings/one-staff.ly"

\book {
  \bookpart {
    \section "1" "Sum offensa, sum irata"
    \addTocLabel "sum"
    \paper { indent = 2\cm }
    \score {
      <<
        \new Staff {
          \set Staff.instrumentName = "Organo"
          \SumOrgano
        }
        \new FiguredBass { \SumBassFigures }
      >>
    }
  }
  \bookpart {
    \section "2" "Quae loquor quae deliro"
    \addTocLabel "quae"
    \score {
      <<
        \new Staff { \QuaeOrgano }
        \new FiguredBass { \QuaeBassFigures }
      >>
    }
  }
  \bookpart {
    \section "3" "Dum Philomela in ramo"
    \addTocLabel "dum"
    \score {
      <<
        \new Staff { \DumOrgano }
        \new FiguredBass { \DumBassFigures }
      >>
    }
  }
  \bookpart {
    \section "4" "Alleluia"
    \addTocLabel "alleluia"
    \score {
      <<
        \new Staff { \AlleluiaOrgano }
        \new FiguredBass { \AlleluiaBassFigures }
      >>
    }
  }
}
