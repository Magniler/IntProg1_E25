#import "@preview/fletcher:0.5.8" as fletcher: diagram, node, edge

#let js_interpret_diagram = diagram(
  node-stroke: 1pt,
  edge-stroke: 1pt,

  // Use vertical layout for better fit on wide slides
  node((2.5,0), [
    #text(size: 1.1em, weight: "bold")[JavaScript Code #linebreak()]
    #text(size: 0.9em)[e.g. `console.log('Hello')`]
  ], fill: rgb(220,220,255)),
  node((2.5,1), [
    #text(size: 1.1em, weight: "bold")[JS Engine #linebreak()]
    #text(size: 0.9em)[(V8, SpiderMonkey, etc.)]
  ], fill: rgb(230,245,220)),
  node((2.5,2), [
    #text(size: 1.1em, weight: "bold")[Machine Code #linebreak()]
    #text(size: 0.9em)[CPU instructions]
  ], fill: rgb(255,245,220)),
  node((2.5,3), [
    #text(size: 1.1em, weight: "bold")[Output #linebreak()]
    #text(size: 0.9em)[e.g. Text on screen]
  ], fill: rgb(255,230,230)),

  // Vertical edges connecting nodes top to bottom
  edge((2.5,0), (2.5,1), "->"),
  edge((2.5,1), (2.5,2), "->"),
  edge((2.5,2), (2.5,3), "->"),
)

#align(center + horizon)[
  #js_interpret_diagram
]