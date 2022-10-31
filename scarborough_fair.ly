\version "2.23.14"


\header {
  title = "Scarborough Fair"
  subsubtitle = ""
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

  \new StaffGroup \relative a' \repeat volta 1 {

    \set Staff.instrumentName = #"Violin 1"
    \time 3/4
    \numericTimeSignature

    \tempo "Lento" 2. = 40

    a,2 \mark \markup { \teeny "a moll" } a4 |
    e'2 e4 |
    b4. c8 b4 |
    a2.( a2.) |
    \break

    r4 e'4  g4 |
    a2 g4 |

    e4 \mark \markup { \teeny "e moll" }
    \relative e,
    fis'' d |
    e2.( e2) a4 |
    a2 a4 |
    \break

    g2 e4 |
    e d c |
    b g2 |
    a2 e'4 |
    d2 c4 |

    \break

    b a g |
    a2. |
    a'2 a4 |
    e'2 e4 |
    \stemUp
    b4. c8  b4 |

    \stemNeutral
    \break


    a2.( a2.) |
    r4 e'4 g |
    a2 g4 |
    e fis d |

    \break

    e2.( e2) a4 |
    a2 a4 |
    g2 e4 |
    e d c |
    \stemUp
    b g2
    \stemNeutral

    \break

    a2 e'4 |
    d2 c4 |
    \stemUp
    b a g |
    \stemNeutral

    a2. \bar "|."

  }
}


%{
convert-ly (GNU LilyPond) 2.23.14  convert-ly: »« wird verarbeitet...
Anwenden der Umwandlung: 2.23.4, 2.23.5, 2.23.6, 2.23.7, 2.23.8,
2.23.9, 2.23.10, 2.23.11, 2.23.12, 2.23.13, 2.23.14
%}
