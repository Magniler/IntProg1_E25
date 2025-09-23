// Simple diagram: binary data -> data type -> interpreted data
#import "@preview/fletcher:0.5.8" as fletcher: diagram, node, edge

#let data_type_diagram = diagram(
  node-stroke: 1pt,
  edge-stroke: 1.2pt,


  // Binary data node
  node((1,0), [Binary Data #linebreak() (01010110)], fill: rgb(220,220,255)),
  // Data type node
  node((2,0), [Data Type #linebreak() (e.g. Integer, Text)], fill: rgb(230,245,220)),
  // Interpreted data node
  node((3,0), [Interpreted Data #linebreak() (e.g. 86 or 'V')], fill: rgb(255,245,220)),

  // Arrows
  edge((1,0), (2,0), "->"),
  edge((2,0), (3,0), "->"),
)

#align(center)[
  #data_type_diagram
]

// Usage: #include "../../shared/resources/data-type-diagram.typ" in your slides.
