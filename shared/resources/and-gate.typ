#import "@preview/fletcher:0.5.8" as fletcher: diagram, node, edge
#let colors = (maroon, olive, eastern)

#set text(white, font: "New Computer Modern")
#align(center)[
  #diagram(
    node-stroke: 1pt,
    edge-stroke: 1pt,
    
    node((0,1), [Input A], fill: colors.at(0)),
    node((0,-1), [Input B], fill: colors.at(0)),
    node((2,0), [AND], fill: colors.at(1)),
    node((4,0), [Output], fill: colors.at(2)),
    
    edge((0,1), (2,0), "->"),
    edge((0,-1), (2,0), "->"),
    edge((2,0), (4,0), "->"),
  )
]