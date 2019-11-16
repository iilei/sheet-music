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
     e4.( d8) e2 |
     e8[( f8)] c8[( b8)] d2\prall |
   
    }
}