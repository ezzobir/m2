// BEGIN MY VARIABLES
/***********************************************/
#import "gvars.typ": *
#import "vars.typ": *
/***********************************************/
// END MY VARIABLES

// BEGIN LINKS
/***********************************************/

#set text(size: 16pt)
#set align(center)
#[
#set text(font: "Amiri", weight: "bold")
#emoji.face.halo
هذه روابط قنواتنا و مجموعاتنا على التليغرام و الفيسبوك
أسفله يسعدنا إنضمامكم إليها
#emoji.face.halo
]
// Begin Links Format
#show link: it => {
  set align(left)
  rect(
    fill: purple.darken(30%),
    inset: (x: 3pt, y: 8pt),
    radius: 5pt,
  )[
  #set text(
    lang: "en",
    size: 11pt,
    fill: yellow.lighten(30%),
    weight: "bold"
    )
  #set align(center)
  #it
  ]
}
// END LINKS FORMAT
// BEGIN LIST FORMAT
#set list(marker: [
  #set text(fill: red)
  #sym.circle.filled.big]
)
// END LIST FORMAT

#grid(
  columns: (1fr, 1fr),
  column-gutter: 5pt,
  row-gutter: 5pt,
  align: (right+horizon, right+horizon),
  // begin first gray rectangle
  rect(
    fill: c,
    radius: 15pt,
    width: 100%,
    inset: s,
    )[
    #set text(lang: "ar", size: 16pt)
    #align(center)[
    #rect(
      fill: black,
      radius: 10pt,
      inset: 7pt
      )[
      #set text(size: s2, fill: rgb("35afe8"), font: f)
      #box(baseline: 30%)[
        #image(
          "images/logos/telegram.png",
          width: 9%,
          )
        ]
      قنوات التليغرام:
    ]]
    - قناة السنة أولى ليسانس\
     #link("https://t.me/l1mathematics")[
      #box( baseline: 22%)[
        #image(
          "images/logos/l1channel.png",
          width: 7%,
          )
      ]
      L1 Math (channel)
      ]
    - قناة السنة الثانية ليسانس\
     #link("https://t.me/l2mathematics")[
      #box( baseline: 22%)[
        #image(
          "images/logos/l2channel.png",
          width: 7%,
          )
      ]
      L2 Math (channel)
     ]
    - قناة السنة  الثالثة ليسانس\
     #link("https://t.me/l3mathematics")[
      #box( baseline: 22%)[
        #image(
          "images/logos/l3channel.png",
          width: 7%,
          )
      ]
      L3 Math (channel)
     ]
    - قناة السنة أولى ماستر رياضيات تطبيقية\
     #link("https://t.me/m1mathematics")[
      #box( baseline: 22%)[
        #image(
          "images/logos/m1channel.png",
          width: 7%,
          )
      ]
      M1 [Applied Mathematics](channel)
     ]
    - قناة السنة ثانية ماستر رياضيات تطبيقية\
     #link("https://t.me/m2mathematics")[
      #box( baseline: 22%)[
        #image(
          "images/logos/m2channel.png",
          width: 7%,
          )
      ]
      M2 [Applied Mathematics](channel)
     ]
],

  // end first gray rectangle
  // begin second gray rectangle
  [
  #rect(
    fill: c,
    radius: 15pt,
    width: 100%,
    inset: s,
    )[
    #set text(lang: "ar", size: 16pt)
    #align(center)[
    #rect(
      fill: black,
      radius: 10pt,
      inset: 7pt
      )[
      #set text(size: s2, fill: rgb("35afe8"), font: f)
      #box(baseline: 30%)[
        #image(
          "images/logos/telegram.png",
          width: 9%,
          )
        ]
    مجموعات التليغرام:
    ]]
    - مجموعة السنة ثانية ماستر رياضيات\
     #link("https://t.me/+3l2ekDQjtro2MDI8")[
      #box( baseline: 22%)[
        #image(
          "images/logos/m2group.png",
          width: 7%,
          )
      ]
        M2 [Applied Mathematics] (group)
     ]
    - مجموعة الرياضيات التطبيقية\
    #box[
     #link("https://t.me/applied_mathematics_dz")[
      #set text(dir: rtl)
      #box( baseline: 22%)[
        #image(
          "images/logos/app_math.png",
          width: 7%,
          )
      ]
      الرياضيات التطبيقية
     ]]
    ]
  // end second gray rectangle
  // begin third gray rectangle
  #rect(
    fill: c,
    radius: 15pt,
    width: 100%,
    inset: s,
    )[
    #set text(lang: "ar", size: 16pt)
    #align(center)[
    #rect(
      fill: black,
      radius: 10pt,
      inset: 7pt
      )[
      #set text(size: s2, fill: rgb("#2c81ef"), font: f)
      #box(baseline: 30%)[
        #image(
          "images/logos/facebook.png",
          width: 9%,
          )
        ]
    مجموعات الفيسبوك:
    ]]
    - مجموعة الرياضيات التطبيقية\
    #box[
     #link("https://www.facebook.com/groups/appliedmathematicsdz")[
      #set text(dir: rtl)
      #box( baseline: 22%)[
        #image(
          "images/logos/app_math.jpg",
          width: 7%,
          )
      ]
      الرياضيات التطبيقية
     ]]
  ]
  ],
  // END THIRD GRAY RECTANGLE
/********************/
)
/*********************************************/

/*********************************************/
// BEGIN ORANGE RECTANGLE
#rect(
  inset: (x: 15pt, y: 8pt),
  fill: orange.lighten(50%),
  radius: 15pt,
)[
#set text(lang: "ar", size: 14pt)
#grid(
  columns: (1fr, 0.8fr),
  column-gutter: 5pt,
  inset: 0pt,
  align: (horizon+right, horizon+left),
// begin remark
  [
    #[
      #set align(center)
      #set text(font: "arabswell_1", size: 25pt)
    ملاحظة:
    ]

    #h(1cm)
    هذه روابط حساباتي على اليسار
    إذا كان لديك استفسار يمكنك مراسلتي على أي منهم حساب التليغرام، بوت 
     التواصل (على تليغرام أيضا) أو الإيميل

     أما إذا كنت تريد إرسال ملفات خاصة بأحد مقاييس الرياضيات
     فيمكنك أيضا مراسلتي على أي واحد فيهم و لكن أرشح لك تطبيق تليغرام
     خاصة إذا كان حجم الملف كبيرا
  ],
// end remark
// begin blue rectangle
  
rect(
  fill: blue.lighten(50%),
  radius: 15pt,
  )[
    #set align(right)
- حسابي على تليغرام
     #link("https://t.me/ezzobir")[
      #box( baseline: 12%)[
        #image(
          "images/logos/telegram.png",
          width: 7%,
          )
      ]
      Ezzobir
      ]
- بوت التليغرام الخاص بالتواصل معنا
     #link("https://t.me/ask_your_question_to_ezzobir_bot")[
      #box( baseline: 0%)[
        #image(
          "images/logos/robot.png",
          width: 7%,
          )
      ]
        Contact Us
      ]
- الإيميل
     #link("mailto:ezzobirb@protonmail.com")[
      #box( baseline: 20%)[
        #image(
          "images/logos/mail.png",
          width: 7%,
          )
      ]
      ezzobirb\@protonmail.com
      ]
  ]
// end blue rectangle
)
]
// end orange rectangle
/***********************************************/
// END LINKS