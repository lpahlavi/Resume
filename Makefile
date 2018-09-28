# ----------------------------------------------------
# Resume
#
# Author: louis.pahlavi@mail.utoronto.ca
# Date  : 2018-09-28
# Source: https://stackoverflow.com/questions/7004702/
#         https://tex.stackexchange.com/questions/40738/
# ----------------------------------------------------
MAIN = Resume

.PHONY: $(MAIN) all clean

# Directories containing code and binary files
OUTDIR    = out

SOURCE   := $(wildcard *.tex)
TEMPLATE := $(wildcard *.cls)
rm        = rm -f

# Compiler
LATEX     = latexmk
# Compiling flags
LFLAGS    = -pdf -pdflatex="pdflatex -interaction=nonstopmode" -use-make

# Build all the executables
all: $(MAIN)

$(MAIN): $(SOURCE) $(TEMPLATE)
	$(LATEX) $(LFLAGS) $(SOURCE)
	$(LATEX) -c

clean:
	$(LATEX) -CA