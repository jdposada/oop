# Quarto Presentations

This folder stores the infraestructure to prepare presentations in quarto. The best format by far is Reveal and the print that in pdf using the browser.

A complete code guide to use quarto features is available [here](https://github.com/quarto-dev/quarto-web/blob/main/docs/presentations/revealjs/demo/index.qmd)

- Dockerfile: file with all the instructions to create the image
- build.sh. convenience file to build the image
- run_docker.sh: convenience file to run the image incluiding mounting the directory where this file lives
- requirements.txt: list of python dependencies. These are the same as the ones for the class
- install_dependencies.R: these are R dependencies to render documents
- quarto_install.qmd: Small file to ensure dependencies to directly render pdfs are installed inside the image
