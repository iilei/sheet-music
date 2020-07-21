\version "2.20.0"

% the complementary to \bendAfter - might be also called \bendBefore
% stolen from http://lilypond.1069038.n5.nabble.com/bendBefore-td158553.html#d1390934109000-638
#(define (scoop-stencil grob)
  (ly:stencil-add
    (ly:note-head::print grob)
    (grob-interpret-markup grob
      (markup #:with-dimensions '(0 . 0) '(0 . 0)
              #:translate '(-0.3 . -0.3)
              #:path 0.25 '((moveto 0 0)
                            (curveto 0 -1.3 -1.3 -1.3 -1.3 -1.3))))))

scoop = \once \override NoteHead #'stencil = #scoop-stencil
% \new Staff { s4 \scoop f''4 }