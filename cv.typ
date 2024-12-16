#import "@preview/fontawesome:0.5.0": *
#let name = "Thibaut Vercueil"
#let role = "Machine Learning Engineer"

#let colors = (
  primary: rgb("#4B0082") ,
  accent: rgb("#ff0107"),
  dark: rgb(12, 12, 12),
)

#set text(font: "Sora", size: 10.3pt, fill: colors.dark)

// #set text(font: "Inria Sans")
#set page(
  paper: "a4",
  margin: (1.5cm),
)

#let ic(body) = {
  box([#fa-icon(body) #h(2pt)])
}

#let tech(body) = {
  box(radius: 3pt, stroke: gray, inset: 2pt)[#text(
      size: 8pt,
      font: "Ubuntu Mono",
      weight: 200,
    )[#body]]
}

#let entry(start, end, company, location, role, stack, content) = [
  #grid(
    columns: (10%, 90%),
    align: (
      right + top,
      left,
    ),
    gutter: (2pt)
  )[#block(
  inset: (
      right: 2pt,
      top: 1pt,
    ))[#text(size: 10pt)[ #end\ #start ]]][#block(
      stroke: (
        left: 1pt + colors.primary,
      ),
      inset: (left: 4pt, top: 1pt, bottom: 1pt),
    )[*#role* at *#smallcaps(company)*, #location \ #content \
      #for t in stack [
        #tech[#t]
      ]
    ]
  ]
]

#let edu_entry(date, name, location) = [
  #grid(
    columns: (15%, 45%, 45%),
    align: (
    right, left, left
    ),
      inset: (left: 3pt, top: 1pt, bottom: 1pt),
        )[#date $dot$][*#name*][ #location]
]

#let grad = gradient.linear(
  dir: ttb,
  rgb("#ffce04"),
  rgb("#fd4b03"),
  rgb("#ff0409"),
).sharp(5)

#grid(
  columns: (50%, 50%),
  align: (left, right),
  box[
    #text(font: "Inria Serif", size: 30pt, weight: 600, fill: colors.dark)[#name] \
    #text(font: "Inria Serif", size: 16pt, weight: 200)[#role]],
  box[#set align(right)
    #set text(size: 8pt)
    #ic("linkedin") #link("https://linkedin.com/in/thibaut-vercueil")[linkedin.com/in/thibaut-vercueil] \
    #ic("github") #link("https://github.com/thibthibaut")[github.com/thibthibaut] \
    #ic("envelope") #link("mailto:thibaut.vercueil@proton.me") \
    #ic("circle-info") French living in Dublin - 31 years old
  ],
)

#line(length: 100%, stroke: 2pt + colors.primary)

== #ic("briefcase") Professional Experience

#entry(
  "Mar 2022",
  "Today",
  "Prophesee",
  "Paris",
  "Embedded Machine Learning Engineer & Team Leader",
  ("PyTorch", "TensorFlow", "Android NDK", "Halide", "QNN"),
)[
  _EdgeAI_ team lead. Optimization of Machine Learning algorithms for mobile devices. \
  Projects: Frame-Events fusion for image deblurring, motion-map from event-based data, video-frame interpolation, human presence detection
]

#entry(
  "Jul 2019",
  "Feb 2022",
  "STMicroelectronics",
  "Paris",
  "Computer Vision Application Engineer",
  ("Python", "TensorFlow", "PyTorch", "OpenCV", "C", "C++", "STM32", "stm32ai"),
)[
  Computer Vision applications for STM32 microcontrollers. \
  Projects: Face Identification, Automatic Water Meter Reading, People Counting
]

#entry(
  "Nov 2016",
  "Jul 2019",
  "CEA LIST",
  "Saclay",
  "Research Engineer",
  ("C++", "OpenCV", "ROS", "Yocto", "N2D2"),
)[
  SLAM algorithm for smart glasses with stereo cameras (collaboration with National Geographic Institute). \
  Traffic sign detection and pedestrian detection algorithms running on heterogeneous hardware. (collaboration with Renault Group)
]

#entry(
  "Apr 2016",
  "Sep 2016",
  "CEA LIST",
  "Saclay",
  "Research Intern",
  ("Arduino", "Raspberry Pi", "ROS", "C"),
)[
  Study of ultra low-resolution camera sensors for robotic applications: creation of a visual odometer for a robotic platform and a low-resolution depth estimation algorithm.
]

#entry(
  "Feb 2016",
  "Mar 2016",
  "Netdevices",
  "Paris",
  "Full Stack Developer",
  ("Javascript", "NodeJS", "React Native", "docker", "git"),
)[
  Development of a collaborative parking space sharing system.
]

#entry(
  "May 2015",
  "Sep 2015",
  "Harvard University",
  "Cambridge MA, USA",
  "Intern",
  ("PHP", "HTML/CSS", "Javascript", "SQL"),
)[
  Development of a content management system for a research group.
]

#entry(
  "Sep 2014",
  "May 2015",
  "ECE",
  "Paris",
  "Developer",
  ("Java", "Android", "NodeJS", "SQL"),
)[
  Development of an academic project of a geolocation system to help victims of cardiac arrest, in partnership with the French Red Cross. _1st prize at the ECE Innov' Awards 2015._
]

== #ic("graduation-cap") Education

#edu_entry(2016, "Engineering Degree in Embedded Systems", "École Centrale d’Électronique, Paris")
#edu_entry("2011–2013", "Preparatory Classes", "Lycée Vaugelas, Chambéry")
#edu_entry(2011, "Baccalauréat spec. Mathematics", "Lycée du Granier, Chambéry")

#h(1pt)
#grid(
  columns: (70%, 30%),
  gutter: 3pt,
  block[
    == #ic("computer") Technical Skills
    - Programming: C, C++, Python, Rust, Java, MATLAB
    - Libraries & Frameworks: ROS, OpenCV, TensorFlow, PyTorch
    /* - Web Development: HTML, CSS, JavaScript, Node.js, Flask */
    - Miscellaneous: Linux, Bash, Git, LaTeX, Typst

  ],
  block[
    == #ic("globe") Languages
    - French (Native)
    - English (Fluent, IELTS 7)
    - Spanish (Basic)
  ],
)



