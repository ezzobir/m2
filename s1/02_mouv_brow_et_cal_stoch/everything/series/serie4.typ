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
Feuille 4
]

#ex(1)[
  #set enum(numbering: "a)")
+ Demontrez qu'il existe une solution unique de l'equation différentielle stochastique
 $ dif X_t = a (t - X_t ) dif t + sigma dif B_t $
+ Déterminez de façon explicite cette solution
]

#ex(2)[
On considère l'équation différentielle stochastique saivante :
#set enum(numbering: "1)")
$ dif X_t = −beta X_t dif t + sigma dif B_t, quad X_0=x  $
où $beta > 0$.
+ Quelle est l'equation differentielle stochastique verifiée par $Y_t := X_t e^(beta_t)$ ?
+ Si $g(t)$ est une fonction deterministe, montre que $integral_0^t g(s)dif B_s$ est Gaussien
 $N(0, integral_0^t g^2(s)dif s)$.
+ Quelle est la loi de $X_t$ ?
+ Trouver la limite {en loi} de $X_t$ quand $t --> oo$
]

#ex([3 (Mouvement Brownien geometrique)])[
Pour $r, sigma >= 0$, on considère l'EDS linéaire avec coefficients eonstants :
$ dif X_t = r X_t dif t + sigma X_t dif B_t , quad X_0 = x_0 $
c'est léquation de Black and Scholes pour la tendance du prix d'un stock.
#set enum(numbering: "1)")
+ Démontrer que la solution explicite est
 $ X_t = x_0 e^((r - sigma^2)/2t) e^(sigma B_t) $ 
+ Déduire que $ln (X_t )$ est un mouvement Brownien avec dérive.
+ Déduire que $X_t$ a la loi log-normale.
]

#ex(4)[
  #set enum(numbering: "1)")
+ Montrer que l'EDS iddet la solution explicite
 $
 X_t = x_0 e^(Lambda(t)) + e^(Lambda(t)) integral_0^t e^(-N (s)) sigma(s) dif B_n 
 wide "où" Lambda(t) = integral_0^t h(s)dif s 0
 $
+ Démontrer que la solution $X_t$ est un processus Gausien et calculer son espérance,
 covariance et variance
]

#ex([5 (Pont Brownien)])[
  #set enum(numbering: "1)")
Soit $tilde(B)_t = B_t - t B_1 , quad 0 <= t <= 1$ avec $B_t$ un mouvement Brownien standard.
+ Montrer que $tilde(B)_t$ est un processus Gaussien centré indépendant de $B_1$ avec
 cavariance:
 $ E(tilde(B)_s tilde(B)_t = s(1 - t) quad "pour" 0 ≤ t ≤ 1 $
+ Soit $X_t$ la solution de l'EDS
 $
 cases(
  dif X_t &= - X_t /(1-t) dif t + dif B_t"," quad 0<=t<=1,
  X_0 &= 0
 )
 $
 Montrer que $X_t$ et $tilde(B_t)$ ont la même loi
]

#ex(6)[
On considère le processus $X_t$ solution de l'EDS
$ dif X_t = -b (X_t) dif t + sigma (X_t ) dif B_t $
et soit $Y_t = v (X_t )$, avec $v(x) = integral_0^x 1/sigma(z) dif z$
Montrer que l'EDS pour $X_t$ se transforme en une EDS pour $Y_t$ avec coefficient
de diffusion égale à $1$ et dérive
$ [b(x) / sigma(x)  - (sigma prime(x))/ 2]_(x=v^(-1)(y)) $
]
