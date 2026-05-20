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
  page-size: "us-letter",
  page-top-margin: 0.7in,
  page-bottom-margin: 0.7in,
  page-left-margin: 0.7in,
  page-right-margin: 0.7in,
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
  typography-font-family-headline: "Montserrat",
  typography-font-family-connections: "Montserrat",
  typography-font-family-section-titles: "Montserrat",
  typography-font-size-body: 9pt,
  typography-font-size-name: 28pt,
  typography-font-size-headline: 10pt,
  typography-font-size-connections: 10pt,
  typography-font-size-section-titles: 1.4em,
  typography-small-caps-name: false,
  typography-small-caps-headline: false,
  typography-small-caps-connections: false,
  typography-small-caps-section-titles: false,
  typography-bold-name: true,
  typography-bold-headline: false,
  typography-bold-connections: false,
  typography-bold-section-titles: true,
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
  section-titles-type: "with_partial_line",
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
  entries-short-second-row: true,
  entries-degree-width: 1cm,
  entries-summary-space-left: 0cm,
  entries-summary-space-above: 0cm,
  entries-highlights-bullet:  "•" ,
  entries-highlights-nested-bullet:  "•" ,
  entries-highlights-space-left: 0.15cm,
  entries-highlights-space-above: 0cm,
  entries-highlights-space-between-items: 0cm,
  entries-highlights-space-between-bullet-and-text: 0.5em,
  date: datetime(
    year: 2026,
    month: 5,
    day: 20,
  ),
)


= Daniel Guardia Collado

#connections(
  [#link("mailto:dguardiacollado@gmail.com", icon: false, if-underline: false, if-color: false)[#connection-with-icon("envelope")[dguardiacollado\@gmail.com]]],
  [#link("tel:+51-959-070-464", icon: false, if-underline: false, if-color: false)[#connection-with-icon("phone")[959 070 464]]],
  [#link("https://linkedin.com/in/daniel-guardia-collado", icon: false, if-underline: false, if-color: false)[#connection-with-icon("linkedin")[daniel-guardia-collado]]],
)


== Summary

Senior Data Analyst & AI Engineer at BCP (Peru's largest bank) with experience building end-to-end GenAI solutions on Databricks using LLMs. Background in finance and data science, with hands-on expertise in Python, SQL, Polars, and Power BI. Currently developing agentic AI pipelines for wholesale banking analytics. Targeting remote international roles in ML\/AI Engineering by 2027.

== Work Experience

#regular-entry(
  [
    #strong[Banco de Crédito del Perú (BCP)], Senior Pricing & Data Analyst \/ AI Engineer

    - Built an end-to-end conversational AI agent deployed to 200+ people across wholesale banking, using Databricks and LLMs (Claude Sonnet).

    - Automated data extraction, transformation and analysis pipelines using SQL, Python and Databricks, significantly reducing operational times.

    - Developed predictive models for rate optimization and customer behavior analysis, improving commercial and pricing strategy.

    - Designed analytical dashboards for commercial performance, profitability and client behavior monitoring in wholesale banking.

    - Promoted self-service analytics within the team, reducing dependency on specialized data and model teams.

  ],
  [
    Lima, Peru

    May 2025 – present

  ],
)

#regular-entry(
  [
    #strong[DMC Perú], Python & SQL Learning Advisor

    - Teach Python courses focused on statistics, exploratory data analysis, data visualization and storytelling.

    - Teach SQL courses covering query building, Data Warehousing, data modeling and Oracle PL\/SQL.

  ],
  [
    Lima, Peru

    Nov 2024 – May 2025

  ],
)

#regular-entry(
  [
    #strong[Intelica Consulting], Data Analytics Engineer

    - Implemented ETL processes integrating data from multiple sources into a Data Warehouse using SQL Server stored procedures.

    - Developed automated reports for key banking business units, improving credit and debit card portfolio management.

  ],
  [
    Lima, Peru

    Jan 2025 – May 2025

  ],
)

#regular-entry(
  [
    #strong[Santander Perú - Surgir], Data Analyst

    - Automated ETL processes via Power Automate for statistical model inputs.

    - Extracted credit scores via Experian API using PySpark, significantly reducing data extraction time.

    - Advanced SQL usage on Databricks for integration, transformation and scheduled report execution for SBS regulatory reporting.

    - Applied classification models (Decision Trees, Logistic Regression, XGBoost) to predict customer payment default probability.

  ],
  [
    Lima, Peru

    July 2024 – Jan 2025

  ],
)

#regular-entry(
  [
    #strong[Grupo BC - Cibergestión], Junior Business Analyst

    - Built interactive Power BI dashboards from financial and accounting databases for executive reporting.

    - Developed financial models with scenario simulation, sensitivity analysis and risk evaluation.

    - Applied econometric linear regression to project macroeconomic variables in the banking sector.

  ],
  [
    Lima, Peru

    Mar 2024 – July 2024

  ],
)

#regular-entry(
  [
    #strong[Ernst & Young Perú], Business Analyst

    - Delivered benchmark analysis for new business rule methodologies, generating 3M+ USD in marginal financial income for banking clients.

    - Built a propensity model in Python (logistic regression) to identify high-probability credit customers, validated through A\/B testing.

    - Conducted statistical and trend analyses using SQL and Power BI for LatAm banking process improvements (Peru, Mexico, Canada, Panama).

  ],
  [
    Lima, Peru

    May 2023 – Mar 2024

  ],
)

== Education

#education-entry(
  [
    #strong[Universidad Nacional de Ingeniería (UNI)], Business Intelligence & Business Analytics

    - GPA: Above 18\/20

    - Relevant courses: Data Analysis, Data Visualization, Machine Learning, Big Data

  ],
  [
    Lima, Peru

    Jan 2024 – Jan 2025

  ],
  degree-column: [
    #strong[Specialization]
  ],
)

#education-entry(
  [
    #strong[Universidad Peruana de Ciencias Aplicadas (UPC)], Finance with Data Science Specialization

    - GPA: Above 16\/20 — Dean's List, Top 10\%

    - Relevant courses: Econometrics, Data Science, Corporate Finance, Accounting

  ],
  [
    Lima, Peru

    Jan 2019 – Dec 2024

  ],
  degree-column: [
    #strong[Bachelor's Degree]
  ],
)

== Skills

#strong[AI \/ GenAI:] LLMs, Claude (Anthropic), Prompt Engineering, Agentic AI, Databricks, MLflow

#strong[Programming:] Python (Pandas, Polars, Scikit-Learn, XGBoost, PySpark), R, SQL

#strong[Databases:] Oracle PL\/SQL, SQL Server, MySQL, Databricks SQL

#strong[Visualization:] Power BI, Tableau, Matplotlib, Plotly

#strong[Cloud & Tools:] Azure, Databricks, Power Automate, SSIS, Git, Model Serving

#strong[Languages:] Spanish (native), English (advanced), French (advanced), Portuguese (intermediate)

== Certifications

- #strong[Pricing & Revenue Management] — Pacifico Business School

- #strong[Data Analyst Career] — Platzi (18 courses: NumPy, Pandas, Sklearn, SQL, Power BI)

- #strong[Machine Learning with Python] — IBM (16 hrs)

- #strong[Estadística Descriptiva para Ciencia de Datos] — Platzi
