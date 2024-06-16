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
  Examen
]
#align(center)[
On travaille toujours sur un espace de probabilité filtré $(Omega, cal(F), (cal(F))_(t>=0) , P )$
sur lequel est défini un $(cal(F))_(t>=0)$-mouvement Brownien $B = (B_t)_(t>=0)$.
]

#ex([1 (6 points)])[
#set enum(numbering: "(1)")
Soit $X_t = e^(B_t)$.
+ Montrer que $X_t$ n'est pas une martingale.
+ Montrer que $e^(-t/2)X_t$ est une martingale.
+ Trouver $op("Cov") (X_s, X_t )$
  - par un calcul direct,
  - en utilisant la question 2.
]

#ex([2 (3 points)])[
Soit $Y = integral_1^T sqrt(t) dif B_t$. Montrer que $Y$ est une variable aléatoire de loi normale d'espérance
$0$ et de variance $(T^2 - 1)/2$
]

#ex([3 (3 points)])[
Vérifier la formule
$
integral_0^t s B_s dif B_s = t/2 (B_t^2 - t/2) - 1/2 integral_0^t B_s^2 dif s
$
]

#ex([4 (3 points)])[
#set enum(numbering: "(1)")
Montrer en utilisant la formule d'Itô que
+ $integral_0^t sin B_s dif B_s = 1 - cos B_t - 1/2 integral_0^1 cos B_s dif s$

+ $integral_0^t e^(s/2)cos B_s dif B_s = e(t/2) sin B_t$
]

#ex([5 (5 points)])[
Résoudre l'équation différentielle stochastique
$
dif X_t = t^2 dif t + e^(t/2) cos B_t dif B_t , quad X_0 =0
$
et trouver $E (X_t)$ et $op("Var") (X_t )$.
]