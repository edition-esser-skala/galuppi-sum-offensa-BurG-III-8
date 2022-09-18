\version "2.22.0"

\include "../definitions.ly"
\include "score_settings/full-score.ly"

\paper {
  system-system-spacing.basic-distance = #30
  system-system-spacing.minimum-distance = #30
  systems-per-page = #2
}

\book {
  \bookpart {
    \section "1" "Sum offensa, sum irata"
    \addTocEntry
    \paper { indent = 3\cm }
    \score {
      <<
        \new StaffGroup <<
          \new GrandStaff \with { \smallGroupDistance } <<
            \set GrandStaff.instrumentName = "Violino"
            \new Staff {
              \set Staff.instrumentName = "I"
              \SumViolinoI
            }
            \new Staff {
              \set Staff.instrumentName = "II"
              \SumViolinoII
            }
          >>
          \new Staff {
            \set Staff.instrumentName = "Viola"
            \SumViola
          }
        >>
        \new ChoirStaff <<
          \new Staff {
            \incipit "Soprano" "soprano" #-18.0 #-2.8
            \new Voice = "Soprano" { \dynamicUp \SumSoprano }
          }
          \new Lyrics \lyricsto Soprano \SumSopranoLyrics
        >>
        \new StaffGroup <<
          \new Staff {
            \set Staff.instrumentName = \markup \center-column { "Organo" "e Bassi" }
            % \transpose c c,
            \SumOrgano
          }
        >>
        \new FiguredBass { \SumBassFigures }
      >>
      \layout { }
      \midi { \tempo 4 = 120 }
    }
  }
}
