\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{comp_exam_round1}
\LoadClass{comp}

\RequirePackage{xkeyval}

\def\docid{NULL}
\define@key{comp_exam_round1.cls}{docid}[NULL]{%
  \def\docid{#1}%
}

\ExecuteOptionsX{docid}
\ProcessOptionsX%

\RequirePackage{import}
\RequirePackage{hyperref}

\author{Diogo Miguel Ferreira Rodrigues \\ \href{mailto:dmfrodrigues2000@gmail.com}{dmfrodrigues2000@gmail.com}}
\title{COMP -- Exam \docid~(first round)}

% Macros
\renewcommand\thechapter{\decimal{chapter}R}
\makeatletter
\let\newtitle\@title
\renewcommand{\chaptermark}[1]{\markboth{\newtitle}{\thechapter. #1}}
\makeatother
