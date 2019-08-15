\version "2.18.2"


\header {
    title = "Rains of Castamere"
    subsubtitle = ""
    tagline = ""
    % tagline = \markup {
    %     Engraved at
    %     \simple #(strftime "%Y-%m-%d" (localtime (current-time)))
    %     with \with-url #"http://lilypond.org/"
    %     \line { LilyPond \simple #(lilypond-version) (http://lilypond.org/) }
    % }
}


global = {
    \time 4/4
}

\paper {
    #(set-paper-size "a5")
}

\score {
    \new StaffGroup \relative a' \repeat volta 1 {
        \numericTimeSignature
        \key f \major

        r8 s4 s2 a8 |
        f'4. a,8 e'4. a,8 |
        f'4 g4 e4. a,8 |
        g'4 f4 e4 d4 |
        e1 |

        \omit Accidental % omit natural marks (Auflösungszeichen)
        a8[ a8] ~ a8[ b8] g4 c,8[ c8] |
        a'4 b4 g4. c,8 |
        b'4 a4 g4  f4 |
        e2. r8 a,8

    }
}

