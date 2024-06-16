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
  Interrgation 2
]
]

#ex(4)[
#set enum(numbering: "a)")
Utiliser la formule d'Itô pour trouver :
+ $dif (B_t e^(B_t))$

+ $dif (e^(t+B_t^2))$
]

#ex(5)[
Vérifier la formule
$
integral_0^t (B_s^2 - s) dif B_s = 1/3 B_t^3 -t B_t
$
]

#ex(6)[
Résoudre l'EDS suivante pour t ≥ 0 et déterminer l'espérance et la variance de la solution
$
dif X_t = t/(1+t^2) dif t + t^(3/2) dif B_t, quad X_0 = 1
$
]

#ex(7)[
Résoudre l'équation différentielle stochastique
$
dif X_t = (B_t - 1) dif t + B_t^2 dif B_t, quad X_0 = 0.
$
]