\version "2.18.2"

\header {
  title = "Song from a Secret Garden"
}

\paper {
    #(set-paper-size "a4")
}

global = {
    \time 4/4
}

\score {
  \new StaffGroup \relative a' \repeat volta 1 {
    \set Staff.instrumentName = #"Violin 1"

    % "b" Symbole auf Notenlinen => Ton wird eine halbe Note tiefer gespielt
    \set Staff.keySignature = #`(((0 . 6) . ,FLAT)
                               ((0 . 9) . ,FLAT)
                               ((0 . 5) . ,FLAT)
                              )
    \compressFullBarRests
    \numericTimeSignature
    \override MultiMeasureRest.expand-limit = #2
    \override MultiMeasureRest.staff-position = #2
    \omit Accidental  % omit natural marks (Auflösungszeichen) - alternativ: b8 -> bes8

     R1 |
     R1*3 |
     r2 r8 g\downbow c[\upbow(d)] |
     % Frage; ist in der handschriftichen Fassung ein "C" über dem Notenkopf? Dann ein "F" und "B" ?
     % sind dafür ausdruckelemente (http://lilypond.org/doc/v2.19/Documentation/notation/expressive-marks-attached-to-notes)
     % oder simple Textartige Zeichen (http://lilypond.org/doc/v2.18/Documentation/notation/writing-text#text-marks) 
     % angemessen?
     \mark \markup { \teeny C } e4.( d8) \mark \markup { \teeny F }  e2 |
     \mark \markup { \teeny B } e8[( f8)] c8[( b8)]  \mark \markup { \teeny G } d2\prall |
      % ende der ersten reihe

      d8[(\mark \markup { \teeny AS }  e8)] c8[( b8)] \mark \markup { \teeny I } c4. b8 |
      g2 r8 g8 c8[( d8)] |
      e4.( f8) e2 |
      e8[( f8)] d8[( c8)] d2\prall 
      % ende der zweiten reihe

      d8[(e8)] c8[( b8)] c4. b8 |
      c2 r8 d,\downbow e[(b')] |
      c4.( c8) c8( d8) b[( a)]
       % ende der dritten reihe
 
      b2\prall r8 d, e[( g)]
      a4.( a8) a8[( b8)] g8[( f8)]
      g2 r8 d8 e[( b')]
       % ende der vierten reihe

      % http://lilypond.org/doc/v2.19/Documentation/notation/expressive-marks-attached-to-notes
      % tenuto => -- => strich über notenkpf / Artikulationszeichen
      c4.(c8--) c[( d)] b[( a)] |
      b2 b8[( c)] a[( g)] |
      a4.( a8--) a8[( b)] g8[( f)]
       % ende der fünften reihe
    }
}