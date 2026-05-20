
#import "@preview/fontawesome:0.5.0": fa-icon

#let name = "Daniel Guardia Collado"
#let locale-catalog-page-numbering-style = context { "Daniel Guardia Collado - Page " + str(here().page()) + " of " + str(counter(page).final().first()) + "" }
#let locale-catalog-last-updated-date-style = "Last updated in May 2026"
#let locale-catalog-language = "es"
#let design-page-size = "a4"
#let design-colors-text = rgb(0, 0, 0)
#let design-colors-section-titles = rgb(0, 79, 144)
#let design-colors-last-updated-date-and-page-numbering = rgb(128, 128, 128)
#let design-colors-name = rgb(0, 79, 144)
#let design-colors-connections = rgb(0, 0, 0)
#let design-colors-links = rgb(0, 79, 144)
#let design-section-titles-font-family = "XCharter"
#let design-section-titles-bold = true
#let design-section-titles-line-thickness = 0.5pt
#let design-section-titles-font-size = 1.2em
#let design-section-titles-type = "with-full-line"
#let design-section-titles-vertical-space-above = 0.55cm
#let design-section-titles-vertical-space-below = 0.3cm
#let design-section-titles-small-caps = false
#let design-links-use-external-link-icon = true
#let design-text-font-size = 9pt
#let design-text-leading = 0.6em
#let design-text-font-family = "Montserrat"
#let design-text-alignment = "justified"
#let design-text-date-and-location-column-alignment = right
#let design-header-photo-width = 3.5cm
#let design-header-use-icons-for-connections = false
#let design-header-name-font-family = "XCharter"
#let design-header-name-font-size = 25pt
#let design-header-name-bold = false
#let design-header-small-caps-for-name = false
#let design-header-connections-font-family = "XCharter"
#let design-header-vertical-space-between-name-and-connections = 0.7cm
#let design-header-vertical-space-between-connections-and-first-section = 0.7cm
#let design-header-use-icons-for-connections = false
#let design-header-horizontal-space-between-connections = 0.5cm
#let design-header-separator-between-connections = "|"
#let design-header-alignment = center
#let design-highlights-summary-left-margin = 0cm
#let design-highlights-bullet = "•"
#let design-highlights-nested-bullet = "-"
#let design-highlights-top-margin = 0.25cm
#let design-highlights-left-margin = 0cm
#let design-highlights-vertical-space-between-highlights = 0.19cm
#let design-highlights-horizontal-space-between-bullet-and-highlights = 0.3em
#let design-entries-vertical-space-between-entries = 0.4cm
#let design-entries-date-and-location-width = 4.15cm
#let design-entries-allow-page-break-in-entries = true
#let design-entries-horizontal-space-between-columns = 0.1cm
#let design-entries-left-and-right-margin = 0cm
#let design-page-top-margin = 1.5cm
#let design-page-bottom-margin = 1.5cm
#let design-page-left-margin = 1.5cm
#let design-page-right-margin = 1.5cm
#let design-page-show-last-updated-date = false
#let design-page-show-page-numbering = false
#let design-links-underline = false
#let design-entry-types-education-entry-degree-column-width = 1cm
#let date = datetime.today()

// Metadata:
#set document(author: name, title: name + "'s CV", date: date)

// Page settings:
#set page(
  margin: (
    top: design-page-top-margin,
    bottom: design-page-bottom-margin,
    left: design-page-left-margin,
    right: design-page-right-margin,
  ),
  paper: design-page-size,
  footer: if design-page-show-page-numbering {
    text(
      fill: design-colors-last-updated-date-and-page-numbering,
      align(center, [_#locale-catalog-page-numbering-style _]),
      size: 0.9em,
    )
  } else {
    none
  },
  footer-descent: 0% - 0.3em + design-page-bottom-margin / 2,
)
// Text settings:
#let justify
#let hyphenate
#if design-text-alignment == "justified" {
  justify = true
  hyphenate = true
} else if design-text-alignment == "left" {
  justify = false
  hyphenate = false
} else if design-text-alignment == "justified-with-no-hyphenation" {
  justify = true
  hyphenate = false
}
#set text(
  font: design-text-font-family,
  size: design-text-font-size,
  lang: locale-catalog-language,
  hyphenate: hyphenate,
  fill: design-colors-text,
  // Disable ligatures for better ATS compatibility:
  ligatures: true,
)
#set par(
  spacing: 0pt,
  leading: design-text-leading,
  justify: justify,
)
#set enum(
  spacing: design-entries-vertical-space-between-entries,
)

// Highlights settings:
#let highlights(..content) = {
  list(
    ..content,
    marker: design-highlights-bullet,
    spacing: design-highlights-vertical-space-between-highlights,
    indent: design-highlights-left-margin,
    body-indent: design-highlights-horizontal-space-between-bullet-and-highlights,
  )
}
#show list: set list(
  marker: design-highlights-nested-bullet,
  spacing: design-highlights-vertical-space-between-highlights,
  indent: 0pt,
  body-indent: design-highlights-horizontal-space-between-bullet-and-highlights,
)

// Entry utilities:
#let bullet-entry(..content) = {
  list(
    ..content,
    marker: design-highlights-bullet,
    spacing: 0pt,
    indent: 0pt,
    body-indent: design-highlights-horizontal-space-between-bullet-and-highlights,
  )
}
#let three-col(
  left-column-width: 1fr,
  middle-column-width: 1fr,
  right-column-width: design-entries-date-and-location-width,
  left-content: "",
  middle-content: "",
  right-content: "",
  alignments: (auto, auto, auto),
) = [
  #block(
    grid(
      columns: (left-column-width, middle-column-width, right-column-width),
      column-gutter: design-entries-horizontal-space-between-columns,
      align: alignments,
      ([#set par(spacing: design-text-leading); #left-content]),
      ([#set par(spacing: design-text-leading); #middle-content]),
      ([#set par(spacing: design-text-leading); #right-content]),
    ),
    breakable: true,
    width: 100%,
  )
]

#let two-col(
  left-column-width: 1fr,
  right-column-width: design-entries-date-and-location-width,
  left-content: "",
  right-content: "",
  alignments: (auto, auto),
  column-gutter: design-entries-horizontal-space-between-columns,
) = [
  #block(
    grid(
      columns: (left-column-width, right-column-width),
      column-gutter: column-gutter,
      align: alignments,
      ([#set par(spacing: design-text-leading); #left-content]),
      ([#set par(spacing: design-text-leading); #right-content]),
    ),
    breakable: true,
    width: 100%,
  )
]

// Main heading settings:
#let header-font-weight
#if design-header-name-bold {
  header-font-weight = 700
} else {
  header-font-weight = 400
}
#show heading.where(level: 1): it => [
  #set par(spacing: 0pt)
  #set align(design-header-alignment)
  #set text(
    font: design-header-name-font-family,
    weight: header-font-weight,
    size: design-header-name-font-size,
    fill: design-colors-name,
  )
  #if design-header-small-caps-for-name [
    #smallcaps(it.body)
  ] else [
    #it.body
  ]
  // Vertical space after the name
  #v(design-header-vertical-space-between-name-and-connections)
]

#let section-title-font-weight
#if design-section-titles-bold {
  section-title-font-weight = 700
} else {
  section-title-font-weight = 400
}

#show heading.where(level: 2): it => [
  #set align(left)
  #set text(size: (1em / 1.2)) // reset
  #set text(
    font: design-section-titles-font-family,
    size: (design-section-titles-font-size),
    weight: section-title-font-weight,
    fill: design-colors-section-titles,
  )
  #let section-title = (
    if design-section-titles-small-caps [
      #smallcaps(it.body)
    ] else [
      #it.body
    ]
  )
  // Vertical space above the section title
  #v(design-section-titles-vertical-space-above, weak: true)
  #block(
    breakable: false,
    width: 100%,
    [
      #if design-section-titles-type == "moderncv" [
        #two-col(
          alignments: (right, left),
          left-column-width: design-entries-date-and-location-width,
          right-column-width: 1fr,
          left-content: [
            #align(horizon, box(width: 1fr, height: design-section-titles-line-thickness, fill: design-colors-section-titles))
          ],
          right-content: [
            #section-title
          ]
        )

      ] else [
        #box(
          [
            #section-title
            #if design-section-titles-type == "with-partial-line" [
              #box(width: 1fr, height: design-section-titles-line-thickness, fill: design-colors-section-titles)
            ] else if design-section-titles-type == "with-full-line" [

              #v(design-text-font-size * 0.4)
              #box(width: 1fr, height: design-section-titles-line-thickness, fill: design-colors-section-titles)
            ]
          ]
        )
      ]
     ] + v(1em),
  )
  #v(-1em)
  // Vertical space after the section title
  #v(design-section-titles-vertical-space-below - 0.5em)
]

// Links:
#let original-link = link
#let link(url, body) = {
  body = [#if design-links-underline [#underline(body)] else [#body]]
  body = [#if design-links-use-external-link-icon [#body#h(design-text-font-size/4)#box(
        fa-icon("external-link", size: 0.7em),
        baseline: -10%,
      )] else [#body]]
  body = [#set text(fill: design-colors-links);#body]
  original-link(url, body)
}

// Last updated date text:
#if design-page-show-last-updated-date {
  let dx
  if design-section-titles-type == "moderncv" {
    dx = 0cm
  } else {
    dx = -design-entries-left-and-right-margin
  }
  place(
    top + right,
    dy: -design-page-top-margin / 2,
    dx: dx,
    text(
      [_#locale-catalog-last-updated-date-style _],
      fill: design-colors-last-updated-date-and-page-numbering,
      size: 0.9em,
    ),
  )
}

#let connections(connections-list) = context {
  set text(fill: design-colors-connections, font: design-header-connections-font-family)
  set par(leading: design-text-leading*1.7, justify: false)
  let list-of-connections = ()
  let separator = (
    h(design-header-horizontal-space-between-connections / 2, weak: true)
      + design-header-separator-between-connections
      + h(design-header-horizontal-space-between-connections / 2, weak: true)
  )
  let starting-index = 0
  while (starting-index < connections-list.len()) {
    let left-sum-right-margin
    if type(page.margin) == "dictionary" {
      left-sum-right-margin = page.margin.left + page.margin.right
    } else {
      left-sum-right-margin = page.margin * 4
    }

    let ending-index = starting-index + 1
    while (
      measure(connections-list.slice(starting-index, ending-index).join(separator)).width
        < page.width - left-sum-right-margin
    ) {
      ending-index = ending-index + 1
      if ending-index > connections-list.len() {
        break
      }
    }
    if ending-index > connections-list.len() {
      ending-index = connections-list.len()
    }
    list-of-connections.push(connections-list.slice(starting-index, ending-index).join(separator))
    starting-index = ending-index
  }
  align(list-of-connections.join(linebreak()), design-header-alignment)
  v(design-header-vertical-space-between-connections-and-first-section - design-section-titles-vertical-space-above)
}

#let three-col-entry(
  left-column-width: 1fr,
  right-column-width: design-entries-date-and-location-width,
  left-content: "",
  middle-content: "",
  right-content: "",
  alignments: (left, auto, right),
) = (
  if design-section-titles-type == "moderncv" [
    #three-col(
      left-column-width: right-column-width,
      middle-column-width: left-column-width,
      right-column-width: 1fr,
      left-content: right-content,
      middle-content: [
        #block(
          [
            #left-content
          ],
          inset: (
            left: design-entries-left-and-right-margin,
            right: design-entries-left-and-right-margin,
          ),
          breakable: design-entries-allow-page-break-in-entries,
          width: 100%,
        )
      ],
      right-content: middle-content,
      alignments: (design-text-date-and-location-column-alignment, left, auto),
    )
  ] else [
    #block(
      [
        #three-col(
          left-column-width: left-column-width,
          right-column-width: right-column-width,
          left-content: left-content,
          middle-content: middle-content,
          right-content: right-content,
          alignments: alignments,
        )
      ],
      inset: (
        left: design-entries-left-and-right-margin,
        right: design-entries-left-and-right-margin,
      ),
      breakable: design-entries-allow-page-break-in-entries,
      width: 100%,
    )
  ]
)

#let two-col-entry(
  left-column-width: 1fr,
  right-column-width: design-entries-date-and-location-width,
  left-content: "",
  right-content: "",
  alignments: (auto, design-text-date-and-location-column-alignment),
  column-gutter: design-entries-horizontal-space-between-columns,
) = (
  if design-section-titles-type == "moderncv" [
    #two-col(
      left-column-width: right-column-width,
      right-column-width: left-column-width,
      left-content: right-content,
      right-content: [
        #block(
          [
            #left-content
          ],
          inset: (
            left: design-entries-left-and-right-margin,
            right: design-entries-left-and-right-margin,
          ),
          breakable: design-entries-allow-page-break-in-entries,
          width: 100%,
        )
      ],
      alignments: (design-text-date-and-location-column-alignment, auto),
    )
  ] else [
    #block(
      [
        #two-col(
          left-column-width: left-column-width,
          right-column-width: right-column-width,
          left-content: left-content,
          right-content: right-content,
          alignments: alignments,
        )
      ],
      inset: (
        left: design-entries-left-and-right-margin,
        right: design-entries-left-and-right-margin,
      ),
      breakable: design-entries-allow-page-break-in-entries,
      width: 100%,
    )
  ]
)

#let one-col-entry(content: "") = [
  #let left-space = design-entries-left-and-right-margin
  #if design-section-titles-type == "moderncv" [
    #(left-space = left-space + design-entries-date-and-location-width + design-entries-horizontal-space-between-columns)
  ]
  #block(
    [#set par(spacing: design-text-leading); #content],
    breakable: design-entries-allow-page-break-in-entries,
    inset: (
      left: left-space,
      right: design-entries-left-and-right-margin,
    ),
    width: 100%,
  )
]

= Daniel Guardia Collado

// Print connections:
#let connections-list = (
  [#box(original-link("mailto:dguardiacollado@gmail.com")[dguardiacollado\@gmail.com])],
  [#box(original-link("tel:+51-959-070-464")[959 070 464])],
  [#box(original-link("https://linkedin.com/in/daniel-guardia-collado")[linkedin.com\/in\/daniel-guardia-collado])],
)
#connections(connections-list)



== Resumen


#one-col-entry(
  content: [Analista Senior de Datos e Ingeniero de IA en BCP \(principal banco del Perú\) con experiencia construyendo soluciones GenAI end-to-end en Databricks usando LLMs. Formación en finanzas y ciencia de datos, con dominio de Python, SQL, Polars y Power BI. Actualmente desarrollando pipelines de IA agéntica para analytics de banca mayorista.]
)


== Experiencia Laboral


#two-col-entry(
  left-content: [
    #strong[Analista Senior de Pricing & Datos \/ Ingeniero de IA], Banco de Crédito del Perú \(BCP\) -- Lima, Perú
  ],
  right-content: [
    May 2025 – Actualidad
  ],
)
#one-col-entry(
  content: [
    #v(design-highlights-top-margin);#highlights([Creación de un agente conversacional con IA end-to-end desplegado a más de 200 personas de la banca mayorista, usando Databricks y LLMs \(Claude Sonnet\).],[Automatización de procesos de extracción, transformación y análisis de datos mediante SQL, Python y Databricks, reduciendo significativamente tiempos operativos.],[Diseño e implementación de modelos predictivos para optimización de tasas y evaluación del comportamiento de clientes, mejorando la estrategia comercial y de pricing.],[Desarrollo de dashboards analíticos para monitoreo de desempeño comercial, rentabilidad y comportamiento de clientes de Banca Mayorista.],[Impulso de la autogestión analítica del equipo, reduciendo la dependencia de áreas especializadas de data y modelos.],)
  ],
)

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #strong[Asesor de Aprendizaje Python & SQL], DMC Perú -- Lima, Perú
  ],
  right-content: [
    Nov 2024 – Actualidad
  ],
)
#one-col-entry(
  content: [
    #v(design-highlights-top-margin);#highlights([Dictado de cursos de Python con enfoque en estadística, análisis exploratorio, visualización de datos y storytelling.],[Dictado de cursos de SQL con enfoque en construcción de queries, Data Warehousing, modelado de datos y Oracle PL\/SQL.],)
  ],
)

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #strong[Ingeniero de Analytics de Datos], Intelica Consulting -- Lima, Perú
  ],
  right-content: [
    Ene 2025 – May 2025
  ],
)
#one-col-entry(
  content: [
    #v(design-highlights-top-margin);#highlights([Implementación de procesos ETL para integración de datos desde múltiples fuentes hacia un Data Warehouse mediante procedimientos almacenados en SQL Server.],[Desarrollo de reportes automatizados para unidades de negocio clave del sector bancario, mejorando la gestión del portafolio de tarjetas de crédito y débito.],)
  ],
)

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #strong[Analista de Datos], Santander Perú - Surgir -- Lima, Perú
  ],
  right-content: [
    Jul 2024 – Ene 2025
  ],
)
#one-col-entry(
  content: [
    #v(design-highlights-top-margin);#highlights([Automatización de procesos ETL mediante Power Automate para insumos de modelos estadísticos.],[Recopilación del puntaje crediticio mediante la API de Experian con PySpark, reduciendo significativamente el tiempo de extracción de datos.],[Uso avanzado de SQL en Databricks para integración, transformación y ejecuciones programadas de reportes para la SBS.],[Aplicación de modelos de clasificación \(árboles de decisión, regresión logística, XGBoost\) para predecir la probabilidad de incumplimiento de pagos de clientes.],)
  ],
)

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #strong[Analista de Negocios Junior], Grupo BC - Cibergestión -- Lima, Perú
  ],
  right-content: [
    Mar 2024 – Jul 2024
  ],
)
#one-col-entry(
  content: [
    #v(design-highlights-top-margin);#highlights([Construcción de dashboards interactivos en Power BI a partir de bases de datos contables y financieras para reporting gerencial.],[Elaboración de modelos financieros con simulación de escenarios, análisis de sensibilidad y evaluación de riesgos.],[Modelamiento econométrico mediante regresión lineal para proyectar variables macroeconómicas del sector bancario.],)
  ],
)

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #strong[Analista de Negocios], Ernst & Young Perú -- Lima, Perú
  ],
  right-content: [
    May 2023 – Mar 2024
  ],
)
#one-col-entry(
  content: [
    #v(design-highlights-top-margin);#highlights([Benchmark de nuevas metodologías de reglas de negocio generando un aporte marginal de más de 3M USD en ingresos financieros para bancos clientes.],[Desarrollo de modelo de propensión en Python \(regresión logística\) para identificar clientes con alta probabilidad de tomar un crédito, validado con pruebas A\/B.],[Análisis estadísticos y de tendencias con SQL y Power BI para mejoras en procesos financieros de bancos de LatAm \(Perú, México, Canadá y Panamá\).],)
  ],
)



== Educación


// YES DATE, NO DEGREE
#two-col-entry(
  left-content: [
    #strong[Universidad Nacional de Ingeniería \(UNI\)], Especialización in Business Intelligence & Business Analytics -- Lima, Perú
  ],
  right-content: [
    Ene 2024 – Ene 2025
  ],
)
#block(
  [
    #set par(spacing: 0pt)
    #v(design-highlights-top-margin);#highlights([Promedio: Mayor a 18\/20],[Cursos: Análisis de Datos, Visualización, Machine Learning, Big Data],)
  ],
  inset: (
    left: design-entries-left-and-right-margin,
    right: design-entries-left-and-right-margin,
  ),
)

#v(design-entries-vertical-space-between-entries)
// YES DATE, NO DEGREE
#two-col-entry(
  left-content: [
    #strong[Universidad Peruana de Ciencias Aplicadas \(UPC\)], Bachiller in Finanzas con Especialización en Ciencia de Datos -- Lima, Perú
  ],
  right-content: [
    Ene 2019 – Dic 2024
  ],
)
#block(
  [
    #set par(spacing: 0pt)
    #v(design-highlights-top-margin);#highlights([Promedio: Mayor a 16\/20 — Lista del Decano, Décimo Superior],[Cursos: Econometría, Ciencia de Datos, Finanzas Corporativas, Contabilidad],)
  ],
  inset: (
    left: design-entries-left-and-right-margin,
    right: design-entries-left-and-right-margin,
  ),
)

#v(design-entries-vertical-space-between-entries)
// YES DATE, NO DEGREE
#two-col-entry(
  left-content: [
    #strong[IPAE], Egresado in Administración de Empresas -- Lima, Perú
  ],
  right-content: [
    Ene 2016 – Jun 2018
  ],
)
#block(
  [
    #set par(spacing: 0pt)
    #v(design-highlights-top-margin);#highlights([Promedio: Mayor a 17\/20 — Tercio Superior],)
  ],
  inset: (
    left: design-entries-left-and-right-margin,
    right: design-entries-left-and-right-margin,
  ),
)



== Habilidades


#one-col-entry(
  content: [#strong[IA \/ GenAI:] LLMs, Claude \(Anthropic\), Ingeniería de Prompts, IA Agéntica, Databricks, MLflow]
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [#strong[Programación:] Python \(Pandas, Polars, Scikit-Learn, XGBoost, PySpark\), R, SQL]
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [#strong[Bases de Datos:] Oracle PL\/SQL, SQL Server, MySQL, Databricks SQL]
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [#strong[Visualización:] Power BI, Tableau, Matplotlib, Plotly]
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [#strong[Cloud & Herramientas:] Azure, Databricks, Power Automate, SSIS, Git, Model Serving]
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [#strong[Idiomas:] Español \(nativo\), Inglés \(avanzado\), Francés \(avanzado\), Portugués \(intermedio\)]
)


== Certificaciones


#one-col-entry(content: [#bullet-entry[#strong[Pricing & Revenue Management] — Pacifico Business School]])
#v(design-entries-vertical-space-between-entries)
#one-col-entry(content: [#bullet-entry[#strong[Data Analyst Career] — Platzi \(18 cursos: NumPy, Pandas, Sklearn, SQL, Power BI\)]])
#v(design-entries-vertical-space-between-entries)
#one-col-entry(content: [#bullet-entry[#strong[Machine Learning with Python] — IBM \(16 hrs\)]])
#v(design-entries-vertical-space-between-entries)
#one-col-entry(content: [#bullet-entry[#strong[Estadística Descriptiva para Ciencia de Datos] — Platzi]])


