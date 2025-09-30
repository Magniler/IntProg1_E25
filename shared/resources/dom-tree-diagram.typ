#import "@preview/fletcher:0.5.8" as fletcher: diagram, node, edge

#let dom_tree_diagram = diagram(
  node-stroke: 1pt,
  edge-stroke: 1.2pt,

  // Root node (HTML)
  node((2,0), [`<html>`], fill: rgb(220,220,255)),
  // Head and Body
  node((1,1), [`<head>`], fill: rgb(230,245,220)),
  node((3,1), [`<body>`], fill: rgb(230,245,220)),
  // Title under Head
  node((1,2), [`<title>`], fill: rgb(255,245,220)),
  // UL under Body
  node((2.5,2), [`<ul>`], fill: rgb(255,245,220)),
  // LI children under UL
  node((2,3), [`<li>`], fill: rgb(255,255,220)),
  node((3,3), [`<li>`], fill: rgb(255,255,220)),

  // Edges
  edge((2,0), (1,1)),
  edge((2,0), (3,1)),
  edge((1,1), (1,2)),
  edge((3,1), (2.5,2)),
  edge((2.5,2), (2,3)),
  edge((2.5,2), (3,3)),
)

#dom_tree_diagram

// Usage: #include "../../shared/resources/dom-tree-diagram.typ" in your slides.
