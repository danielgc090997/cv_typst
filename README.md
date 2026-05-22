# cv-typst

A small project that renders a Typst CV from YAML using the `rendercv` tool.

**Overview**
- **Purpose:** Convert structured YAML CV data into Typst/Markdown/HTML outputs.
- **Primary files:** `dgc_cv_en.yaml`, `dgc_cv_es.yaml`.

**Prerequisites**
- **Tool:** `rendercv` (the CLI used in this repository). Ensure it's installed and on your PATH.
- **Typst:** Install Typst if you want to render `.typ` files to PDF.

**Usage**
- **Render English CV:**

```powershell
rendercv render dgc_cv_en.yaml --output-folder rendercv_output_en
```

- **Render Spanish CV:**

```powershell
rendercv render dgc_cv_es.yaml --output-folder rendercv_output_es
```

After running the command the outputs will be placed in the specified folder, for example:

- `rendercv_output_en/` — contains `Daniel_Guardia_Collado_CV.typ`, `Daniel_Guardia_Collado_CV.md`, and `Daniel_Guardia_Collado_CV.html`.
- `rendercv_output_es/` — Spanish versions of the same outputs.

**Files**
- `dgc_cv_en.yaml` — YAML source for the English CV.
- `dgc_cv_es.yaml` — YAML source for the Spanish CV.

**Contributing**
- Suggestions and fixes: open an issue or submit a PR.

**License**
- No license specified. Add a `LICENSE` file if you want to set one.
