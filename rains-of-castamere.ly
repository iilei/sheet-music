\version "2.23.3"

\header {
  title = "Rains of Castamere"
  subsubtitle = ""
  tagline = ""
  tagline = \markup {
    Engraved at
    \simple #(strftime "%Y-%m-%d" (localtime (current-time)))
    with \with-url "http://lilypond.org/"
    \line { LilyPond \simple #(lilypond-version) (http://lilypond.org/) }
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
  \new Voice \relative c'' {
    \key d \minor
    \time 4/4
    \tempo "Andante moderato" 4=92
    \numericTimeSignature
    r8 \skip4 \skip2  a8( \downbow

    \repeat volta 2 {

      f'4.) a,8( e'4.) a,8( |
      f'4 g4) e4. a,8 \upbow |
      g'4(  \downbow f4) e4( d4) |
      e1 |
      \break

      \omit Accidental % omit natural marks (Auflösungszeichen)
      a8 [ a8(] ~ a8[ b8)] g4  c,8 [ c8] |
      a'4( b4) g4. c,8 \upbow |
      b'4( a4) g4  f4 |

      e2. r8 a,8(  \downbow

      \once \override Score.RehearsalMark.break-visibility = #end-of-line-visible
      \once \override Score.RehearsalMark.self-alignment-X = #RIGHT
      \mark
      \markup { \tiny \bold 2x }
    }

    \break

    e'[ \downbow f]) d2  f4 |
    f8( e) a,2 a4( \upbow

    e'8[f]) d2 f4
    f4( e2) a,4(

    e'8[ f8]) d2 a'4
    \break



    a( g) d4.  e8 \downbow
    f4. \upbow d8 \upbow  e4. \downbow c8 \downbow
    d2. \upbow a4( \downbow
    e'8[ f8]) d2 a'4

    \break

    a4( g) d4. e8 \downbow

    f4. \upbow d8 \upbow a'8[( g8)] e8[( f8)]

    d1

    \bar "|."

  }
}


