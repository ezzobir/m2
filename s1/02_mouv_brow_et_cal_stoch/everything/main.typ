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
= محتوى المقياس
#fi(1)
#imgs(2, 4)

#en[
= Processus stochastiques en temps continu
]
#fi(4)
#imgs(5, 43)

#en[
= Mouvement Brownien
]
#fi(43)
#imgs(44, 66)

#pagebreak()
#v(1fr)
= الأعمال الموجهة رقم 1
#v(2fr)
#pagebreak()
#include "series/serie1.typ"
#imgs(66, 94)

#en[
= Intégrales stochastiques Formule d'Itô
]
#fi(94)
#imgs(95, 150)

#pagebreak()
#v(1fr)
= الأعمال الموجهة رقم 2
#v(2fr)
#pagebreak()
#include "series/serie2.typ"
#imgs(150, 158)

#pagebreak()
#v(1fr)
= الأعمال الموجهة رقم 3
#v(2fr)
#pagebreak()
#include "series/serie3.typ"
#imgs(158, 167)

= Equations différentielles stochastiques
#fi(167)
#imgs(168, 188)

#pagebreak()
#v(1fr)
= الأعمال الموجهة رقم 4
#v(2fr)
#pagebreak()
#include "series/serie4.typ"
#imgs(188, 202)

#pagebreak()
#v(1fr)
= الأعمال الموجهة رقم 5
#v(2fr)
#pagebreak()
#include "series/serie5.typ"
#imgs(202, 208)

#pagebreak()
#v(1fr)
= الفرض الأول
#v(2fr)
#pagebreak()
#include "intero/intero1.typ"
#imgs(208, 210)

#pagebreak()
#v(1fr)
= الفرض الثاني
#v(2fr)
#pagebreak()
#include "intero/intero2.typ"
#imgs(210, 213)

#pagebreak()
#v(1fr)
= الإمتحان
#v(2fr)
#pagebreak()
#include "examen/examen.typ"
#imgs(213, 218)

= الإمتحان الإستدراكي
#fi(218)
#imgs(219, 223)

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