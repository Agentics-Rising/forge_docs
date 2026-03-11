<p align="center">
  <img src="docs/.vuepress/public/logo.png" alt="Fluid Forge" width="200">
</p>

<h1 align="center">Fluid Forge Documentation</h1>

<p align="center">
  <strong>Declarative Data Products — Write YAML, Deploy Anywhere.</strong>
</p>

<p align="center">
  <a href="https://pypi.org/project/fluid-build/"><img src="https://img.shields.io/pypi/v/fluid-build?color=blue&label=PyPI" alt="PyPI"></a>
  <a href="https://www.python.org/"><img src="https://img.shields.io/badge/python-3.9%2B-blue" alt="Python 3.9+"></a>
  <a href="LICENSE"><img src="https://img.shields.io/badge/license-Apache%202.0-green" alt="License"></a>
  <a href="https://github.com/agentics-rising/forge-cli-docs/actions/workflows/deploy-docs.yml"><img src="https://img.shields.io/github/actions/workflow/status/agentics-rising/forge-cli-docs/deploy-docs.yml?label=docs" alt="Docs Build"></a>
</p>

<p align="center">
  <a href="https://agentics-rising.github.io/forge-cli-docs/">Live Docs</a> ·
  <a href="https://github.com/agentics-rising/fluid-forge-cli">CLI Repository</a> ·
  <a href="https://github.com/agentics-rising/forge-cli-docs/issues">Report Issue</a> ·
  <a href="https://github.com/agentics-rising/fluid-forge-cli/discussions">Discussions</a>
</p>

---

> What Terraform did for infrastructure, Fluid Forge does for data products.

This repository contains the **official documentation** for [Fluid Forge](https://github.com/agentics-rising/fluid-forge-cli) — the open-source, declarative data product framework that lets you write one YAML contract and deploy to any cloud.

## Quick Start

```bash
pip install fluid-build
fluid init my-project --quickstart
fluid apply contract.fluid.yaml --yes
# Done. Your data product is live.
```

No cloud account needed — DuckDB runs on your laptop instantly. Scale to production by changing one line.

## Documentation

The documentation covers everything you need to go from zero to production:

| Section | Description |
|---------|-------------|
| **[Getting Started](https://agentics-rising.github.io/forge-cli-docs/getting-started/)** | Install & build your first data product in 2 minutes |
| **[Walkthroughs](https://agentics-rising.github.io/forge-cli-docs/walkthrough/local.html)** | Step-by-step guides for Local, GCP, Airflow, Jenkins CI/CD |
| **[CLI Reference](https://agentics-rising.github.io/forge-cli-docs/cli/)** | Full command reference for 40+ CLI commands |
| **[Providers](https://agentics-rising.github.io/forge-cli-docs/providers/)** | GCP, AWS, Snowflake, Local, and Custom provider guides |
| **[Advanced](https://agentics-rising.github.io/forge-cli-docs/advanced/blueprints.html)** | Blueprints, governance, Airflow integration, AI agents |
| **[Vision & Roadmap](https://agentics-rising.github.io/forge-cli-docs/vision.html)** | Project philosophy and what's coming next |

## Running the Docs Locally

```bash
git clone https://github.com/agentics-rising/forge-cli-docs.git
cd forge-cli-docs
npm install
npm run docs:dev       # Dev server at http://localhost:8080
```

Build for production:

```bash
npm run docs:build     # Output → docs/.vuepress/dist/
npm run docs:preview   # Preview the production build
```

## Site Structure

```
docs/
├── README.md                  # Home page (live site landing)
├── vision.md                  # Philosophy & roadmap
├── contributing.md            # How to contribute
├── RELEASE_NOTES_0.7.1.md    # Latest release notes
├── getting-started/           # Installation & first steps
├── walkthrough/               # Step-by-step guides (Local, GCP, Airflow, Jenkins)
├── cli/                       # CLI command reference
├── providers/                 # Provider docs (GCP, AWS, Snowflake, Local, Custom)
├── advanced/                  # Blueprints, governance, Airflow integration, AI agents
└── .vuepress/
    ├── config.ts              # VuePress configuration & navigation
    └── public/                # Static assets (logo, favicon)
```

## Deployment

Pushes to `main` automatically build and deploy to **GitHub Pages** via the workflow in `.github/workflows/deploy-docs.yml`.

The live documentation is available at: **https://agentics-rising.github.io/forge-cli-docs/**

> **Note:** To enable GitHub Pages, go to your repository **Settings → Pages** and set the source to **GitHub Actions**.

## Contributing

We welcome contributions! Whether it's fixing a typo, improving an explanation, or adding a new guide:

1. Fork this repository
2. Create a branch (`git checkout -b docs/my-improvement`)
3. Make your changes — the dev server hot-reloads on save
4. Open a Pull Request

For detailed guidelines, see [CONTRIBUTING.md](docs/contributing.md) and our [Code of Conduct](CODE_OF_CONDUCT.md).

## Related Repositories

| Repository | Description |
|-----------|-------------|
| [`fluid-forge-cli`](https://github.com/agentics-rising/fluid-forge-cli) | The Fluid Forge CLI — the core tool |
| [`fluid-provider-sdk`](https://github.com/agentics-rising/fluid-provider-sdk) | SDK for building custom providers |

## License

Copyright 2025-2026 [Agentics Transformation Pty Ltd](https://fluidhq.io).

Licensed under the **Apache License, Version 2.0**. See [LICENSE](LICENSE) for the full license text and [NOTICE](NOTICE) for attribution details.

---

<p align="center">
  <strong>Built with <a href="https://v2.vuepress.vuejs.org/">VuePress 2</a></strong> · <strong>Powered by <a href="https://github.com/agentics-rising/fluid-forge-cli">Fluid Forge</a></strong>
  <br>
  <sub>Declarative Data Products for Modern Data Teams</sub>
  <br><br>
  <strong>Proudly developed by <a href="https://dustlabs.co.za">dustlabs.co.za</a></strong>
</p>
