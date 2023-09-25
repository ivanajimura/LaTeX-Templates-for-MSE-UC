%%Identification
\NeedsTeXFormat{LaTeX2e}
\ProvidesPackage{us-mse}[2023/08/19 Numbered Lines]

% Declare the class options
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

% Load the article class
\LoadClass[12pt]{article}





%%Packages
%%%Add line numbers. Documentation: https://texblog.org/2012/02/08/adding-line-numbers-to-documents/
\RequirePackage{lineno} 
%%%Allow for pdf to have landscape orientation. Documentation: https://ctan.org/pkg/pdflscape?lang=en
\RequirePackage{pdflscape}
%%%Better table support. Documentation: https://ctan.org/pkg/booktabs?lang=en
\RequirePackage{booktabs}
%%%Languages this document will require
\RequirePackage[english]{babel}
%%% Font with better support for accents and special characters
\RequirePackage{lmodern}
%%%Hyphenation in Portuguese
\RequirePackage{hyphenat}
%%%Display images
\RequirePackage{graphicx}
%%%Indent first paragraph in sections, subsections etc
\RequirePackage{indentfirst}
%%%Allow  for different line spaces
\RequirePackage{setspace}
%%%A4 Page, 2cm margin
\RequirePackage[a4paper, margin = 1in]{geometry}
%%%More control over tables
\RequirePackage{tabularx,ragged2e}
    \newcolumntype{C}{>{\Centering}X}    % centered version of X column type
    \newcolumntype{L}{>{\RaggedRight}X}  % ragged-right version of X col. type
    \newcolumntype{R}{>{\RaggedLeft}X}  % ragged-left version of X col. type
    \renewcommand{\arraystretch}{1}
    \RequirePackage{multicol,listings}
%%%Colors. Documentation: https://www.overleaf.com/learn/latex/Using_colours_in_LaTeX
\RequirePackage[dvipsnames]{xcolor}
\definecolor{beautiful-teal}{RGB}{0,128,128}
%%%Math Mode
\RequirePackage{amsmath}
%%% Hyperlinks. Documentation: https://www.overleaf.com/learn/latex/Hyperlinks
\RequirePackage{hyperref}
    \hypersetup{
        colorlinks=true,
        linkcolor=beautiful-teal,
        filecolor=beautiful-teal,      
        urlcolor=beautiful-teal,
        pdftitle={Overleaf Example},
        pdfpagemode=FullScreen,
        citecolor=beautiful-teal,
    }

\RequirePackage{natbib}




%%Commands
%%%Add line numbers
\linenumbers
%%%1.5 space between lines
\onehalfspacing
%Highlight items

\newcommand{\highlight}[1]{\textcolor{beautiful-teal}{#1}}
