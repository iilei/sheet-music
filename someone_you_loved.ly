\version "2.23.2"

\include "./utils/scoop.ly"


\header {
  title = "Someone you loved"
  subtitle = "for Violin Solo"
  arranger = "Taylor Davis"
  % copyright = "BMG"
  tagline = \markup {
    Engraved at
    \simple #(strftime "%Y-%m-%d" (localtime (current-time)))
    with \with-url "http://lilypond.org/"
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

}

dolce = \markup { \italic dolce }
subitoP = \markup { \center-align \italic subito \dynamic p }

violin = \relative c' {
  \key d \major
  \numericTimeSignature
  \compressEmptyMeasures
  \override Score.MetronomeMark.padding = #8
  \tempo \markup { \italic"Moderato molto espressivo" } 4 = 108
  \override Score.RehearsalMark.self-alignment-X = #LEFT
  \override MultiMeasureRest.expand-limit = #1
  \omit Accidental

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
  e4.) \scoop f8 \mf f-> f f-> f | f->( e) e( d)  d (e) e e~(e d)d d  f[(g)] f4 \>  ~f  d8 \! \mf d f (g) f4~( \> f8 e ) d \mp \! d g4 \mf f8( e~

  \break
  e d) d d  a' a f4~( f8 d )d d f4 f~(   f8 d) d d g-> g f( e~  e4) f8 f f f f f

  \break
  f( e) e( d) d( \> e) e e~( e d) \! r4 r2 r8 a \upbow \mp a[( f)] a (f) a(f) | b( c b a) a( b a) f~( f  \grace { g16 f} e4.~ \> e4) \! r4

  \break
  r1 r8 a8 \upbow \mp a[ (f)] a(f) a(f) b( c b a) a( b a) \scoop f~( f \grace {g16 f} e4.~e4 d8_.) r8 r4  r8  b' \upbow b (a) a e'(

  \break
  f4. \> a,8) \! \<  b( a) f' d( e4) \! \scoop f8 f  f[( \grace { g16 f } e8) d \mp b(] a4.) \< a8 b[( a) a e'(]\! f4. \> a,16\!) a b8( a) f' d(

  \break
  e4.) \scoop f8 \mf f-> f f-> f | f->( \prall e) e( d) d( e) e e~( | e d) d d f->(\mf g) f4~(\>f8 e\!) d d g4 \mf f8( e~~

  \break
  e d) d d a' a f4~( f8 d) d d g4 f~( | f8 d) d d g g f( e~ | e4) \scoop f8 f f f f f

  \break
  f(\prall e) e( d) d( \> e) e e~( e d) \! r4 r4  r8 a \upbow \mf | a'( b4.~ \> b8\!\<) b \! b b~| b a4 a8~( a f) f f~(

  \break
  f8 \grace{ g16 f} e4) e8~\< e f4 \acciaccatura f8 g8~g f4  e8~( \!  \> e16 f16 e8) d4 | a'8( \! \mf b4.~b8) b b b~( b a) a a~ a f( e)  \acciaccatura e f~(

  \break
  f e) e e-- r2 | r8 d^\markup { \center-align \italic dolce } -\subitoP \upbow d[ d] f (g) f4~( | f8 e) d d  \acciaccatura f g4 f~( f8[ \grace { g16 f }  e8) d d] a' a f4~(

  \break
  f8 d) d d g4 f~( f8 d) d d g g f( e~ | e4) \scoop f8^\markup { \italic pesante }-> \f f f-^f f-^f | f->( e)  e( d) d( e) e e~(

  \break
  e d) d d f8->( g) f4~( \> f4 d8 \! \f) d f->( g f4~ \> f8 e) d d \! \mf  a' a f4~( \> f8 d) \! \< d d g4-> \! \mf e~(

  \break
  e8 d) d-> d g-> g-> f( e~ e4 \scoop f8->) f f f f f  | f->( \prall e) e( d) d( e) e e~( e d) d d f4 f~(\>

  \break
  f8 d) \! \mp d d g \mf g f( e~ | e4) \scoop f8 \< f f f f f \! | f[( \>  \grace{ g16 f} e8) e( d)] d( e) e e~( | e d4.) \p \! r2 | r1  \bar "|."

}

\score {
  \new Staff \with {
    midiInstrument = "violin"
  } \violin

  \layout { }
  \midi { }
}


