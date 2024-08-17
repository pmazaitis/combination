#let combination(
  columns: (auto,), 
  rows: (auto,),
  gutter: 1em,
  text_align: center,
  text_styles: arguments(black),
  ..parts ) = {
    let comb_pairs = parts
          .pos()
          .chunks(2, exact: true)
          .map(((p,c)) => [
              #block([#p
              #align(text_align, text(..text_styles, c))])]
    )
    grid(
      columns: columns,
      rows: rows,
      gutter: gutter,
      ..comb_pairs
    )
  }
