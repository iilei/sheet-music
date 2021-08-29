\version "2.23.3"

\header {
  title = "Song from a Secret Garden"
  composer = "Rolf Løvland"
}


\score {
  \new Voice \relative a' {
    \time 4/4
    \set Staff.instrumentName = #"Violin 1"
    \override Glissando.style = #'trill

    \compressEmptyMeasures
    \numericTimeSignature
    \override MultiMeasureRest.expand-limit = #2
    \override MultiMeasureRest.staff-position = #2
    \omit Accidental

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