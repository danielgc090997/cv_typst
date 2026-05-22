// Import the rendercv function and all the refactored components
#import "@preview/rendercv:0.3.0": *

// Apply the rendercv template with custom configuration
#show: rendercv.with(
  name: "Daniel Guardia Collado",
  title: "Daniel Guardia Collado - CV",
  footer: context { [#emph[Daniel Guardia Collado -- #str(here().page())\/#str(counter(page).final().first())]] },
  top-note: [ #emph[Last updated in May 2026] ],
  locale-catalog-language: "en",
  text-direction: ltr,
  page-size: "a4",
  page-top-margin: 1cm,
  page-bottom-margin: 1cm,
  page-left-margin: 1.2cm,
  page-right-margin: 1.2cm,
  page-show-footer: true,
  page-show-top-note: true,
  colors-body: rgb(0, 0, 0),
  colors-name: rgb(0, 0, 0),
  colors-headline: rgb(0, 79, 144),
  colors-connections: rgb(0, 0, 0),
  colors-section-titles: rgb(0, 0, 0),
  colors-links: rgb(0, 0, 0),
  colors-footer: rgb(128, 128, 128),
  colors-top-note: rgb(128, 128, 128),
  typography-line-spacing: 0.6em,
  typography-alignment: "justified",
  typography-date-and-location-column-alignment: right,
  typography-font-family-body: "Montserrat",
  typography-font-family-name: "Montserrat",
  typography-font-family-headline: "Source Sans 3",
  typography-font-family-connections: "Montserrat",
  typography-font-family-section-titles: "Montserrat",
  typography-font-size-body: 8pt,
  typography-font-size-name: 29pt,
  typography-font-size-headline: 10pt,
  typography-font-size-connections: 10pt,
  typography-font-size-section-titles: 1.4em,
  typography-small-caps-name: false,
  typography-small-caps-headline: false,
  typography-small-caps-connections: false,
  typography-small-caps-section-titles: false,
  typography-bold-name: false,
  typography-bold-headline: false,
  typography-bold-connections: false,
  typography-bold-section-titles: false,
  links-underline: false,
  links-show-external-link-icon: false,
  header-alignment: center,
  header-photo-width: 3.5cm,
  header-space-below-name: 0.7cm,
  header-space-below-headline: 0.7cm,
  header-space-below-connections: 0.7cm,
  header-connections-hyperlink: true,
  header-connections-show-icons: true,
  header-connections-display-urls-instead-of-usernames: false,
  header-connections-separator: "",
  header-connections-space-between-connections: 0.5cm,
  section-titles-type: "with_full_line",
  section-titles-line-thickness: 0.5pt,
  section-titles-space-above: 0.5cm,
  section-titles-space-below: 0.3cm,
  sections-allow-page-break: true,
  sections-space-between-text-based-entries: 0.3em,
  sections-space-between-regular-entries: 1.2em,
  entries-date-and-location-width: 4.15cm,
  entries-side-space: 0.2cm,
  entries-space-between-columns: 0.1cm,
  entries-allow-page-break: false,
  entries-short-second-row: false,
  entries-degree-width: 1cm,
  entries-summary-space-left: 0cm,
  entries-summary-space-above: 0.12cm,
  entries-highlights-bullet:  "•" ,
  entries-highlights-nested-bullet:  "•" ,
  entries-highlights-space-left: 0cm,
  entries-highlights-space-above: 0.12cm,
  entries-highlights-space-between-items: 0.12cm,
  entries-highlights-space-between-bullet-and-text: 0.5em,
  date: datetime(
    year: 2026,
    month: 5,
    day: 22,
  ),
)


= Daniel Guardia Collado

#connections(
  [#link("mailto:dguardiacollado@gmail.com", icon: false, if-underline: false, if-color: false)[#connection-with-icon("envelope")[dguardiacollado\@gmail.com]]],
  [#link("tel:+51-959-070-464", icon: false, if-underline: false, if-color: false)[#connection-with-icon("phone")[959 070 464]]],
  [#link("https://linkedin.com/in/danielguardiac", icon: false, if-underline: false, if-color: false)[#connection-with-icon("linkedin")[danielguardiac]]],
  [#link("https://github.com/danielgc97", icon: false, if-underline: false, if-color: false)[#connection-with-icon("github")[danielgc97]]],
)


== Summary

Senior Data Analyst & AI Engineer with experience in financial analytics, machine learning and GenAI solutions at BCP, Peru's largest bank. Led the end-to-end development and deployment of a conversational AI agent for 200+ wholesale banking users using Databricks and Claude Sonnet (Anthropic). Skilled in data pipeline automation, predictive modeling and business analytics using Python, SQL, Polars and Power BI. Targeting international opportunities in AI Engineering, Machine Learning and Data Platforms.

== Experience

#regular-entry(
  [
    #strong[Senior Data Analyst & AI Engineer], Banco de Crédito del Perú (BCP) -- Lima, Peru

  ],
  [
    May 2025 – Present

  ],
  main-column-second-row: [
    - Built and deployed an end-to-end conversational AI agent for 200+ wholesale banking users using Databricks and Claude Sonnet (Anthropic).

    - Automated data extraction, transformation and analysis pipelines using SQL, Python and Databricks, reducing manual work and operational times.

    - Designed and implemented predictive models for rate optimization and customer behavior analysis.

    - Built analytical dashboards for commercial performance, profitability and strategic metrics monitoring in wholesale banking.

  ],
)

#regular-entry(
  [
    #strong[Data Analytics Engineer], Intelica Consulting -- Lima, Peru

  ],
  [
    Jan 2025 – May 2025

  ],
  main-column-second-row: [
    - Developed ETL processes into a Data Warehouse using SQL Server stored procedures and data modeling.

    - Automated analytical reports for credit and debit card portfolio monitoring.

  ],
)

#regular-entry(
  [
    #strong[Data Analyst], Santander Perú - Surgir -- Lima, Peru

  ],
  [
    July 2024 – Jan 2025

  ],
  main-column-second-row: [
    - Automated ETL processes via Power Automate for statistical model inputs and analytical workflows.

    - Integrated Experian API using PySpark for credit score extraction, significantly reducing processing times.

    - Built advanced Databricks SQL queries for SBS regulatory reporting.

    - Applied XGBoost and Logistic Regression models to predict customer payment default probability.

  ],
)

#regular-entry(
  [
    #strong[Business Analyst], Ernst & Young Perú -- Lima, Peru

  ],
  [
    May 2023 – Mar 2024

  ],
  main-column-second-row: [
    - Delivered benchmark analysis generating 3M+ USD in marginal financial income for banking clients across LatAm.

    - Built a propensity model in Python (logistic regression) validated through A\/B testing to identify high-probability credit customers.

    - Conducted SQL and Power BI analyses for banking process improvements across Peru, Mexico, Canada and Panama.

  ],
)

#regular-entry(
  [
    #strong[Python & SQL Instructor], DMC Perú -- Lima, Peru

  ],
  [
    Nov 2024 – May 2026

  ],
  main-column-second-row: [
    - Part-time instructor for Python and SQL courses focused on analytics, applied statistics and data storytelling.

  ],
)

== Education

#education-entry(
  [
    #strong[Universidad Nacional de Ingeniería (UNI)], Specialization in Business Intelligence & Business Analytics -- Lima, Peru

  ],
  [
    Jan 2024 – Jan 2025

  ],
  main-column-second-row: [
    - GPA: Above 18\/20

  ],
)

#education-entry(
  [
    #strong[Universidad Peruana de Ciencias Aplicadas (UPC)], Bachelor's Degree in Finance with Data Science Specialization -- Lima, Peru

  ],
  [
    Jan 2019 – Dec 2024

  ],
  main-column-second-row: [
    - GPA: Above 16\/20 — Dean's List, Top 10\%

  ],
)

== Certifications

- #strong[Pricing & Revenue Management] — Pacifico Business School

- #strong[AI Engineer Diplomado] — DMC Perú (in progress)

== Skills

#strong[AI \/ GenAI:] LLMs, Claude (Anthropic), Prompt Engineering, Agentic AI, Databricks, MLflow

#strong[Programming:] Python (Pandas, Polars, Scikit-Learn, XGBoost, PySpark), R, SQL

#strong[Databases:] Oracle PL\/SQL, SQL Server, MySQL, Databricks SQL

#strong[Visualization:] Power BI, Tableau, Matplotlib, Plotly

#strong[Cloud & Tools:] Azure, Databricks, Power Automate, Git, Model Serving

#strong[Languages:] Spanish (native), English (advanced), French (advanced), Portuguese (intermediate)
