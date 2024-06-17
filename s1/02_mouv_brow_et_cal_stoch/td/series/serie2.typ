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
Feuille 2 : Exercices sur l’intégrale de Wiener
]

#ex(1)[
+ Justifier que la variable aléatoire $X_t = integral_0^t (sin s)dif B_s$
 est bien définie comme intégrale de Wiener.
2. Justifier que $X$ est un processus gaussien. Calculer son espérance 
 et sa variance $E (X_s X_t )$
3. Montrer que le processus $X$ est une martingale.
4. Quelle est la variation quadratique de $X$ ?
5. Montrer que $X_t = (sin t)B_t - integral_0^t (cos s)B_s dif s$.
]

#ex(2)[
Donner la loi de la variable aléatoire
$Y = integral_0^(+oo) exp(−s)dif B_s $
On commencera par vérifier que $Y$ est bien définie.
]

#ex(3)[
Etant donné un mouvement brownien réel $(B_t)_(t>=0)$, on définit le processus $(X_t)_(t≥0)$ par :
$ forall t >= 0," " X_t = integral_0^(t^(1/2)) (2s)^(1/2) dif B_s $
Montrer que ce procesus est gaussien. Calculer son espérance et sa covariance. En déduire
que $X$ est un mouvement brownien.
]

#ex(4)[
Etant données deux fonctions $f$ et $g$ dans $L^2 (RR_+ )$, on suppose que
$ integral_0^(+oo) f (s)dif B_s = integral_0^(+oo)g(s) dif B_s $
Que peut-on dire de $f$ et $g$ ?
]

#ex(5)[
 Soit $f in L^2_"loc" (RR_+)$. Donner la loi de $(integral_0^t f(s)dif B_s)_(t>=0)$ .
]
