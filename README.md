# Ignacio Glinsek CV

[![](https://img.shields.io/website-up-down-green-red/https/nachoglinsek.me.svg?label=Ignacio&nbsp;Glinsek)](https://nachoglinsek.me/)
[![download CV](https://img.shields.io/badge/download-PDF-brightgreen.svg)](https://nachoglinsek.me/Ignacio_Glinsek-CV.pdf)
[![](https://img.shields.io/github/license/nakioman/cv.svg)](https://github.com/nakioman/cv/blob/master/LICENSE)
[![Build Status](https://img.shields.io/endpoint.svg?url=https%3A%2F%2Factions-badge.atrox.dev%2Fnakioman%2Fcv%2Fbadge%3Fref%3Dmaster&style=flat)](https://actions-badge.atrox.dev/nakioman/cv/goto?ref=master)

----
This repository contains the Curriculum Vitae of Ignacio Glinsek. The
compiled PDF is automatically deployed to [Heroku](https://heroku.com/) along with a landing page, that you can download from the link above.

My cv is being compiled using a LaTeX Docker container from
[blang/latex](https://hub.docker.com/r/blang/latex/) and then deployed automatically to [Heroku](https://heroku.com) using [Docker](https://www.docker.com/). To manually build this
file, simply download the command wrapper and compile via
[latexmk](http://mg.readthedocs.io/latexmk.html).

## Building

First, clone this repository and download the command wrapper:

```shell
$ git clone https://github.com/nakioman/cv.git
$ wget https://raw.githubusercontent.com/blang/latex-docker/master/latexdockercmd.sh
$ chmod +x latexdockercmd.sh
```
Then, compile via `latexmk`:

```shell
$ ./latexdockercmd.sh latexmk -pdf -outdir=./_build
```

This will build the file in a directory called `_build`.

## Contact

- Email: iglinsek@gmail.com
- Site: nachoglinsek.me
