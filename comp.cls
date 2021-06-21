\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{comp}
\LoadClass[a4paper, 11pt]{book}
% Margins
\RequirePackage[top=25mm,bottom=25mm,left=25mm,right=25mm]{geometry}
% Tables with colored cells
\RequirePackage[table]{xcolor}%
% Graphics and images
\RequirePackage{graphicx}
\RequirePackage{tikz}
\RequirePackage{tikz-qtree}
\usetikzlibrary{automata, positioning, arrows}
% Encodings (to render letters with diacritics and special characters)
\RequirePackage[utf8]{inputenc}
\DeclareUnicodeCharacter{2205}{$\emptyset$}
% Language
\RequirePackage[english]{babel}
% Hyperreferences
\RequirePackage{hyperref}
% Section pagebreaks
\RequirePackage{titlesec}
\newcommand{\sectionbreak}{\clearpage}
% Source code
\RequirePackage{listings}
\renewcommand{\lstlistingname}{File}
\lstset{
    basicstyle=\ttfamily,
    frame=tb, % draw frame at top and bottom of the code
    tabsize=4, % tab space width
    numbers=left, % display line numbers on the left
	showstringspaces=false, % don't mark spaces in strings    
    commentstyle=\color{green}, % comment color
    keywordstyle=\color{blue}, % keyword color
    stringstyle=\color{red} % string color
}
\lstdefinelanguage{Maxima}{
	keywords={log,jacobian,determinant,subst,float,exp,diff,plot2d,matrix,invert},
	sensitive=true,
	comment=[n][\itshape]{/*}{*/}
}
% Tables with bold rows
\RequirePackage{tabularx}
\newcommand\setrow[1]{\gdef\rowmac{#1}#1\ignorespaces}
\newcommand\clearrow{\global\let\rowmac\relax}
\clearrow
% Tables with diagonal slashes
\RequirePackage{diagbox}
\newcommand\hlinetext{\noindent\makebox[\linewidth]{\rule{\linewidth}{0.4pt}}}
% Math stuff
\RequirePackage[mathscr]{euscript}
\RequirePackage{amsmath,amssymb}
\RequirePackage{mathtools}
\RequirePackage{enumitem}
\DeclareMathOperator{\inter}{inter}
% Definitions, theorems, remarks,...
\RequirePackage{amsthm}
\newtheorem{definition}{Definition}[section]
\newtheorem{theorem}{Theorem}[section]
\newtheorem{corollary}{Corollary}[theorem]
\newtheorem{lemma}[theorem]{Lemma}
\renewcommand\qedsymbol{$\blacksquare$}
\theoremstyle{remark}
\newtheorem*{remark}{Remark}
% Zero-padding
\RequirePackage{fmtcount}
% Copyright page
\newenvironment{secondpage}{
    \clearpage\null\vfill
    \thispagestyle{empty}
    \begin{minipage}[b]{0.9\textwidth}
        \footnotesize\raggedright
        \setlength{\parskip}{0.5\baselineskip}
}{
    \end{minipage}
    \vspace*{2\baselineskip}
}
% Some work
\def\title#1{\gdef\@title{#1}\gdef\@@title{#1}}
\def\author#1{\gdef\@author{#1}\gdef\@@author{#1}}
\let\@@title\@empty
\let\@@author\@empty
% Headers and footers
\RequirePackage{fancyhdr}
\pagestyle{fancy}
\fancyhf{}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}
\fancyhead[RE]{\MakeUppercase{\leftmark}}
\fancyhead[LO]{\textit{\rightmark}}
\fancyhead[LE, RO]{\thepage}
\fancyfoot[LE, RO]{\ifx\@@author\@empty\else\@@author\fi}
% Sections
\makeatletter
\renewcommand\thesection{Group \arabic{section}}
\renewcommand\thesubsection{\arabic{section}.\alph{subsection})}
\renewcommand\thesubsubsection{\thesubsection\alph{subsubsection}}
\makeatother

\titlespacing*{\chapter}{0pt}{-45pt}{10pt}
\titleformat{\subsection}[runin]
  {\normalfont\large\bfseries}{\thesubsection}{1em}{}
%
\newcommand\ansseparator{
    \noindent\hfil\rule{0.5\textwidth}{.4pt}\hfil

    \vspace{1em}
}
% Alias
\setcounter{secnumdepth}{10}
\newcommand\exam[1]{\chapter{#1}}
\newcommand\examgroup[1]{\section{#1}}
\newcommand\question[0]{\subsection{}}
\newcommand\questionitem[1]{\subsubsection{#1}}
