\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{linghandout}[2023/08/31 Linguistics handout class]

% Declare the class options
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

% Load the article class
\LoadClass[12pt]{article}

% Loads package to... set the space between lines
\usepackage{setspace}

% Load packages for symbols and linguistics
\usepackage{amssymb}
\usepackage{stmaryrd}
\usepackage{mathtools}
\usepackage{cmll}
\usepackage[framemethod=TikZ]{mdframed}

\usepackage{soul}

%For multiple columns
\usepackage{multicol}

\usepackage{pdflscape}
\usepackage{booktabs}

\usepackage{tabularx,ragged2e}
\newcolumntype{C}{>{\Centering}X}    % centered version of X column type
\newcolumntype{L}{>{\RaggedRight}X}  % ragged-right version of X col. type
\newcolumntype{R}{>{\RaggedLeft}X}  % ragged-left version of X col. type
\renewcommand{\arraystretch}{1}
\usepackage{multicol,listings}
\usepackage{amsfonts}

%Defines an iota operator
\def\rotiota{\rotatebox[origin=C]{180}{$\iota$}}

%For examples
\usepackage{expex}
    \lingset{everygla={\emph},everyglb=\footnotesize, interpartskip=-0.5em,aboveglftskip=-0.5em,aboveexskip=0pt,belowexskip=0pt,belowpreambleskip=0pt}
    \def\beginsubsub{%
    \par
    \begingroup
    \advance\leftskip by 2em
    \def\b##1{\par\leavevmode\llap{\hbox to 2em{##1\hfil}}\ignorespaces}}
    \def\endsubsub{\par\endgroup}

%For maketitle
\renewcommand{\maketitle}{
	\begin{flushleft}
		\hrule
		\vspace{1em}
		{\textsc{\@title}\par}
		\vspace{0.5em}
		{\textit{\@author}
		$\circ${}
		\@date\par}
		\vspace{1em}
		\hrule
	\end{flushleft}
	}

\usepackage{tikz}
\usetikzlibrary{arrows,calc,patterns,positioning,shapes}
\usetikzlibrary{decorations.pathmorphing}
\tikzset{
modal/.style={>=stealth',shorten >=1pt,shorten <=1pt,auto,
node distance=1.5cm,semithick},
world/.style={circle,draw,minimum size=1cm,fill=gray!15},
point/.style={circle,draw,fill=black,inner sep=0.5mm},
reflexive/.style={->,in=120,out=60,loop,looseness=#1},
reflexive/.default={5},
reflexive point/.style={->,in=135,out=45,loop,looseness=#1},
reflexive point/.default={25},
}


%For trees  
\usepackage{tikz-qtree}

%Pretty circles for trees
\newcommand*\circled[1]{\tikz[baseline=(char.base)]{
            \node[shape=circle,draw,inner sep=2pt] (char) {#1};}}

\usepackage{tcolorbox}
\usepackage{fancyhdr}
\usepackage{enumitem}
    \setlist[itemize]{itemsep=-2pt, topsep=0pt}
\usepackage{xspace}
\usepackage[left=1.25in,right=1.25in,top=1.25in,bottom=1.25in]{geometry}
\usepackage{natbib}
\setlength{\bibsep}{0.5ex}
\usepackage{libertinus}
\usepackage{tipa}           %IPA symobols

\fancypagestyle{firstpage}{%
\fancyhf{} % clear all six fields
\renewcommand{\headrulewidth}{0pt}
\cfoot{\thepage}
\renewcommand{\footrulewidth}{0pt}
}

\fancypagestyle{followingpage}{%
\fancyhf{} % clear all six fields
\rhead{\nouppercase{\leftmark}}
\cfoot{\thepage}
\renewcommand{\headrulewidth}{0.7pt}
\renewcommand{\footrulewidth}{0pt}
}
\pagestyle{followingpage}
\AtBeginDocument{\thispagestyle{firstpage}}

% Set the headheight and adjust the top margin
\setlength{\headheight}{14.5pt}
\addtolength{\topmargin}{-2.5pt}

% Redefine the abstract environment
\renewenvironment{abstract}
{\par\noindent\textbf{\abstractname}\ \ignorespaces}
{\par\medskip}

\newcommand{\dash}{\xspace\textemdash\xspace}

% Define a command for keywords
\newcommand{\keywords}[1]{\par\noindent{\small{\bfseries Keywords:} #1}}

\renewcommand\thesection{\arabic{section}}
\renewcommand\thesubsection{\thesection.\arabic{subsection}}
\renewcommand\thesubsubsection{\thesubsection.\arabic{subsubsection}}

\renewcommand\section{\@startsection{section}{1}{\z@}%
  {-3.5ex \@plus -1ex \@minus -.2ex}%
  {2.3ex \@plus.2ex}%
  {\large\bfseries\raggedright}}
  
% Customize subsection headings
\renewcommand\subsection{\@startsection{subsection}{2}{\z@}%
  {-3.25ex\@plus -1ex \@minus -.2ex}%
  {1.5ex \@plus .2ex}%
  {\normalfont\bfseries}}

% Customize subsubsection headings
\renewcommand\subsubsection{\@startsection{subsubsection}{3}{\z@}%
  {-3.25ex\@plus -1ex \@minus -.2ex}%
  {1.5ex \@plus .2ex}%
  {\normalfont\itshape}}

% Paragraph indentation
\setlength{\parindent}{0em}
\setlength{\parskip}{0.5em}

\definecolor{mycolor}{RGB}{0,128,128}

\usepackage{hyperref}
\hypersetup{
    colorlinks=true,
    linkcolor=mycolor,
    citecolor=mycolor,
    }

% Fancy text box environment
\newenvironment{fancybox}{
  \tcolorbox[
    colback=white,        % Background color
    colframe=mycolor,     % Border color
    arc=2mm,              % Corner radius
    boxrule=0.3mm,        % Border thickness
    boxsep=2.5pt            % Padding inside the box
  ]
}{
  \endtcolorbox
}

\usepackage[linguistics]{forest}

%\setstretch{1.15}