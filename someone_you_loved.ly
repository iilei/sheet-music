\version "2.20.0"

\header {
    title = "Someone you loved"
    subtitle = "for Violin Solo"
    arranger = "Taylor Davis"
    tagline = \markup {
        Engraved at
        \simple #(strftime "%Y-%m-%d" (localtime (current-time)))
        with \with-url #"http://lilypond.org/"
        \line { LilyPond \simple #(lilypond-version) (http://lilypond.org/) }
    }
}

\paper {
    #(set-paper-size "a4")
    #(define fonts
         (set-global-fonts
          #:music "emmentaler"
          #:brace "emmentaler"
          #:roman "TeXGyre Schola"
          #:sans "TeXGyre Heros"
          #:factor (/ staff-height pt 20)
          ))
}

\layout {
    \context {
        \Score
        \remove "Bar_number_engraver"
    }
}

global = {
    \key c \major
    \time 4/4
    \tempo "Moderato molto espressivo" 4=108
}

violin = \relative c' {
    \key d \major
    \numericTimeSignature
    \compressFullBarRests
    \override Score.RehearsalMark.self-alignment-X = #LEFT
    \override MultiMeasureRest.expand-limit = #2
    \omit Accidental

    % Music follows here.
    R1*4 | r8  \mark \markup { \small \italic lacrimoso } a'\mp\upbow a8[( f8)] a8[( f8) a8( f8)] |

}

\score {
    \new Staff \with {

        midiInstrument = "violin"

    } \violin

    \layout { }
    % \midi { }
}


