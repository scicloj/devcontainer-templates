
# Minimal devcontainer with LTS JAVA, official Clojure and clj tools (basecloj)

This template set up a minimal devcontainer environment for new Clojure projects.

## Options

| Options Id | Description | Type | Default Value |
|-----|-----|-----|-----|
| imageTag | Tag of official Clojure image | string | temurin-21-tools-deps-jammy |

# Minimal devcontainer with LTS JAVA, official Clojure and clj tools

This template set up a minimal devcontainer environment for new Clojure projects.

# Quickstart

Required: Install DevContainer VSCode extension and run the command. `(Shift+Crtl+P) 'Dev Containers: Install devcontainer CLI'`

1. Open a folder in vscode for the new project empty project.

2. Create the new devcontainer configuration files. On a new terminal run the command:

```bash
devcontainer templates apply --workspace-folder . \
--template-id ghcr.io/scicloj/devcontainer-templates/basecloj:latest

# Optionally, add another line to select the base image 
\
--template-args '{"imageTag": temurin-8-tools-deps-jammy"
```
>  See the [devcontainer-template.json](devcontainer-template.json) for a list of options.

 
3. `(Shift+Crtl+P) 'Dev Containers: Rebuild and Reopen in Container'`

4. After the devcontainer build you have a ful Clojure dev environment with all the tools.

    a. [Start the Calva repl](https://calva.io/getting-started/)

    b. Create a new app, lib, template and more: 
    * Read [deps-new](https://github.com/seancorfield/deps-new)
    * Read [clj-new docs](https://github.com/seancorfield/clj-new) 

> Note: Open a new 'bash' terminal in the devcontainer. The default terminal is 'sh' but open the arrow next to the plus sign in the terminal panel and select 'bash' type terminal.

## Customization

* Choose other base images from the imageTag list of [devcontainer-template.json](devcontainer-template.json) 

* Install more features in devcontainer: https://containers.dev/features


---

_Note: This file was auto-generated from the [devcontainer-template.json](https://github.com/marcitqualab/devcontainer-templates/blob/main/src/basecloj/devcontainer-template.json).  Add additional notes to a `NOTES.md`._
