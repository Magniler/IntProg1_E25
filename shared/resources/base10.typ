#import "@preview/fletcher:0.5.8" as fletcher: diagram, node, edge

#let base_system_diagram = diagram(
  node-stroke: 1pt,
  edge-stroke: 1pt,

  // Base-10 nodes
  node((0,2), ["Base-10", "Decimal"]),
  node((2,2), ["Digits:", "0 1 2 3 4 5 6 7 8 9"]),
  node((4,2), ["Example:", "245 = 2×10² + 4×10¹ + 5×10⁰"]),

  edge((0,2), (2,2), "->"),
  edge((2,2), (4,2), "->"),

  // Base-2 nodes
  node((0,0), ["Base-2", "Binary"]),
  node((2,0), ["Digits:", "0 1"]),
  node((4,0), ["Example:", "1011 = 1×2³ + 0×2² + 1×2¹ + 1×2⁰"]),

  edge((0,0), (2,0), "->"),
  edge((2,0), (4,0), "->"),
)

#align(center)[
  #base_system_diagram
]