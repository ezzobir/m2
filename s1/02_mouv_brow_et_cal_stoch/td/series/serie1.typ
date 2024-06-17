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
Feuille 1 : Exercices sur le mouvement Brownien
]

#ex(1)[
Soit $Z$ une variable aléatoire de loi normale centrée et réduite. 
Pour tout $t >= 0$, nous posons $X_t = sqrt(t)Z$. Le processus 
stochastique $X = (X_t)_(t≥0)$ a des trajectoires continues et
$forall t ≥ 0 ", " X_t$ est de loi $N (0, t)$. Est-ce que $X$ est 
un mouvement Brownien ? Justifiez votre réponse.
]

#ex(2)[
Soit $W$ et $tilde(W)$ , deux mouvements Browniens standard 
indépendants l'un de l'autre, et $rho$, une constante entre $0$ et 
$1$.  Pour tout $t >= 0$, nous posons 
$X_t = rho W_t + sqrt(1 - rho^2 )tilde(W)$.
Le processus stochastique $X = (X_t)_(t>=0)$ a des trajectoires 
continues et $forall t >= 0, X_t$ est de loi $N (0, t)$. 
Est-ce que $X$ est un mouvement Brownien ? Justifiez votre réponse.
]

#ex(3)[
Soit $W$ un mouvement Brownien standard construit sur l'espace de probabilité filtré
$(Omega, cal(F), (cal(F)_t)_(t>=0) , P)$. Posons \
$ X_t = exp[sigma W_t - sigma^2/2 t] $
Montrer que $X = (X_t)_(t >= 0)$ est une martingale.
]

#ex(4)[
Soit $W$ un mouvement Brownien standard construit sur l'espace de probabilité filtré
$(Omega, cal(F), (cal(F)_t)_(t >= 0) , P)$.
Montrer que ${(W_t)^2 - t : t >= 0}$ est une martingale.
]

#ex(5)[
Soit $W$ un mouvement Brownien standard. Montrez que
$ op("Cov") [W_t, W_s] = min(s, t) = s and t $
]

// #pagebreak()

#ex(6)[
Soit $W_t$ un mouvement Brownien standard. Montrez que
#set enum(numbering: "(1)")
+ Pour tout $s > 0 , {W_(t+0) - W_s : t >= 0}$
+ ${- W_t : t >= 0}$
+ ${c W_(t/c^2) : t >= 0}$
+ ${V_0 = 0 "et" V_t = t W_(1/t) "si" t > 0 : t ≥ 0}$
sont des mouvements Browniens standard.
]

#ex(7)[
Trouver la loi de
$ B_t + B_s", " s<t $
]

#ex(8)[
Touver la loi de
$ B_1+B_2+B_3+B_4 $
]

#ex(9)[
Touver la loi de
$ B_(1/4)+B_(1/2)+B_(3/4)+B_1 $
]

#ex(10)[
Calculer
$ P(integral_0^1 B_t upright(d)t > 2/sqrt(3)) $
]

#ex(11)[
Calculer
$ E(e^(-theta B^2_t)) $
]
 
#ex(12)[
Soit $B_t$ un mouvement Brownien, démontrer que le processus
$ Z_t=B_t-integral_0^t B_s / s upright(d)s  $
est un mouvement Brownien.
]