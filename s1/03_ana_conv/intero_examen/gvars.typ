
#import "@preview/colorful-boxes:1.3.1": stickybox


// BEGIN MY VARIABLES
/***********************************************/
#import "vars.typ": *
/***********************************************/
// END MY VARIABLES

#let en(c) = [
  #set text(lang: "en")
  #c
  ]

#let ar(c) = [
  #set text(lang: "ar")
  #c
  ]

// For inserting images
/***********************************************/
// custom image
#let ci(j, w) = {
  let j = if j < 10 { "0" } + str(j)
  align(center+horizon)[#image(
  fit: "stretch", width: w, "images/" + j + ".jpg")]
}

// first image
#let fi(j) = {
  let j = if j < 10 { "0" } + str(j)
  align(center+horizon)[#image(
  fit: "stretch", width: 100%, height: 85%, "images/" + j + ".jpg")]
}

// image
#let i(j) = image(fit: "stretch", width: 100%, height: 100%, j)

// to insert multiple images
#let imgs(a, b) = for n in range(a, b) {
  let n = if n < 10 { "0" } + str(n)
  i("images/" + n + ".jpg")
}

// to insert how to images
#let howto(x, y) = [
  #rect(
    stroke: rgb("1d242e")+5pt,
    radius: 5pt,
    inset: 0pt,
    )[
    #image(
      fit: "stretch",
      "images/howto/" + x + ".jpg",
      width: y,
      )
      ]
      ]

// INSERT BOXES
/***********************************************/
#let lcb(c) = [
  #set align(right)
  #stickybox(
    rotation: -5deg,
    )[#c]
]
#let rcb(c) = [
  #set align(right)
  #stickybox(
    rotation: 5deg,
    )[#c]
]


// THIS VARIABLE FOR INSET IN LAST PAGE RECTANGLES
#let s = (x: 5pt, y: 15pt)

// THIS FONT SIZE FOR RECTANGLES TITLES IN LAST PAGE
#let s2 = 25pt

// THIS IS THE FILL OF RECTANGLES IN LAST PAGE
#let c = black.lighten(70%)

// THIS FONT FOR RECTANGLES TITLES IN LAST PAGE
#let f = "(A) Arslan Wessam A"

// text style
#let textsty(doc) = [
  #set text(
    font: "Amiri",
    lang: "ar",
    size: 12pt,
    )
    #doc
]

//page style
#let pagesty(doc) = [
  #set page(
    paper: "a4",
    margin: (x: 2cm, y: 2.5cm),
    )
    #doc
]

// BEGIN HEADING STYLE
/***********************************************/
#let headsty(it) = {
  set align(center)
  rect(
    fill: rgb("ebe4c0"),
    inset: 15pt,
    radius: 10pt,
  )[
    #set align(center)
    #set text(
      fill: rgb("0005eb"),
      font: "ae_Granada"
      )
    #it
  ]
}
/***********************************************/
// BEGIN HEADING STYLE

// BEGIN TOC
/***********************************************/
#let toctitle = [
      #place(
        auto,
        float: true,
        clearance: -4.5em,
        dy:-4.5em,
      )[
      #rect(
      fill: rgb("bf6000"),
      width: 100pt,
      inset: 15pt,
      radius: 25pt,
      stroke: rgb("800000")+3pt,
      )[
        #set text(fill: white, lang: "ar")
        المحتويات
        ]]]
#let toc = [
// #v(3cm)
#align(center)[
#rect(
  fill: rgb("ebe4c0"),
  radius: 15pt,
  inset: 25pt,
  stroke: rgb("800000")+3pt,
)[
  #v(4em)
  #set text(
    fill: rgb("0005eb"),
    weight: "bold",
    size: 18pt,
    font: "Aref Ruqaa"
    )
  #set par(
    leading: 0.78em,
  )
  #outline(
    fill: line(length: 100%, stroke: rgb("bf6000")),
    title: toctitle,
    )
    ]]]
/***********************************************/
// END TOC

// BEGIN HEADER
/***********************************************/
#let header = [
  #set text(weight: "bold")
  #grid(
    columns: (1fr, 1fr, 1fr),
    align: (horizon+right, horizon+center, horizon+left),
    inset: (x: 0pt, y: 10pt),
    column-gutter: 5pt,
    grid.hline(y: 1, stroke: 1pt+black),
    [
      #link("https://www.youtube.com/@ezzobirschool")[
        #set text(fill: red)
        #set text(lang: "ar", size: 11pt, font: "Noto Kufi Arabic")
        #box(baseline: 30%)[
          #image(
            "images/logos/youtube.png",
            width: 12%,
            )]
            قناتي على اليوتيوب
            ]
        ],

        [
        #set text(lang: "ar", size: 9pt, font: "Noto Kufi Arabic")
        #headertitle
            ],
            [
              #link("https://t.me/M1_Ernstservice_bot")[
                #set text(fill: blue)
                #set text(lang: "ar", size: 11pt, font: "Noto Kufi Arabic")
                  إرنست بوت
                #box(baseline: 25%)[
                  #image(
                    "images/logos/telegram.png",
                    width: 10%,
                    )
                  ]
                ]
                ],
                )
                ]
/***********************************************/
//END HEADER

//BEGIN FOOTER
/***********************************************/
#let footer = [
 #set text(weight: "bold")
 #grid(
  columns: (1fr, 1fr, 1fr),
  align: (horizon+right, bottom+center, horizon+left),
  inset: (x: 0pt, y: 10pt),
  column-gutter: 5pt,
  grid.hline(y: 0, stroke: 1pt+black),
  [
    #set text(lang: "ar", size: 13pt, font: "Noto Kufi Arabic")
    _الزبير بزيو_\
    _Ezzobir BEZZIOU_
    ],
    [
      #rect(
        inset: 10pt,
        radius: 5pt,
        fill: yellow,
        stroke: 2pt+purple,
        )[
          #set text(lang: "ar", size: 11pt, font: "Noto Kufi Arabic")
          #set align(center+horizon)
          لا تنسونا من صالح دعائكم
          ]
          ],
    [
      #set text(lang: "ar", size: 11pt, font: "Noto Kufi Arabic")
      #counter(page).display(
      "صفحة 1 من 1",
      both: true,
      )
      ],
      )
]
/***********************************************/
// END FOOTER

//ADD HEADING AND FOOTER TO THE DOCUMENT
#let add_h_f(doc) = [
  #set page(
  header: header,
  footer: footer,
  )
  #doc
]