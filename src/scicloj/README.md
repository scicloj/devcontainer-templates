
# scicloj datascience devcontainer template (scicloj)

A devcontainer template supporting Clojure datascience with R and python interop

## Options

| Options Id | Description | Type | Default Value |
|-----|-----|-----|-----|
| imageTag | Tag of official Clojure image | string | temurin-21-tools-deps-1.12.2.1565-jammy |

# A template project featuring a devcontainer setup for Datascience with Clojure using several libraries from [scicloj](https://scicloj.github.io/)

It sets up an dev container environment with several tool s and libraries for datascience in Clojure.

# Quickstart
0. Install [devcontainer cli](https://github.com/devcontainers/cli)
1. Run `devcontainer templates apply -t ghcr.io/scicloj/devcontainer-templates/scicloj` to create a devcontainer setup
   with default settings in your current directoty
2. Open folder with VSCode / devcontainer / devpod / Codespaces and trigger/wait for container build
3. "jack in" inside the devcontainer
4. run "uv sync" to syvc python environment with pyproject.toml
5. Enjoy Clojure and R  + python from Clojure  (using ClojisR + libpython-clj)

## template options:
image-tag: ubuntu LTS only and Java LTS 8,11,17,21 and if released on Dockerhub
default image-tag: lastet ubuntu LTS + latest supported LTS JDK + latest released clojure (and available on Dockerhub)
## Customization

5. Customize libraries in declarative way
    * deps.edn:          add Clojure + Java libraries
    * pyproject.toml:    add python libraries 
    * devcontainer.json: add R libraries (see [r-packages](ghcr.io/rocker-org/devcontainer-features/r-packages)


6. (Install more features in devcontainer: https://containers.dev/features)
7. (Remove things you don't need)
   


## Installed inside devcontainer


The purpose of this devcontainer setup is to support Clojure data science including Clojure integration with python and R


The provided devcontainer.json installs in the devcontainer:

* Clojure (incl. clojisr and libpython-clj)
* 'uv' python package manager
* R (packages can be added in devcontainer.json)
* pyproject.toml , which specifies python version and packages
* deps.edn with Clojure libraries for Data science from scicloj
* quarto cli
* docker-in-docker
* leiningen
* babashka
* lsp



# Version history 

## 2.0.1
fixed setup.sh invocation


## 2.0.0
BREAKING CHANGE:
- removed poetry
- removed emacs
- removed vnc
- removed rstudio server
- added uv
- use Clojure 1.12.2.1565 images

## 1.1.3
- fixed feature names from 'contrib' -> 'extra'

## 1.1.2
- fixed image names


## 1.1.1
- fixed default image

## 1.1.0
- removed CHANGELOG.md , text is now in NOTES.md
- deps.edn depends on org.scicloj/noj-2-beta5.1
- updated Clojure image versions (1.12 now)
- upgraded python + pandas

## 1.0.12
- fixes overrideFeatureInstallOrder place

## 1.0.11
- added r-base-dev
- and order

## 1.0.10
- more optsion
- fixed lein install

## 1.0.9
- added tests
- use image tags for clojure varinat

## 1.0.8
- fixed alias

## 1.0.7
- fixed xterm14bit  setup
- added alias for emacs to use 24bit

## 1.0.6 
- moved to postAttach

## 1.0.5
- true color for emacs -nw

## 1.0.4
- use setup.sh script

## 1.0.3
- added clojure -P to startup
- added launchpad








---

_Note: This file was auto-generated from the [devcontainer-template.json](https://github.com/scicloj/devcontainer-templates/blob/main/src/scicloj/devcontainer-template.json).  Add additional notes to a `NOTES.md`._
