// Import the rendercv function and all the refactored components
#import "@preview/rendercv:0.3.0": *

// Apply the rendercv template with custom configuration
#show: rendercv.with(
  name: "Daniel Guardia Collado",
  title: "Daniel Guardia Collado - CV",
  footer: context { [#emph[Daniel Guardia Collado -- #str(here().page())\/#str(counter(page).final().first())]] },
  top-note: [ #emph[Última actualización May 2026] ],
  locale-catalog-language: "es",
  text-direction: ltr,
  page-size: "us-letter",
  page-top-margin: 0.7in,
  page-bottom-margin: 0.7in,
  page-left-margin: 0.7in,
  page-right-margin: 0.7in,
  page-show-footer: false,
  page-show-top-note: true,
  colors-body: rgb(0, 0, 0),
  colors-name: rgb(0, 0, 0),
  colors-headline: rgb(0, 0, 0),
  colors-connections: rgb(0, 0, 0),
  colors-section-titles: rgb(0, 0, 0),
  colors-links: rgb(0, 0, 0),
  colors-footer: rgb(128, 128, 128),
  colors-top-note: rgb(128, 128, 128),
  typography-line-spacing: 0.6em,
  typography-alignment: "justified",
  typography-date-and-location-column-alignment: right,
  typography-font-family-body: "Source Sans 3",
  typography-font-family-name: "Source Sans 3",
  typography-font-family-headline: "Source Sans 3",
  typography-font-family-connections: "Source Sans 3",
  typography-font-family-section-titles: "Source Sans 3",
  typography-font-size-body: 9pt,
  typography-font-size-name: 28pt,
  typography-font-size-headline: 10pt,
  typography-font-size-connections: 10pt,
  typography-font-size-section-titles: 1.2em,
  typography-small-caps-name: false,
  typography-small-caps-headline: false,
  typography-small-caps-connections: false,
  typography-small-caps-section-titles: false,
  typography-bold-name: false,
  typography-bold-headline: false,
  typography-bold-connections: false,
  typography-bold-section-titles: true,
  links-underline: true,
  links-show-external-link-icon: false,
  header-alignment: center,
  header-photo-width: 3.5cm,
  header-space-below-name: 0.7cm,
  header-space-below-headline: 0.7cm,
  header-space-below-connections: 0.7cm,
  header-connections-hyperlink: true,
  header-connections-show-icons: false,
  header-connections-display-urls-instead-of-usernames: true,
  header-connections-separator: "|",
  header-connections-space-between-connections: 0.5cm,
  section-titles-type: "with_full_line",
  section-titles-line-thickness: 0.5pt,
  section-titles-space-above: 0.5cm,
  section-titles-space-below: 0.3cm,
  sections-allow-page-break: true,
  sections-space-between-text-based-entries: 0.15cm,
  sections-space-between-regular-entries: 0.42cm,
  entries-date-and-location-width: 4.15cm,
  entries-side-space: 0cm,
  entries-space-between-columns: 0.1cm,
  entries-allow-page-break: false,
  entries-short-second-row: false,
  entries-degree-width: 1cm,
  entries-summary-space-left: 0cm,
  entries-summary-space-above: 0.08cm,
  entries-highlights-bullet:  text(13pt, [•], baseline: -0.6pt) ,
  entries-highlights-nested-bullet:  text(13pt, [•], baseline: -0.6pt) ,
  entries-highlights-space-left: 0cm,
  entries-highlights-space-above: 0.08cm,
  entries-highlights-space-between-items: 0.08cm,
  entries-highlights-space-between-bullet-and-text: 0.3em,
  date: datetime(
    year: 2026,
    month: 5,
    day: 21,
  ),
)


= Daniel Guardia Collado

#connections(
  [#link("mailto:dguardiacollado@gmail.com", icon: false, if-underline: false, if-color: false)[dguardiacollado\@gmail.com]],
  [#link("tel:+51-959-070-464", icon: false, if-underline: false, if-color: false)[959 070 464]],
  [#link("https://linkedin.com/in/daniel-guardia-collado", icon: false, if-underline: false, if-color: false)[linkedin.com\/in\/daniel-guardia-collado]],
)


== Resumen

Analista Senior de Datos e Ingeniero de IA en BCP (principal banco del Perú) con experiencia construyendo soluciones GenAI end-to-end en Databricks usando LLMs. Formación en finanzas y ciencia de datos, con dominio de Python, SQL, Polars y Power BI. Actualmente desarrollando pipelines de IA agéntica para analytics de banca mayorista.

== Experiencia Laboral

#regular-entry(
  [
    #strong[Analista Senior de Pricing & Datos \/ Ingeniero de IA], Banco de Crédito del Perú (BCP) -- Lima, Perú

  ],
  [
    May 2025 – Presente

  ],
  main-column-second-row: [
    - Creación de un agente conversacional con IA end-to-end desplegado a más de 200 personas de la banca mayorista, usando Databricks y LLMs (Claude Sonnet).

    - Automatización de procesos de extracción, transformación y análisis de datos mediante SQL, Python y Databricks, reduciendo significativamente tiempos operativos.

    - Diseño e implementación de modelos predictivos para optimización de tasas y evaluación del comportamiento de clientes, mejorando la estrategia comercial y de pricing.

    - Desarrollo de dashboards analíticos para monitoreo de desempeño comercial, rentabilidad y comportamiento de clientes de Banca Mayorista.

    - Impulso de la autogestión analítica del equipo, reduciendo la dependencia de áreas especializadas de data y modelos.

  ],
)

#regular-entry(
  [
    #strong[Docente Python & SQL], DMC Perú -- Lima, Perú

  ],
  [
    Nov 2024 – May 2026

  ],
  main-column-second-row: [
    - Dictado de cursos de Python con enfoque en estadística, análisis exploratorio, visualización de datos y storytelling.

    - Dictado de cursos de SQL con enfoque en construcción de queries, Data Warehousing, modelado de datos y Oracle PL\/SQL.

  ],
)

#regular-entry(
  [
    #strong[Ingeniero de Analytics de Datos], Intelica Consulting -- Lima, Perú

  ],
  [
    Ene 2025 – May 2025

  ],
  main-column-second-row: [
    - Implementación de procesos ETL para integración de datos desde múltiples fuentes hacia un Data Warehouse mediante procedimientos almacenados en SQL Server.

    - Desarrollo de reportes automatizados para unidades de negocio clave del sector bancario, mejorando la gestión del portafolio de tarjetas de crédito y débito.

  ],
)

#regular-entry(
  [
    #strong[Analista de Datos], Santander Perú - Surgir -- Lima, Perú

  ],
  [
    Jul 2024 – Ene 2025

  ],
  main-column-second-row: [
    - Automatización de procesos ETL mediante Power Automate para insumos de modelos estadísticos.

    - Recopilación del puntaje crediticio mediante la API de Experian con PySpark, reduciendo significativamente el tiempo de extracción de datos.

    - Uso avanzado de SQL en Databricks para integración, transformación y ejecuciones programadas de reportes para la SBS.

    - Aplicación de modelos de clasificación (árboles de decisión, regresión logística, XGBoost) para predecir la probabilidad de incumplimiento de pagos de clientes.

  ],
)

#regular-entry(
  [
    #strong[Analista de Negocios Junior], Grupo BC - Cibergestión -- Lima, Perú

  ],
  [
    Mar 2024 – Jul 2024

  ],
  main-column-second-row: [
    - Construcción de dashboards interactivos en Power BI a partir de bases de datos contables y financieras para reporting gerencial.

    - Elaboración de modelos financieros con simulación de escenarios, análisis de sensibilidad y evaluación de riesgos.

    - Modelamiento econométrico mediante regresión lineal para proyectar variables macroeconómicas del sector bancario.

  ],
)

#regular-entry(
  [
    #strong[Analista de Negocios], Ernst & Young Perú -- Lima, Perú

  ],
  [
    May 2023 – Mar 2024

  ],
  main-column-second-row: [
    - Benchmark de nuevas metodologías de reglas de negocio generando un aporte marginal de más de 3M USD en ingresos financieros para bancos clientes.

    - Desarrollo de modelo de propensión en Python (regresión logística) para identificar clientes con alta probabilidad de tomar un crédito, validado con pruebas A\/B.

    - Análisis estadísticos y de tendencias con SQL y Power BI para mejoras en procesos financieros de bancos de LatAm (Perú, México, Canadá y Panamá).

  ],
)

== Educación

#education-entry(
  [
    #strong[Universidad Nacional de Ingeniería (UNI)], Especialización en Business Intelligence & Business Analytics -- Lima, Perú

  ],
  [
    Ene 2024 – Ene 2025

  ],
  main-column-second-row: [
    - Promedio: Mayor a 18\/20

    - Cursos: Análisis de Datos, Visualización, Machine Learning, Big Data

  ],
)

#education-entry(
  [
    #strong[Universidad Peruana de Ciencias Aplicadas (UPC)], Bachiller en Finanzas con Especialización en Ciencia de Datos -- Lima, Perú

  ],
  [
    Ene 2019 – Dic 2024

  ],
  main-column-second-row: [
    - Promedio: Mayor a 16\/20 — Lista del Decano, Décimo Superior

    - Cursos: Econometría, Ciencia de Datos, Finanzas Corporativas, Contabilidad

  ],
)

#education-entry(
  [
    #strong[IPAE], Egresado en Administración de Empresas -- Lima, Perú

  ],
  [
    Ene 2016 – Jun 2018

  ],
  main-column-second-row: [
    - Promedio: Mayor a 17\/20 — Tercio Superior

  ],
)

== Habilidades

#strong[IA \/ GenAI:] LLMs, Claude (Anthropic), Ingeniería de Prompts, IA Agéntica, Databricks, MLflow

#strong[Programación:] Python (Pandas, Polars, Scikit-Learn, XGBoost, PySpark), R, SQL

#strong[Bases de Datos:] Oracle PL\/SQL, SQL Server, MySQL, Databricks SQL

#strong[Visualización:] Power BI, Tableau, Matplotlib, Plotly

#strong[Cloud & Herramientas:] Azure, Databricks, Power Automate, SSIS, Git, Model Serving

#strong[Idiomas:] Español (nativo), Inglés (avanzado), Francés (avanzado), Portugués (intermedio)

== Certificaciones

- #strong[Pricing & Revenue Management] — Pacifico Business School

- #strong[Data Analyst Career] — Platzi (18 cursos: NumPy, Pandas, Sklearn, SQL, Power BI)

- #strong[Machine Learning with Python] — IBM (16 hrs)

- #strong[Estadística Descriptiva para Ciencia de Datos] — Platzi
