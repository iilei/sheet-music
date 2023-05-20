\version "2.22.1"

\header {
  title = "Elegie"
  % Remove default LilyPond tagline
  tagline = ##f
}

\paper {
  #(define fonts
     (set-global-fonts
      #:music "emmentaler"
      #:brace "emmentaler"
      #:roman "TeXGyre Schola"
      #:factor (/ staff-height pt 20)
      ))
  #(set-paper-size "a4")

}

\layout {
  ragged-right = ##f
  ragged-right = ##f
}

global = {
  \key g \minor
  \numericTimeSignature
  \time 3/4
  \tempo "Flebile" 2.=34
  \override Score.BarNumber #'break-visibility = #'#(#t #f #f)
  % \set Score.barNumberVisibility = #all-bar-numbers-visible

}

violin = \relative c'' {
  \global
  % Music follows here.


  R2. R2.


  d2.-1 \downbow

  es4.( 	f8 es4 )

  \break

  d2-1( g4-4) a2-1( bes4)

  \barNumberCheck #7

  d2-4( bes4-2) c4.(bes8 a4)

  
  \break
  
  a2.-1
  d,2.-1
  
  d es4.(f8 es4)
  
  d2( f4-4)
  
  \break
  \barNumberCheck #14
  
  a2( bes4)  d2-4( bes4) c4.( bes8 a4 )
  g2.-4( g4) r r
  
}

contrabass = \relative c {
  \global
  % Music follows here.
  g'4  r4 r4
  g r4 r4

  \barNumberCheck #3

  d r r
  d r r

  g r4 r4
  g r4 r4

  d r r
  d r r
  
  \barNumberCheck #9
  g r r
  d r r
  d r r
  g r r
  g r r
  
  \barNumberCheck #14
  g r r d r r d r r g r r g r r 
  \barNumberCheck #19
  
}



right = \relative c' {
  \global

  % Music follows here.
  \chordmode {
    r4


    bes,:6^5 bes,:6^5
    bes,:6^5 r4 r4

    r4 bes,:6^5 bes,:6^5

    r4 c:min6^6 c:min6^6

    r4 bes,:6^5 bes,:6^5
    r4 bes,:6^5 bes,:6^5

    r4 <c' d' fis'> <c' d' fis'>
    r4 <c' d' fis'> <c' d' fis'>
    
    r4 bes,:6^5 bes,:6^5
    
    r4 <fis' c'a> <fis' c'a>
    
    r4 bes,:6^5 bes,:6^5
    
    r4 c:m c:m
    
    r4 bes,:6^5 bes,:6^5
    
    \barNumberCheck #14
    r4 bes,:6^5 bes,:6^5
    r4 bes,:6^5 bes,:6^5
    
    r4 <c' d' fis'> <c' d' fis'>
    
    r4 bes,:6^5 bes,:6^5
    bes,:6^5 r4 r4
    
    \barNumberCheck #19

  }

}

left = \relative c' {
  \global

  % Music follows here.
  \contrabass

}

violinPart = \new Staff \with {
  instrumentName = "Violine"
  shortInstrumentName = "Vio."
  midiInstrument = "violin"
} \violin

contrabassPart = \new Staff \with {
  instrumentName = "Contrabass"
  shortInstrumentName = "C.-bass"
  midiInstrument = "contrabass"
} { \clef bass \contrabass }

pianoPart = \new PianoStaff \with {
  instrumentName = "Klavier"
  shortInstrumentName = "Klav."
} <<
  \new Staff = "right" \with {
    midiInstrument = "acoustic grand"
  } \right
  \new Staff = "left" \with {
    midiInstrument = "acoustic grand"
  } { \clef bass \left }
>>

\score {
  <<
    \violinPart
    \pianoPart
    \contrabassPart
  >>
  \layout { }
  \midi { }
}
