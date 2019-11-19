\version "2.18.2"


\header {
    title = "Scarborough Fair"
    subsubtitle = ""
    tagline = ""
    % tagline = \markup {
    %     Engraved at
    %     \simple #(strftime "%Y-%m-%d" (localtime (current-time)))
    %     with \with-url #"http://lilypond.org/"
    %     \line { LilyPond \simple #(lilypond-version) (http://lilypond.org/) }
    % }
}

\paper {
    fonts = #
    (make-pango-font-tree
     "Century Schoolbook L"
     "Century Schoolbook L"
     "Century Schoolbook L"
     (/ (* staff-height pt) 2.5))

    #(set-paper-size "a5")
}

\score {
    \new StaffGroup \relative a' \repeat volta 1 {
        \set Staff.instrumentName = #"Violin 1"
        % \override Glissando.style = #'trill
        \time 3/4
        \numericTimeSignature
        \override MultiMeasureRest.expand-limit = #2
        \override MultiMeasureRest.staff-position = #2
        \omit Accidental  % omit natural marks (Auflösungszeichen) - alternativ: b8 -> bes8

        a,2 \mark \markup { \teeny "a moll" } a4 |
        e'2 e4 |
        b4. c8 b4 |
        a2.( a2.) |
        \break

        \skip4 e'4  g4 |
        a2 g4 |

        e4 \mark \markup { \teeny "e moll" }  \bar "||" f d |
        e2.( e2) a4 |
        a2 a4 |
        \break

        g2 e4 |
        e d c |
        b g2 |
        a2 e'4 |
        d2 c4 |

        \break




        \bar "||"

    }
}