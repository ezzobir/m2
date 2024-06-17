// BEGIN MY VARIABLES
/***********************************************/
#import "gvars.typ": *
#import "vars.typ": *
/***********************************************/
// END MY VARIABLES

// BEGIN TITLE PAGE
/***********************************************/
#include "cover.typ"
/***********************************************/
// END TITLE PAGE

// BEGIN PAGE AND TEXT SETTING FOR DOCUMENT
/***********************************************/
// TEXT SETUP
#show: textsty

// PAGE SETUP
#show: pagesty

// HEADING SETUP
#show heading: it => headsty(it)
/***********************************************/
// END PAGE AND TEXT SETTING FOR DOCUMENT

#set page(numbering: "i")
#counter(page).update(1)

#v(.5cm)
// BEGIN TABLE OF CONTENTS
/***********************************************/
#toc
/***********************************************/
// END TABLE OF CONTENTS

#v(1cm)
// BEGIN REMARK
/***********************************************/
#include "remark.typ"
/***********************************************/
//END REMARK
#pagebreak()

// ADD HEADER AND FOOTER TO THE DOCUMENT
#show: add_h_f

// RESET THE PAGE NUMBERING
#set page(numbering: "1")
#counter(page).update(1)

//BEGIN IMAGES
/***********************************************/
= الواجب المنزلي
#fi(1)
#imgs(2, 3)

= حل الواجب المنزلي
#fi(3)
#imgs(4, 5)

// first matlab program and his output
#block(
  fill: red.lighten(80%),
  radius: 15pt,
  inset: 10pt,
)[
  #v(.5cm)
  #[
    #set text(size: 20pt)
    #set align(center)
  البرنامج باستعمال
  Matlab
  ]
  #v(1fr)
  #include "code/ex1.typ"
  #v(1fr)
  #ci(5, 70%),
  #ci(6, 70%),
]

#imgs(7, 10)

// second matlab program and his output
#block(
  fill: red.lighten(80%),
  radius: 15pt,
  inset: 10pt,
)[
  #v(.5cm)
  #[
    #set text(size: 20pt)
    #set align(center)
  البرنامج باستعمال
  Matlab
  ]
  #v(1fr)
  #include "code/ex2.typ"
  #v(1fr)
  #ci(10, 80%)
]

#pagebreak()

= الإمتحان
#fi(11)
#imgs(12, 13)
/***********************************************/
//END IMAGES

#pagebreak()

// BEGIN LAST PAGE
/***********************************************/
= روابط مجتمعاتنا
#v(.5cm)
#include "ourlinks.typ"
/***********************************************/
// END LAST PAGE

#pagebreak()

// BEGIN LAST PAGE
/***********************************************/
#set text(size: 14pt)
= لنتعاون و نُثري هذا المحتوى <h>
#v(.5cm)
#include "howto.typ"
/***********************************************/
// END LAST PAGE