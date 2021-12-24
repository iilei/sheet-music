\version "2.23.3"

\header {
  title = "Across the Stars"
  subtitle = \markup \small { "Love Theme from STAR WARS®: Episode II" }
  composer = \markup \small { "John Williams" }
  copyright =  \markup \tiny { 2002 Bantha Music (BMI) }
  tagline = \markup \tiny {
    Engraved at
    \simple #(strftime "%h %-d, %Y" (localtime (current-time)))
    with \with-url "http://lilypond.org/"
    \line { LilyPond }
  }
}


\score {
  \new Voice \relative c'' {
    \key g \major
    \numericTimeSignature
    \compressEmptyMeasures
    \override MultiMeasureRest.expand-limit = #1
    \override Score.MetronomeMark.padding = #5
    \tempo \markup \small { \italic"Moderately slow & gently" } 4 = 76
    \time 4/4
    \override Score.BarNumber.stencil = #(make-stencil-boxer 0.1 0.25 ly:text-interface::print)
    \override BreathingSign.Y-offset = #3
    \override BreathingSign.text =
    \markup { \musicglyph "scripts.rcomma" }


    R1*3 | r2 r4 \mark \markup { \small \italic legato } b, \p \upbow \bar "||"
    \override Score.BarNumber.break-visibility = ##(#f #t #f)
    g'2. e4
    \set Score.barNumberVisibility = #(every-nth-bar-number-visible 22)
    \override Score.BarNumber.break-visibility = ##(#f #f #t)

    \time 3/4
    \tuplet 3/2 { a8(g fis) } g4 e |
    \tuplet 3/2 { g8( fis e) } fis4 d \break


    e2 d4 | b2 b4 | g'2 \breathe e4 | \tuplet 3/2 { e8( fis g } a4) fis4 | b4 a2 | b b4\upbow \bar "||"
    \set Score.barNumberVisibility = #(every-nth-bar-number-visible 14)
    \break

    d4. c8 b[ a] |  \tuplet 3/2 { a8( b c) } c4 a | d4. c8 b[( a)] |  gis\<[ b] e4 e,\! |
    \break


    g4. \mp f8 e[( d)] | \tuplet 3/2 { d e f} f4  d | g4. f8 e([ d]) | cis[ e] a2 \bar "||" \key f \major
    \break

    \set Score.barNumberVisibility = #(every-nth-bar-number-visible 22)
    R1*3/4*3 r4 r4 a4\mf \upbow \bar "||" f'2 d4 | \tuplet 3/2 { g8( f e ) } f4 d | \tuplet 3/2 { f8( e d)  } e4 c
    \break

    d2 c4 | a2 a4 | f'2 d4 | \tuplet 3/2 { d8([ e f]) } g4 e | a g2 | a d,4\upbow \bar "||"
    \break

    \set Score.barNumberVisibility = #(every-nth-bar-number-visible 35)

    g4. f8 e([ d]) | \tuplet 3/2 { d( e f) } f4 d | g4. f8 e([ d]) | cis[ e] a4 a,\upbow

    \break
    \pageTurn

    c4. bes8 a[( g)] | \tuplet 3/2 { g( a bes) } bes4 g | c4. bes8 a[( g)] | fis8[ a] d4\< d-1 \upbow \!

    \break
    \set Score.barNumberVisibility = #(every-nth-bar-number-visible 43)
    \mark \markup { \small \bold Appassionato }
    bes'2 \f g4  \tuplet 3/2 { c8( bes a)} bes4 a-2 | \tuplet 3/2 { bes8( a g)} a4 f | g2 f4
    \break

    d2 d4-1 | bes'2 a4 | \tuplet 3/2 { g8( a bes)} c4  a | d c2 | d \> d,4-3 \upbow \! |

    \break
    \set Score.barNumberVisibility = #(every-nth-bar-number-visible 52)

    \time 4/4
    ees4-4(\mf d) d-3( f,) | d'4( c) c( ees,) | b'-2( bes-1)  bes( <<
      cis)\stemUp \new CueVoice {
        \shiftOn
        \once \override Score.FootnoteItem.annotation-line = ##f
        \stemUp cis,^\footnote "" #'(0.1 . 0.1)
        \markup { \super "*" \italic \tiny "The cue notes represent a more challenging performance alternative." }-"*"
      }
    >>
    | \stemNeutral gis'( b,) g' r8 ees'8 |
    \break

    g4( fis) fis( a, ) | fis'( f) e( <<
      { f })
      \new CueVoice {
        \shiftOff
        \stemDown f,
      }
    >> | \stemNeutral
    e'( ees) ees( ees,) | ees4. _\markup { \smaller \italic"poco rit." } d8 d2
    \bar "||"
    \key g \minor
    \break
    \set Score.barNumberVisibility = #(every-nth-bar-number-visible 60)

    R1*3 |
    \override Score.BarNumber.break-visibility = ##(#f #t #f)
    \set Score.barNumberVisibility = #(every-nth-bar-number-visible 64)
    r2 r4 d4\upbow \mp \bar "||"
    \time 3/4 bes'2 g4 | \tuplet 3/2 { c8( bes a) } bes4 g |

    \break
    \tuplet 3/2 { bes8( a g) } a4 f | g2 f4 | d2 d4 | bes'2 g4 |

    \break
    \tuplet 3/2 { g8( a bes) } c4 a | g4 bes2 | fis4-2 d'2-3 | g,2.-3 | r4 r4 d4 \upbow

    \break
    bes'2 g4 | \tuplet 3/2 { c8( bes a) } bes4 g |
    \tuplet 3/2 { bes8(_\markup { \smaller \italic"rit. e dim." } a g) } a4 f' |
    \override Hairpin.shorten-pair = #'(0 . -2)

    \time 4/4 g,1\downbow \>( \bar "" s\upbow  |
    \override Hairpin.shorten-pair = #'(0 . -3) g)^\downbow \> \fermata \p \bar "" s\!
  }

}
