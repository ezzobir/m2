// BEGIN MY VARIABLES
/***********************************************/
#import "gvars.typ": *
#import "vars.typ": *
/***********************************************/
// END MY VARIABLES

// BEGIN TITLE PAGE
/***********************************************/
#[
  #set page(
    margin: 0pt,
    background: 
      image("images/logos/lighting.jpg",
      width: 101%
       )
  )

#place(center, dx: -5%, dy: 72%)[
  #rect(
    fill: black.lighten(30%),
    radius: 15pt,
    inset: 30pt,
    )[
    #set align(center)
    #set text(
      lang: "ar",
      font: "ae_Granada",
      size: 26pt,
      fill: white,
      weight: "extrabold",
      )
    #title
]]

#place(right, dx: 2%,dy: 0%)[
#rect(
  fill: black.lighten(30%),
  height: 102%,
  width: 10%,
  )
]

#place(right, dx: 6%,dy: 25%)[
  #set text(
    lang: "ar",
    font: "(A) Arslan Wessam A",
    size: 33.5pt,
    fill: white,
    weight: "bold",
    )
    #rotate(-90deg)[
      #date
      ]
      ]
      ]
/***********************************************/
// END TITLE PAGE