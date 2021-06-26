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
  \tempo \markup { \italic"Moderately slow & gently" } 4 = 76
  \time 4/4


  % Music follows here.


  R1*4 % | r8  \mark \markup { \small \italic lacrimoso } a' \mp \upbow

}
