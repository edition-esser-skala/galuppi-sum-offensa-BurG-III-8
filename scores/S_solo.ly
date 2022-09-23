\version "2.22.0"

\include "../definitions.ly"
\include "score_settings/coro.ly"

\paper {
  system-system-spacing.basic-distance = #20
  system-system-spacing.minimum-distance = #20
  systems-per-page = #6
}

\book {
  \bookpart {
    \section "1" "Sum offensa, sum irata"
    \addTocLabel "sum"
    \paper { indent = 2\cm }
    \score {
      <<
        \new ChoirStaff <<
          \new Staff {
            \set Staff.instrumentName = "Soprano"
            \new Voice = "Soprano" { \dynamicUp \SumSoprano }
          }
          \new Lyrics \lyricsto Soprano \SumSopranoLyrics
        >>
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
        \new ChoirStaff <<
          \new Staff {
            \set Staff.instrumentName = "S"
            \new Voice = "Soprano" { \dynamicUp \QuaeSoprano }
          }
          \new Lyrics \lyricsto Soprano \QuaeSopranoLyrics
        >>
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
        \new ChoirStaff <<
          \new Staff {
            \set Staff.instrumentName = "S"
            \new Voice = "Soprano" { \dynamicUp \DumSoprano }
          }
          \new Lyrics \lyricsto Soprano \DumSopranoLyrics
        >>
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
        \new ChoirStaff <<
          \new Staff {
            \set Staff.instrumentName = "S"
            \new Voice = "Soprano" { \dynamicUp \AlleluiaSoprano }
          }
          \new Lyrics \lyricsto Soprano \AlleluiaSopranoLyrics
        >>
        \new Staff { \AlleluiaOrgano }
        \new FiguredBass { \AlleluiaBassFigures }
      >>
    }
  }
}
