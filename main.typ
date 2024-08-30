#import "@local/mytemplate:1.0.0": *

#show: project.with(
  template: "book",
  title: "核辐射物理及探测学",
  authors: (
    "Anzreww",
  ),
  time: "甲辰春夏于清华园",
  contents:true,
  content_depth: 3,
)

#pagebreak(weak: true)

#include "chap1.typ"

#pagebreak(weak: true)

#include "chap2.typ"

#pagebreak(weak: true)

#include "chap3.typ"