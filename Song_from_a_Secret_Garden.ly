\version "2.23.2"
% https://www.hacklily.org/?edit=iilei/sheet-music/Song_from_a_Secret_Garden.ly

\header {
    title = "Song from a Secret Garden"
    composer = "Rolf Løvland"
    copyright = "Many thanks to Viktoria von Kirschbaum for beginner-friendly modifications"
    tagline =  "Contributions appreciated -> https://github.com/iilei/sheet-music"
}

\paper {fonts = #
        #(set-paper-size "a5")
        #(define fonts
             (set-global-fonts
              #:music "emmentaler"
              #:brace "emmentaler"
              #:roman "TeXGyre Schola"
              #:sans "TeXGyre Heros"
              ))
}

global = {
    \time 4/4
}


\score {
    \new StaffGroup \relative a' {
        \set Staff.instrumentName = #"Violin 1"
        \override Glissando.style = #'trill

        % "b" Symbole auf Notenlinen => Ton wird eine halbe Note tiefer gespielt
        \set Staff.keySignature = #`(((0 . 6) . ,FLAT)
                                     ((0 . 9) . ,FLAT)
                                     ((0 . 5) . ,FLAT)
                                     )
        \compressEmptyMeasures
        \numericTimeSignature
        \override MultiMeasureRest.expand-limit = #2
        \override MultiMeasureRest.staff-position = #2
        \omit Accidental  % omit natural marks (Auflösungszeichen) - alternativ: b8 -> bes8

        R1 |
        R1*3 |
        r2 r8 g\downbow c[\upbow(d)] |

        \mark \markup { \teeny C } e4.( d8) \mark \markup { \teeny F }  e2 | \mark \markup { \teeny B } e8[( f8)] c8[( b8)]  \mark \markup { \teeny G } d2\prall |

        d8[(\mark \markup { \teeny AS }  e8)] c8[( b8)] \mark \markup { \teeny I } c4. b8 |
        g2 r8 g8 c8[( d8)] |
        e4.( d8) e2 |
        e8[( f8)] d8[( c8)] d2\prall
 

        d8[(e8)] c8[( b8)] c4. b8 |
        c2 r8 d,\downbow e[(b')] |
        c4.( c8) c8( d8) b[( a)]


        b2\prall r8 d, e[( g)]
        a4.( a8) a8[( b8)] g8[( f8)]
        g2 r8 d8 e[( b')]

        c4.(c8--) c[( d)] b[( a)] |
        b2 b8[( c)] a[( g)] |
        a4.( a8--) a8[( b)] g8[( f)]
     
        g2 r8 g8 c[( d)] |
        e4.( d8) e2 |
        e8[(f )] d[( c)] d2\prall


        d8[(e)] c[(b)] c4. b8 |
        g2 r8 g,8 c8[( d)]
        e4.( d8) e2 |
        e8[( f)] d[( c)] e2_ \prall |


        d8[( e)] c[( b)] c4. b8 \upbow |
        c2 \downbow r2 \bar "||"  |
        R1*7

    }
}