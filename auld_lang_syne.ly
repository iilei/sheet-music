\version "2.23.14"

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
\paper {
  #(define fonts
     (set-global-fonts
      #:music "emmentaler"
      #:brace "emmentaler"
      #:roman "TeXGyre Schola"
      #:factor (/ staff-height pt 20)
      ))
  #(set-paper-size "a5")
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
    s4 s2 d'4 \upbow \bar "|" g4. \downbow fis8 g4 b | a4.-0 g8 a4 b8([ a]) | \stemUp g2 b4  d-3 \upbow \stemNeutral | e2.-4^\prall e4 |
    \break

    d4. b8 \stemUp b4 g \stemNeutral | a4.-4 g8 a4-0 b8([ a]) | g4. e8 e4 d | g2. e'4 \upbow |
    \break

    d4. b8 \stemUp b4 g \stemNeutral | a4.-4 g8 a4-0 e'4 | d4. b8  \stemUp  b4 \stemNeutral  d | e2. g4 \upbow |
    \break

    d4. b8 \stemUp b4 g \stemNeutral | a4.-4 g8 a4-0 b8([ a]) | g4.e8 e4 d | g2. \bar "||"

  }
}

%{
convert-ly (GNU LilyPond) 2.23.14  convert-ly: »« wird verarbeitet...
Anwenden der Umwandlung: 2.23.4, 2.23.5, 2.23.6, 2.23.7, 2.23.8,
2.23.9, 2.23.10, 2.23.11, 2.23.12, 2.23.13, 2.23.14
%}
