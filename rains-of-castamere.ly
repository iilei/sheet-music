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

\paper {
    fonts = #
    (make-pango-font-tree
     "Century Schoolbook L"
     "Century Schoolbook L"
     "Century Schoolbook L"
     (/ (* staff-height pt) 2.5))

    #(set-paper-size "a5")
}

global = {
    \time 4/4
}

\score {
    \new StaffGroup \relative a' \repeat volta 1 {
        \numericTimeSignature
        \key f \major

        r8 s4 s2 a8 \open |
        f'4. a,8 e'4. a,8 |
        f'4 g4 e4. a,8 |
        g'4 f4 e4 d4 |
        e1 |

        \omit Accidental % omit natural marks (Auflösungszeichen)
        % \downbow \upbow
        a8[\upbow a8] ~ a8[ b8] g4 c,8[ c8] |
        a'4 b4 g4. c,8 |
        b'4 a4 g4  f4 |
        e2. r8 a,8 |
        \set Score.repeatCommands = #'(end-repeat)
        \break

        e'[ f] d2 f4 |
        f8[e] s8  a,4. s8 a8 |
        
        e'[f] d2 f4 |
        f4 e2 a,4 |
        e'8[ f8] d2 a'4
        
        
    }
}

