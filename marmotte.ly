\version "2.23.3"

\header {
  composer = "Ludwig van Beethoven (1770-1827)"
  crossRefNumber = "1"
  footnotes = ""
  title = "Marmotte — Johann Wolfgang von Goethe (1749-1832)"
}

\score {
  \new Voice \relative {
    \set Staff.printKeyCancellation = ##f
    \set Score.extraNatural = ##f
    \key c \major
    \numericTimeSignature
    \compressEmptyMeasures
    \override MultiMeasureRest.expand-limit = #1
    \override Score.MetronomeMark.padding = #5
    \time 6/8

    s2 \mf s8

    e'8\upbow  |
    a4-0(\downbow a8-- \downbow)
    a4-0(\upbow a8-- \upbow) |

    b[(\< c b)]\!
    a4( a8--) |

    b4( b8--) c8[( b a)] |
    b4. e,4 \tweak shorten-pair #'(2 . 0)\>( e8--)\!

    \break

    a4-0( a8--) a4( a8--) |
    b[(\< c b)]\!
    a4( a8--) |
    \stemUp
    b4( b8--) e,4( e8--\>) | a4.-4\!( a4) a16-0\upbow([ b])

    \stemNeutral
    \break
    c4(\< c8--)\! d4(\sf d8--) | e4-4( e8--) d4\sf( d8--) |  \stemUp  c8( b a) c8(\> b a) |

    b4.\!( b4) a16\upbow([ b]) |

    \stemNeutral
    c4( c8--) d4\sf( d8--)

    \break
    e4-4( e8--) d4( d8--) | c8([ b a]) b([\> c b]) | a4.-0( a4) \! r8

    r\breve
    r1
    |
    r4. r4  \bar ":|."
  }
}
