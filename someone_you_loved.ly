\version "2.20.0"

\include "./utils/scoop.ly"


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
        % \remove "Bar_number_engraver"
        \consists "Melody_engraver"
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
    \override MultiMeasureRest.expand-limit = #1
    \omit Accidental

    % Music follows here.
    R1*4 | r8  \mark \markup { \small \italic lacrimoso } a' \mp \upbow
    a[( f)]
    a( f) a( f)
    b[( c b a)] a [( b a) f~](f e4) r8 r2 | R1 |

    \break
    r8 a \upbow a[( f)] a( f) a( f) | b( c b a ) a( b a) \scoop f~( \p f \grace { g16 f16 } e4.) r1 s2 |
    r4 r8 \upbow b' \mp b( a) a e'( |

    \break
    f4.\> a,8) \! \<  b( a) f' d( \! |  e4. \> a,8 \!) \< a a a  d( \mp \! e4. \scoop f8 \mf) f( \< \prall  e) d b( \! | a4. \>) a8 \< \! b( a) a e'( \! | f4. \> a,16 \!) a16 b8 (a) f' d(

    \break
    e4.) \scoop f8 \mf f-> f f-> f | f->( e) e( d)  d (e) e e~(e d)d d  f[(g)] f4 \>  ~f  d8 \! \mf d f (g)

    \break
    f4~( \> f8 e ) d \mp \! d g4 \mf f8( e~

    \break
    e d) d d  a' a f4~( |  f8 d )d d


}

\score {
    \new Staff \with {

        midiInstrument = "violin"

    } \violin

    \layout { }
    % \midi { }
}


