\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{comp_exam}
\LoadClass{comp}

\RequirePackage{xkeyval}

\def\docid{NULL}
\define@key{comp_exam.cls}{docid}[NULL]{%
  \def\docid{#1}%
}

\ExecuteOptionsX{docid}
\ProcessOptionsX%

\RequirePackage{import}
\RequirePackage{hyperref}

\author{Diogo Miguel Ferreira Rodrigues \\ \href{mailto:dmfrodrigues2000@gmail.com}{dmfrodrigues2000@gmail.com}}
\title{COMP - Exam \docid}
