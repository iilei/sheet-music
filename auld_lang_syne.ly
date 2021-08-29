\version "2.23.3"

\header {
  title = "Auld Lang Syne"
  subtitle = \markup \small { "Traditional Scottish Folk Song" }
  composer = \markup \small { "Robert Burns" }
  tagline = \markup \tiny {
    Engraved at
    \simple #(strftime "%h %-d, %Y" (localtime (current-time)))
    with \with-url "http://lilypond.org/"
    \line { LilyPond }
  }
}

\score {
  \new Voice \relative {
    \set Staff.printKeyCancellation = ##f
    \set Score.extraNatural = ##f
    \key g \major
    \numericTimeSignature
    \compressEmptyMeasures
    \override MultiMeasureRest.expand-limit = #1
    \override Score.MetronomeMark.padding = #5
    \tempo \markup { \italic"moderato" } 4 = 104
    \time 4/4
    s4 s2 d'4 \upbow \bar "|" g4. \downbow fis8 g4 b | a4.-0 g8 a4 b8([ a]) | \stemUp g2 b4  d-3 \stemNeutral | e2.-4 e4 |
    \break

    d4. b8 \stemUp b4 g \stemNeutral | a4.-4 g8 a4-0 b8([ a]) | g4. e8 e4 d | g2. e'4 |
    \break

    d4. b8 \stemUp b4 g \stemNeutral | a4.-4 g8 a4-0 e'4 | d4. b8  \stemUp  b4 \stemNeutral  d | e2. g4 |
    \break

    d4. b8 \stemUp b4 g \stemNeutral | a4.-4 g8 a4-0 b8[ a] | g4.e8 e4 d | g2. \bar "||"

  }
}