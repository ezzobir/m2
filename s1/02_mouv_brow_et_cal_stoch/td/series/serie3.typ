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
Feuille 3
]

#ex(1)[
Soit $B_t$ un Mouvement Brownien. Pour quelles valeurs de $a "et" b in RR$ le processus
$ Z_t = integral_a^t s^a e^(b B_s) dif B_s $
est bien définie ?\
Pour quelles valeurs $a "et" b in RR$ le processus $Z$ est une martingale de carré intégrablée
]

#ex(2)[
#set enum(numbering: "(1)")
Montrer que
+ $integral_0^t B_pi dif B_s = 1/2 B_t^2 - 1/2t$

+ $integral_0^t s dif B_s = t B_t - integral_0^t dif B_s$

+ $integral_0^t B_pi^2 dif B_s = 1/pi B_t^3 - integral_a^t dif B_s$
]

#ex(3)[
Soit $(B_t)$ un Mouvement Brownien standard. calculer l’equation
differentielle stochastique i.e $dif Z_t$ , des processus suivants :
#set enum(numbering: "(1)")
+ $Z_t = (X_t)^2 "où" dif X_t = mu X_t dif t + sigma X_t dif B_t$

+ $Z_t = 3 + t + e^(B_t)$

+ $Z_t = e^(alpha t)$

+ $Z_t = integral_0^t g(s) dif B_s$

+ $Z_t = e^(a B_t)$

+ $Z_t = e^(alpha X_t) "où" dif X_t = mu dif t + sigma dif B_t$
]

#ex(4)[
Pour $lambda > 0$, soit
$ X_t = integral_0^t e^(-lambda s) dif B_s $
Montrer que $X_t = e^(-lambda t) B_t + lambda integral_0^t e^(-lambda s) B_s dif s$
]

#ex(5)[
Montrer que $X_t = integral_0^t sin s dif B_s$ est bien définie
#set enum(numbering: "i)")
+ Montrer que $X_1$ est un processus Gaussien et calculer $E (X_t) "et" E (X_times X_t )$
+ Calculer $E (X_t slash cal(F)_s )$
+ Montrer que $X_t = sin t B_t - integral_0^t cos s B_s dif s$
]

#ex(6)[
  #set enum(numbering: "1)")
+ En utlisant la formule d'Ito, montrer que $M_t = B_t^3 - 3 integral_0^t B_s dif s$ est une martingale
+ Utliser la formule d'Itô pour montrer que $t B_t = integral_0^t B_s dif s + integral_0^t s dif B_s$
+ Vérifier si le processus $X_t = B_t^3 - 3t B_t$ est une martingale
]

#ex(7)[
Utiliser la formule d'Itô pour calculer $E (B_t^6 )$.
]