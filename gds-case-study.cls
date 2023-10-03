%%Identification
\NeedsTeXFormat{LaTeX2e}
\ProvidesPackage{gds-case-study}[2023/08/25 Gestão de Desenvolvimento de Software - Case Study]

% Declare the class options
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

% Load the article class
\LoadClass[12pt]{article}


%%Packages
%%%Better table support. Documentation: https://ctan.org/pkg/booktabs?lang=en
\RequirePackage{booktabs}
%%%Languages this document will require
\RequirePackage[english]{babel}
%%% Font with better support for accents and special characters
\RequirePackage{libertinus}
%%%Hyphenation in Portuguese
\RequirePackage{hyphenat}
%%%Display images
\RequirePackage{graphicx}
%%%Indent first paragraph in sections, subsections etc
\RequirePackage{indentfirst}
%%%Allow  for different line spaces
\RequirePackage{setspace}
%%%A4 Page, 1-inch margin
\RequirePackage[
    a4paper,
    margin = 1in,
    headheight=10mm,% Set \headheight to 10mm
    ]
    {geometry}
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
%%% More possibilities to make references. Documentation: https://ctan.org/pkg/natbib?lang=en
\RequirePackage{natbib}

%%%Custom header required by the Professor. Documentation: https://linorg.usp.br/CTAN/macros/latex/contrib/fancyhdr/fancyhdr.pdf
\RequirePackage{fancyhdr}


%%Commands
%%%Use Fancy pages (to create custom header and footer)
\pagestyle{fancy}
\fancyhead{} % clear all header fields
\fancyfoot{} % clear all footer fields
\makeatletter\let\Title\@title\makeatother %allows for \Title to access content of \title
\makeatletter\let\Date\@date\makeatother  %allows for \Date to access content of \date
\makeatletter\let\Author\@author\makeatother  %allows for \Author to access content of \author
\fancyhead[C]{\textbf{\Title}}
\fancyhead[R]{Project Management}
\fancyfoot[L]{\textbf{\Author}}
\fancyfoot[R]{\textbf{\Date}}


%%%1.5 space between lines
\onehalfspacing
%%%Highlight items using teal
\newcommand{\highlight}[1]{\textcolor{beautiful-teal}{#1}}
