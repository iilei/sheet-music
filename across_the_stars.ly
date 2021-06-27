\version "2.23.2"


\header {
  title = "Across the Stars"
  subtitle = "Love Theme from STAR WARS®: Episode II"
  composer = "John Williams"
  copyright = "2002 Bantha Music (BMI)"
  tagline = \markup {
    Engraved at
    \simple #(strftime "%Y-%m-%d" (localtime (current-time))) % ly:version
    with \with-url "http://lilypond.org/"
    \line { LilyPond \simple #(lilypond-version) (http://lilypond.org/) }
  }
}


\paper {
  #(set-paper-size "a4")
}

\relative c'' {
  \key g \major
  \numericTimeSignature
  \compressEmptyMeasures
  \override MultiMeasureRest.expand-limit = #1
  \override Score.MetronomeMark.padding = #8
  \tempo \markup { \italic"Moderately slow & gently" } 4 = 76
  \time 4/4
  % Prevent bar numbers at the end of a line and permit them elsewhere
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  % Draw a box round the following bar number(s)
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 5)
  \override Score.BarNumber.stencil = #(make-stencil-boxer 0.1 0.25 ly:text-interface::print)
  
  % Music follows here.


  R1*3 | r2 r4 \mark \markup { \small \italic legato } b, \p \upbow \bar "||" 
  
  g'2. e4
  
  % https://lilypond.org/doc/v2.19/Documentation/notation/bars.de.html#index-BarNumber-1
  % \override Score.BarNumber.break-visibility = ##(#t)

  \time 3/4
  \tuplet 3/2 { a8(g fis) } g4 e |
  \tuplet 3/2 { g8( fis e) } fis4                                                                                                      d

}
