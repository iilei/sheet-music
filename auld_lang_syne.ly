\version "2.23.2"

\header {
  title = "Auld Lang Syne"
  subtitle = \markup \small { "Traditional Scottish Folk Song" }
  composer = \markup \small { "Robert Burns" }
  tagline = \markup \tiny {
    Engraved at
    \simple #(strftime "%Y-%m-%d" (localtime (current-time)))
    with \with-url "http://lilypond.org/"
    \line { LilyPond \simple #(lilypond-version) (http://lilypond.org/) }
  }
}

\paper {
  #(set-paper-size "a5")
  #(define fonts
     (set-global-fonts
      #:music "emmentaler"
      #:brace "emmentaler"
      #:roman "TeXGyre Schola"
      #:sans "TeXGyre Heros"
      #:factor (/ staff-height pt 22)
      ))
}
\score {
  \new Voice \relative {
    \key g \major
    \numericTimeSignature
    \compressEmptyMeasures
    \override MultiMeasureRest.expand-limit = #1
    \override Score.MetronomeMark.padding = #5
    \tempo \markup { \italic"moderato" } 4 = 104
    \time 4/4
    d' \upbow \bar "|" g4. \downbow
  }

}