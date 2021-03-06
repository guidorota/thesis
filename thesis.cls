\RequirePackage{filecontents}
\NeedsTeXFormat{LaTeX2e}[1994/06/01]
\ProvidesPackage{thesis}[2013/01/13 Custom Package]

\def\@@ptsize{12pt}
\DeclareOption{10pt}{\def\@@ptsize{10pt}}
\DeclareOption{11pt}{\def\@@ptsize{11pt}}
\DeclareOption{12pt}{\def\@@ptsize{12pt}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions\relax
\LoadClass[a4paper,\@@ptsize]{book}

\newenvironment{figurenote}
{ \begin{sffamily} \rule{\textwidth}{0.5pt} \begin{footnotesize} }
{ \par \vspace{-1em} \end{footnotesize} \rule{\textwidth}{0.5pt} \end{sffamily}}

\usepackage[scaled]{helvet}
\usepackage[utf8]{inputenc}
\usepackage[pctex32]{graphicx}
\usepackage{setspace}
\usepackage{parskip}
\usepackage{natbib}
\usepackage{emptypage}
\usepackage{float}
\usepackage{geometry}
\usepackage{gensymb}
%\usepackage[showframe]{geometry}
\usepackage{caption}
\usepackage{listings}
\usepackage{color}
\usepackage{enumitem}
\usepackage[titletoc]{appendix}
\setlist{nosep}

% Set numbering for \subsubsection elements and add them to the TOC
\setcounter{secnumdepth}{3}
\setcounter{tocdepth}{3}

\definecolor{code_comment}{RGB}{65,126,96}
\definecolor{code_keyword}{RGB}{126,8,84}
\definecolor{code_string}{RGB}{45,36,251}
\definecolor{gray}{rgb}{0.5,0.5,0.5}

\lstset{
	frame=tb,
	aboveskip=3mm,
	belowskip=3mm,
	showstringspaces=false,
	columns=flexible,
	basicstyle={\small\ttfamily},
	numbers=left,
	numberstyle=\tiny\color{gray},
	keywordstyle=\color{code_keyword},
	commentstyle=\color{code_comment},
	stringstyle=\color{code_string},
	breaklines=true,
	breakatwhitespace=true
	tabsize=3,
	captionpos=b
}

\captionsetup[lstlisting]{singlelinecheck=false,margin=0pt,font={small,sf}}
\captionsetup[figure]{singlelinecheck=false,margin=0pt,font={small,sf}}

\linespread{1.3}

% Hyphenate \texttt
\DeclareFontFamily{\encodingdefault}{\ttdefault}{\hyphenchar\font=`\-}

\endinput
