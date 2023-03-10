\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{mynote}[2023/3/1 Class file for note-taking]

% Set the course name, course year and the latest date
\RequirePackage{xkeyval}
\def\doccoursename{BIM3001: Bioinformatics}
\def\doccourseyear{2023 Spring}
\def\docdate{\today}

\define@key{mynote.cls}{course}[BIM3001: Bioinformatics]{%
  \def\doccoursename{#1}%
}

\define@key{mynote.cls}{year}[2023 Spring]{%
  \def\doccourseyear{#1}%
}
\define@key{mynote.cls}{docdate}[\today]{%
  \def\docdate{#1}%
}

\ExecuteOptionsX{course, year, docdate}
\ProcessOptionsX

\AtBeginDocument{%
\lhead[\doccourseyear]{\doccourseyear}%
\chead[\doccoursename]{\doccoursename}%
\rhead[]{\author}%
\pagestyle{fancy}%
}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass{article}
\input{commands.tex}


% Access the author name in the document
% Later in the document \ldots we access the variables again:
% \MyTitle, \MyAuthor, and \MyDate.	
\RequirePackage{authoraftertitle}
\title{MAT2040: Linear Algebra}
\author{ZHOU, Yuming}
\newcommand{\COURSE}{\doccoursename}
\newcommand{\YEAR}{\doccourseyear}




% update @ 2021
%
% this function resolves error of repeated commands
\newcommand*{\renameenviron}[1]{\expandafter\let\csname renamed-#1\expandafter\endcsname\csname #1\endcsname\expandafter\let\csname endrenamed-#1\expandafter\endcsname\csname end#1\endcsname\expandafter\let\csname #1\endcsname\relax\expandafter\let\csname end#1\endcsname\relax}












%
% The following commands set up the lecnum (lecture number)
% counter and make various numbering schemes work relative
% to the lecture number.
%
\newcounter{lecnum}
\counterwithin{section}{lecnum}
\counterwithin{equation}{lecnum}
\counterwithin{figure}{lecnum}
\counterwithin{table}{lecnum}
\counterwithin{algorithm}{lecnum}
\counterwithin{footnote}{lecnum}

\pagestyle{myheadings}

\newlength{\leclen}
\newcommand{\lecture}[4]{%
\clearpage
\thispagestyle{plain}
\stepcounter{lecnum} % resets every associated counter
\setcounter{lecnum}{#1}%
\begin{center}
\framebox{%
\phantomsection % toc locate to section
\addcontentsline{toc}{part}{\thelecnum\hspace{2em}\space#2}
\parbox[t]{\linewidth-0.5mm}{%
\vspace{2mm}
{\bfseries\COURSE \hfill \YEAR \par}
\vspace{2mm}
{\Large %Lecture #1: #2
\settowidth{\leclen}{Lecture999:}
\begin{minipage}[t]{\leclen}
Lecture #1:
\end{minipage} \begin{minipage}[t]{\linewidth-2mm-\leclen}
#2
\end{minipage}
\par}
\vspace{4mm}
{\itshape Lecturer: #3\hfill Date: #4\par}
\vspace{2mm}
}%
}
\end{center}
\markboth{Lecture #1}{Lecture #1}
}

\newlength{\hwklen}
\newcommand{\hwk}[4]{%
\clearpage
\thispagestyle{plain}
\stepcounter{lecnum} % resets every associated counter
\setcounter{lecnum}{#1}%
\begin{center}
\framebox{%
\phantomsection % toc locate to section
\addcontentsline{toc}{part}{\thelecnum\hspace{2em}\space#2}
\parbox[t]{\linewidth-0.5mm}{%
\vspace{2mm}
{\bfseries\COURSE \hfill \YEAR \par}
\vspace{2mm}
{\Large %Lecture #1: #2
\settowidth{\hwklen}{Assignment999:}
\begin{minipage}[t]{\hwklen}
Assignment #1:
\end{minipage} \begin{minipage}[t]{\linewidth-2mm-\hwklen}
#2
\end{minipage}
\par}
\vspace{4mm}
{\itshape Author: #3\hfill Date: #4\par}
\vspace{2mm}
}%
}
\end{center}
\markboth{Assignment #1}{Assignment #1}
}



% E.g and other macros
\newlength{\mywidth}

\newcounter{Egnum}[lecnum]
\newenvironment{Eg}{\refstepcounter{Egnum}\par\medskip \noindent \textit{e.g.\theEgnum.} \color{eggray} \rmfamily } {\medskip}
\newenvironment{Eg*}{\par\medskip \noindent \textit{e.g.} \color{eggray} \rmfamily } {\medskip}
\newenvironment{QaA}{\par\medskip \noindent \textit{Q\&A.} \color{eggray} \rmfamily } {\medskip}
\newcommand{\eg}[1]{{\color{eggray}(}{\textit{e.g.} \color{eggray} #1)}}
\newcommand{\ie}[1]{{\color{eggray}(}{\textit{i.e.} \color{eggray} #1)}}
\newcommand{\br}[1]{(#1)}



% ---------------------------------------------------------------------------------

