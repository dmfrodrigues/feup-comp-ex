\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{comp_test2}
\LoadClass{comp}

\RequirePackage{xkeyval}

\def\docid{NULL}
\define@key{comp_test2.cls}{docid}[NULL]{%
  \def\docid{#1}%
}

\ExecuteOptionsX{docid}
\ProcessOptionsX%

\RequirePackage{import}
\RequirePackage{hyperref}

\author{Diogo Miguel Ferreira Rodrigues \\ \href{mailto:dmfrodrigues2000@gmail.com}{dmfrodrigues2000@gmail.com}}
\title{COMP - Test 2 \docid}

% Macros
\renewcommand\thechapter{\decimal{chapter}T2}
\usepackage{titlesec}
\titleformat{\chapter}[display]{\normalfont\bfseries}{}{0pt}{\Huge}
\makeatletter
\let\newtitle\@title
\renewcommand{\chaptermark}[1]{\markboth{\newtitle}{\thechapter. #1}}
\makeatother
