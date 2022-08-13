\version "2.23.3"

\header {
  title = "Hallelujah"
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
  \new Voice \relative fis' {
    \time 6/8
    \key d \major

    \tempo "Andante" 4=84
    \numericTimeSignature
    s8 s2 fis8
    a4 a8 a4 a8

    b8[ \stemUp b b(] b4) fis8 \break

    a4 a8 a4 a8 b8[ b b(] b4) a8 b4 b b8[ b]  \break

    b4 a8 a4 g8 a4. a4. r4. r4 fis8 \upbow  \break

    a4 a8 a4 a8 b4 b8 cis4 a8 \stemDown d4 d8 d4 d8 \break

    d4 d8 e4 d8 e4 e e8[ e] fis4 fis8 fis4 e8  \break

    e4. d4. r4. \stemNeutral  fis,4 \downbow a8 b4. b4.( b4.) \stemUp b4 a8 \stemNeutral  \break

    fis4. fis4.( fis4.) fis4 a8 b4. b4.( b4.)   \stemUp b4 a8 \stemNeutral \break

    fis2 g8([ fis8]) e4.( e4) d8 d4.( d4)

    \bar "||"

  }
}


