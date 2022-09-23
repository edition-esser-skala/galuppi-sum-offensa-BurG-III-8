\version "2.22.0"

#(define option-movement-title-format "number-title")
#(define option-init-toc #t)
#(define option-print-all-bar-numbers #t)
\include "ees.ly"


tempoSum = \tempoMarkup "[Allegro]"
tempoQuae = \tempoMarkup "Recitativo"
  tempoQuaeB = \tempoMarkup "Allegro"
  tempoQuaeC = \tempoMarkup "Largo"
tempoDum = \tempoMarkup "Andante"
  tempoDumB = \tempoMarkup "Allegro"
  tempoDumC = \tempoMarkup "Andante"
tempoAlleluia = \tempoMarkup "[Allegro]"


\include "notes/vl1.ly"
\include "notes/vl2.ly"
\include "notes/vla.ly"
\include "notes/S.ly"
\include "notes/org.ly"
