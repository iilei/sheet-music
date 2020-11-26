\version "2.20.0"

\header {
  title = "Rains of Castamere"
  subsubtitle = ""
  tagline = ""
  tagline = \markup {
    Engraved at
    \simple #(strftime "%Y-%m-%d" (localtime (current-time)))
    with \with-url #"http://lilypond.org/"
    \line { LilyPond \simple #(lilypond-version) (http://lilypond.org/) }
  }
}


\paper {
  #(define fonts
     (set-global-fonts
      #:music "emmentaler"
      #:brace "emmentaler"
      #:roman "TeXGyre Schola"
      #:sans "TeXGyre Heros"
      #:factor (/ staff-height pt 20)
      ))
  #(set-paper-size "a5")
}


\layout {
  \context {
    \Score
    \remove "Bar_number_engraver"
  }
  \context {
    \Voice
    \consists "Melody_engraver"
    \override Stem #'neutral-direction = #'()
  }
}

global = {
  \key d \minor
  \time 4/4
  \tempo "Andante moderato" 4=92
  \numericTimeSignature
}

violin = \relative c'' {
  \global
  % Music follows here.
  r8 \skip4 \skip2  a8( | %

  f'4.) a,8( e'4.) a,8( |
  f'4) g4 e4. a,8( |
  g'4) f4 e4 d4 |
  e1 |
  \break

  \omit Accidental % omit natural marks (Auflösungszeichen)
  a8 [ a8(] ~ a8[ b8)] g4  c,8 [ c8] |
  a'4 b4 g4. c,8( |
  b'4) a4 g4  f4 |

  e2. r8 a,8( \upbow |
  \set Score.repeatCommands = #'(end-repeat)
  \break

  e'[ f]) d2 f4 |
  f8[e] s8  a,4. s8 a8 \upbow |

  e'[f] d2 f4 |
  f4 e2 a,4( |

  e'8[ f8]) d2 a'4 |
  a( g) d4. e8( |
  f4.) d8 e4. c8 |
  d2. a4( |

  e'8[ f8]) d2 a'4 |
  a4( g) d4. e8 \downbow |

  f4. \upbow d8 \upbow a'8[( g8)] e8[( f8)] |

  d1
  \bar "|."

}

\score {
  \new Staff \with {
    instrumentName = "Violin"
    midiInstrument = "violin"
  } \violin
  \layout { }
}
