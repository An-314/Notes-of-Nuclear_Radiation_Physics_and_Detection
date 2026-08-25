#import "@preview/scripst:1.1.2": *

#show: scripst.with(
  template: "book",
  title: "核辐射物理及探测学",
  author: (
    "Anzreww",
  ),
  time: "甲辰春夏于清华园",
  contents: true,
  content-depth: 3,
  par-leading: 0.6em,
)

#pagebreak(weak: true)

#include "chap1.typ"

#pagebreak(weak: true)

#include "chap2.typ"

#pagebreak(weak: true)

#include "chap3.typ"
