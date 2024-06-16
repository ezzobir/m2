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
2#super[ième] Année Master Maths\
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
Feuille 5
]

#ex(1)[
Vérifier si le processus stochastique suivant est une martingale :
$ X_t = B_1 (t) B_2 (t) $
où $B_1$ et $B_2$ sont deux mouvements Browniens
]

#ex(2)[
Ecrire la forme explicite de théorème de représentation martingale pour le processus
$(M_t)_(t >= 0)$ définit par
#set enum(numbering: "1)")
+ $M_t = integral_0^t B_s dif s$

+ $M_t = B_t^2$
]

#ex(3)[
Soit $X_t = (X_t , Y_t)$ solution de I’EDS
$
cases(
dif X_t &= - 1/2 X_t dif t - Y_t dif B_t,
dif Y_t &= -1/2 Y_t dif t + X_t dif B_t,
X(0) &= 0 comma quad Y (0) = 0
)
$
Posons $Z_t = X_t^2 + Y_t^2$.\
Trouver l'EDS satisfaite par $Z_t$. Quelle est la loi de $Z_1$.
]

#ex(4)[
Supposons qu'une particule se promène de façon aléatoire sur 
un plan de façon telle que sa position au temps $t$ est donnée
par le couple $(W_t^((1)) comma W_t^((2)))$
où $(W_t^((1))$ et $W_t^((2)))$ sont deux
mouvements browniens indépendants. La distance de cette particule a l'origine à 
l'instant $t$ est donnée par
$ B_t = sqrt( (W_t^((1)))^2 + (W_t^((2)))^2 ) $
Sachant que le processus de covariance quadratique de deux
martingales indépendants est nulle.
Utiliser le lemme d'Itô afin de démontrer que le processus $B$ satisfait
l'équation différentielle stochastique
$
dif B_t = 1/2  1/B_t dif t + W_t^((1))/B_t dif W_t^((1)) + W_t^((2))/B_t dif W_t^((2))
$
]

#ex(5)[
Soit b une fonction mesurable bornée. Utiliser le théorème de Girsanov pour construire
une solution faible de l'EDS
$ dif X_t = b (X_t ) dif t + dif B_t $
sur l'interville $[0, T ]$.
]

#ex(6)[
On considère la diffusion définie par l'équation
$ dif X_t = -X_t dif t + dif B_t wide "(Processus d'UO)" $

Donner le générateur $L$ associé.
]

#ex(7)[
On considère la diffusion définie par l'équation
$ dif X_t = r X_t dif t + X_t dif B_t wide "(Mouvement brownien géonmétrique)" $
Donner le générateur $L$ associé.
]