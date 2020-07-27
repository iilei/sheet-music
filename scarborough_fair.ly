\version "2.20.0"


\header {
    title = "Scarborough Fair"
    subsubtitle = ""
    tagline = \markup {
        Engraved at
        \simple #(strftime "%Y-%m-%d" (localtime (current-time)))
        with \with-url #"http://lilypond.org/"
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
          #:factor (/ staff-height pt 20)
          ))
}

\score {
    % \midi {
    %    \tempo 4 = 88
    % }
    \new StaffGroup \relative a' \repeat volta 1 {

        \set Staff.instrumentName = #"Violin 1"
        \time 3/4
        \numericTimeSignature

        \tempo "Lento" 3 = 40

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
