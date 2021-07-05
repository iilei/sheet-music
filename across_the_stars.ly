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
  #(define fonts
     (set-global-fonts
      #:music "emmentaler"
      #:brace "emmentaler"
      #:roman "TeXGyre Schola"
      #:sans "TeXGyre Heros"
      #:factor (/ staff-height pt 20)
      ))
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
  \override Score.BarNumber.stencil = #(make-stencil-boxer 0.1 0.25 ly:text-interface::print)
  \override BreathingSign.Y-offset = #3
  \override BreathingSign.text =
  \markup { \musicglyph "scripts.rcomma" }
  % Music follows here.

  R1*3 | r2 r4 \mark \markup { \small \italic legato } b, \p \upbow \bar "||"
  \override Score.BarNumber.break-visibility = ##(#f #t #f)
  g'2. e4
  \override Score.BarNumber.break-visibility = ##(#f #f #t)

  \time 3/4
  \tuplet 3/2 { a8(g fis) } g4 e |
  \tuplet 3/2 { g8( fis e) } fis4 d \break

  e2 d4 | b2 b4 | g'2 \breathe e4 | \tuplet 3/2 { e8( fis g } a4) fis4 | b4 a2 | b b4 \upbow \bar "||"
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 14)
  \break

  d4. c8 b[ a] |  \tuplet 3/2 { a8( b c) } c4 a | d4. c8 b[( a)] |  gis\<[ b] e4 e,\! |
  \break


}
