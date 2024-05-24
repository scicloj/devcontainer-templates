


## Options

| Options Id | Description | Type | Default Value |
|-----|-----|-----|-----|

>Note: comming soon 

# A minimal devcontainer with JAVA, Clojure and minimal clj tools

It sets up a minimal dev container environment with green fields minimal tools for Clojure.

# Quickstart

## Without devcontainer cli

0. Clone the repo/src/basecloj folder into a new folder and open it with VSCode.

```bash
    git clone --depth 1 https://github.com/scicloj/devcontainer-templates.git devContClojureTemplates
    #or download the tag zip file of the repo from https://github.com/scicloj/devcontainer-templates/tags

    cp -r devContClojureTemplates/src/basecloj/ myprojectname
    code myprojectname
    # Choose the option "Reopen in container" when prompted.

    # Optionally
    rm -rf devContClojureTemplates
```
> Note change "myprojectname" with the correct project name.


## With devcontainer cli

0. Install [devcontainer cli](https://github.com/devcontainers/cli)
1. Run `devcontainer templates apply -t ghcr.io/scicloj/devcontainer-templates/basecloj` to create a devcontainer setup
   with default settings in your current directoty
2. Open folder with VSCode / devcontainer / devpod / Codespaces and trigger/wait for container build
3. [Start the Calva repl](https://calva.io/getting-started/)
4. Enjoy Clojure

## Customization
5. Install more features in devcontainer: https://containers.dev/features

---
