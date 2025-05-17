#set text(
  font: "New Computer Modern",
  size: 12pt,
)
#set page(
  paper: "a4",
  margin: (x: 1cm, y: 1cm),
  numbering: "1",
)
#set heading(numbering: "1.")
#show link: underline

#set table(
  stroke: none,
  fill: (x, y) => if y == 0 {
    gray
  } else if calc.rem(y, 2) == 0 {
    silver
  },
)

#align(center)[
  #stack(
    text(size: 20pt)[*Work from Home KVM*],
    v(12pt),
    text(size: 15pt)[Krzysztof Nasuta 193328],
    v(12pt),
    text(size: 10pt)[21.05.2025 - Zarządzanie Firmą Informatyczną],
  )
]

