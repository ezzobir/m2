#import "@preview/showybox:2.0.1": showybox

#let ex(n,c) = showybox(
  frame: (
    border-color: red.darken(50%),
    title-color: red.darken(50%),
  ),
  title-style: (
    boxed-style: (
      anchor: (x: left, y: horizon)
    )
  ),
  shadow: (
    offset: 3pt,
  ),
  title: [Exercice #n],
  c,
)

#set page(
  paper: "a4",
  margin: (x:2cm, y: 2.5cm)
)

#set text(
  font: "New Computer Modern",
  lang: "ar",
  size: 12pt,
  )

#grid(
  column-gutter: 5pt,
  columns: (1.08fr, 0.92fr),
  align: (right, left),
  [
2#super[ieme] Année Master Maths\
Premier semestre, année 2022/2023\
Mouvement Brownien et calcul stochastique\
  ],
  smallcaps[
Departement de Mathematiques\
Universite de Biskra\
Module\
  ]
)

#set text(
  lang: "en",
  size: 12pt,
  )

#[
#set align(center)
#set text(weight: "bold", size: 14pt)
#upper[
  Interrgation 1
]
]

#ex(1)[
Utiliser la propriété martingale de $B_t^2 - t$ pour trouver :
#set enum(numbering: "a)")
+ $E [(B_t^2 - t) (B_s^2 - s)] comma quad s<t$
+ $E [B_t^2 slash cal(F)_s ] , quad s<t$
]

#ex(2)[
Considérons le processus
$
Z_t = integral_0^t B_u dif u, quad t>0
$
#set enum(numbering: "a)")
+ Montrer que $E (Z_T slash cal(F)_t ) = Z_t + B_t (T - t), quad forall t < T$.
+ Montrer que le processus $M_t = Z_t - t B_t$ est une $cal(F)_t-$martingale.
]

#ex(3)[
Montrer que la variable aléatoire
$
X = integral_1^T 1 / sqrt(t) dif B_t
$
est gaussienne d'espérance $0$ et de variance $ln T$ .
]