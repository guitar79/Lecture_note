%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%  LaTeX document class of the thesis of the Gyeonggi Science High School   %%%
%%%  Last edition 2015.11.13 by Chinook Mok                                   %%%
%%%  Continously being modified by gshslatexintro after 2016.02.02.           %%%
%%%  Check the latest version at : latex.gs.hs.kr                             %%%
%%%  Also refer to https://www.facebook.com/gshstexsociety                    %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\ProvidesClass{gshs_thesis}

\usepackage{ifxetex} % 부득이하게 pdflatex을 사용해도 문제가 없도록 함

\ifxetex
\LoadClass[11pt]{article}
\else
\usepackage[nonfrench]{kotex}
\LoadClass[pdftex, 11pt]{article}
\fi 
\usepackage{geometry}
\usepackage{amssymb}
\usepackage{amsmath}
\usepackage{graphicx}
\usepackage[margin=10pt,font=small,labelfont=bf]{caption}
\usepackage{subcaption}
\usepackage{fancyhdr}
\usepackage[nottoc]{tocbibind}
\usepackage{titlesec}
\usepackage{cite}   % citation [1,2,3] --> [1-3]
\usepackage{tocloft}
\usepackage[toc,page]{appendix}

\ifxetex
\else
\usepackage[T1]{fontenc}   % To use Times New Roman
\usepackage[utf8]{inputenc}% To use Times New Roman
\fi

\usepackage{mathptmx}      % To use Times New Roman
\usepackage{array}
\usepackage{setspace}

\usepackage{enumitem} % itemize, enumerate 환경 여백 조절
\setitemize{noitemsep} % 여백이 너무 넓어서 기본 여백으로 만듦
\setenumerate{noitemsep} % 여백이 너무 넓어서 기본 여백으로 만듦

\bibliographystyle{gshs_thesis}
%\usepackage[numbers,sort&compress]{natbib}
%\setlength{\bibsep}{0em}
%\bibliographystyle{gshs_thesisnat}

\usepackage{etoolbox}
\apptocmd{\thebibliography}{\setlength{\itemsep}{0pt}}{}{}
%\setstretch{1.5}

\renewcommand{\thefootnote}{\fnsymbol{footnote}} 
% 주석 번호와 참고문헌 번호의 혼동을 막기 위해 arabic 대신 fnsymbol 사용(asterisk, dagger, double dagger, ...)

\setlength{\hoffset}{0pt}
\setlength{\voffset}{0pt}
\setlength{\paperwidth}{195mm}
\setlength{\paperheight}{255mm}
\setlength{\oddsidemargin}{0mm}
\setlength{\evensidemargin}{0mm}
\setlength{\topmargin}{0pt}
\setlength{\headheight}{0pt}
\setlength{\headsep}{0pt}
\setlength{\textheight}{200mm}
\setlength{\textwidth}{145mm}
\setlength{\marginparsep}{0mm}
\setlength{\marginparwidth}{0mm}
\setlength{\footskip}{56pt}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%define title page layout%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\renewcommand{\maketitle}{%

    \thispagestyle{empty}   %%%% 제 1 타이틀 페이지
\begin{minipage}[h][50mm][c]{\textwidth}
\begin{center}
	\huge\bfseries \title  \\
	\normalsize\bfseries \date
\end{center}
\end{minipage}
\begin{minipage}[h][20mm][c]{0.6\textwidth}
\normalsize\bfseries \school \\ 
\author   (\email)
\end{minipage}

  \end{center}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% caption format %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%\renewcommand{\figurename}{Fig.}
\captionsetup[figure]{%
	font=small,labelsep=period,singlelinecheck=off,aboveskip=0pt,% 
	belowskip=5pt, margin=0pt,subrefformat=parens%
}
\captionsetup[table]{%
	font=small,labelsep=period,singlelinecheck=off,aboveskip=5pt,% 
	margin=0pt%
}
\captionsetup[equation]{%
	font=small,labelsep=period,singlelinecheck=off,aboveskip=5pt,% 
	margin=0pt%
}
