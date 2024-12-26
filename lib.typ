/**
 *  Stargazer theme - adapted for CAU
 * */

#import "@preview/touying:0.5.5": *
#import "@preview/numbly:0.1.0": numbly
#import themes.stargazer: *

#let cau-theme(
  aspect-ratio: "16-9",
  lang: "en",
  font: ("Libertinus Serif", "Source Han Sans SC", "Noto Sans CJK SC", "SimHei", "Heiti SC", "STHeiti"),
  ..args,
  body,
) = {
  set text(lang: lang, font: font)
  set heading(numbering: numbly("{1}.", default: "1.1"))

  show: if lang == "zh" {
    import "@preview/cuti:0.3.0": show-cn-fakebold
    show-cn-fakebold
  } else {
    it => it
  }

  show: stargazer-theme.with(
    aspect-ratio: aspect-ratio,
    config-info(logo: image("assets/CAU_logo.svg")),
    config-colors(
      primary: rgb("#4d7c2b"),
      primary-dark: rgb("#3d5c27"),
      secondary: rgb("#fdd100"),
      tertiary: rgb("#006600"),
      neutral-lightest: rgb("#ffffff"),
      neutral-darkest: rgb("#000000"),
    ),
    config-page(
      background: place(
        center + horizon,
        dx: 47%,
        dy: 7%,
        image("assets/Gate.svg", width: 75%),
      ),
    ),
    ..args,
  )

  body
}
