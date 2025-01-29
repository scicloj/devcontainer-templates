# A template project featuring a devcontainer setup for Datascience with Clojure using several libraries from [scicloj](https://scicloj.github.io/)

It sets up an dev container environment with several tool s and libaries for datascience in Clojure.

# Quickstart
0. Install [devcontainer cli](https://github.com/devcontainers/cli)
1. Run `devcontainer templates apply -t ghcr.io/scicloj/devcontainer-templates/scicloj` to create a devcontainer setup
   with default settings in your current directoty
2. Open folder with VSCode / devcontainer / devpod / Codespaces and trigger/wait for container build
3. "jack in" inside the devcontainer
4. Enjoy Clojure and R  + python from Clojure  (using ClojisR + libpython-clj)

## template options:
image-tag: ubuntu LTS only and Java LTS 8,11,17,21 and if released on Dockerhub
default image-tag: lastet ubuntu LTS + latest supported LTS JDK + latest released clojure (and available on Dockerhub)
## Customization

5. Customize libraries
    * deps.edn: add Clojure + Java libraries
    * pyproject.toml: add python libraries into poetry config file
    * devcontainer.json: add R libraries (see [r-packages](ghcr.io/rocker-org/devcontainer-features/r-packages)


6. (Install more features in devcontainer: https://containers.dev/features)
7. (Remove things you don't need)
   


## Installed inside devcontainer


The purpose of this devcontainer setup is to support VSCode and (graphical) Emacs as IDEs.

### Supporting VSCode

For supportring VSCode, nothing specific need to be done, as devcontainer support is build
int VSCode. 

### Supporting Emacs
The Emacs support consists in setting up a noVNC desktop inclding Emacs in graphical mode.
The VNC port is auto-forwarded and can be seen inside a browser window.
It added as well a generic way to configure emacs, from `dotfiles`, see below.

The provided devcontainer.json installs in the devcontainer:

* Clojure (incl. clojisr and libpython-clj)
* Python incl. poetry (packages can be added via changing the `pyproject.toml` in devcontainer.json)
* R (packages can be added in devcontainer.json)
   * incl. rstudio-server

* deps.edn with Clojure libraries for Data science from scicloj
* noVNC + lite desktop incl port forwarding
* Emacs
* quarto cli
* docker-in-docker
* leiningen
* babashka
* lsp

### Graphical Emacs in web-noVNC
In the default settings, we will get a vanilla Emacs running in noVNC.
The Emacs setup can be configured via providing a specific script in a fixed location 
, which can be most easly done using the dotfile support of devcontainer.

See here: [dotfiles](https://code.visualstudio.com/docs/devcontainers/containers#_personalizing-with-dotfile-repositories)

If there is a file in `/home/vscode/.setup-ide/setup-ide.sh` it will be executed after container creation.
This can do "whatever" to configure Emacs from your own configuration.
(Baically the script can do everything on the build container.)

My `setup-ide.sh` configures Doom Emacs with my personal configuration.


# Version history 

## unreleased
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






