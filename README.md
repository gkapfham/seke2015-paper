# seke2015-paper

This repository contains the LaTeX source code and additional resources for a paper that was accepted for publication at
the 27th International Conference on Software Engineering and Knowledge Engineering (SEKE 2015). The source code of the
paper uses the LaTeX style files provided by the organizers of the conference and a wide variety of other packages that
are normally standard with a modern LaTeX distribution such a TeXLive 2015.

You are invited to use this repository as a means for learning more about preparing papers in the field of software
engineering and as a way to investigate the results and writing in our paper. If you find this example useful, could I
trouble you to star this repository and then acknowledge it in your own research efforts? If you would like to learn
more about my research program, then you can checkout my
[gkapfham/research-bibliography](https://github.com/gkapfham/research-bibliography).

You can type the following command if you want to clone this repository:

```shell
git clone https://github.com/gkapfham/seke2015-paper.git
```

Then, if you want to compile the paper to a PDF, you should type the following commands.

```shell
cd seke2015-paper
pdflatex seke.tex
bibtex seke.aux
pdflatex seke.tex
```

Please note that this has been tested on an Ubuntu 15.04 workstation running a very recent version of LaTeX that was
manually installed using the TeXLive installer.  It is also worth noting that you can also compile the paper using other
LaTeX development tools, such as `latexmk`. If you are unable to compile the paper with your development tools and your
execution environment, then please open a new issue and I will attempt to resolve your concerns.
