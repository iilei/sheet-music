\version "2.18.2"

\header {
  title = "Song from a Secret Garden"
}

\paper {
    #(set-paper-size "a5")
}

global = {
    \time 4/4
}

\score {
  \new StaffGroup \relative a' \repeat volta 1 {
    \set Staff.keySignature = #`(((0 . 6) . ,FLAT)
                               ((0 . 9) . ,FLAT)
                               ((0 . 5) . ,FLAT)
                              )
    \compressFullBarRests
    \numericTimeSignature
    \override MultiMeasureRest.expand-limit = #2
    \override MultiMeasureRest.staff-position = #2

     R1 |
     R1*3 |
     r8 g8\downbow c8\upbow (d8)
   
    }
}