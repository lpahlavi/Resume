%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Info
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Author: Louis Pahlavi
% Email:  louis.pahlavi@mail.utoronto.ca

% This is a general template to write a resume or CV using Latex2e. It
% does the general document setup and provides custom commands to ease
% the writing of a resume.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% General setup
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ResumeTemplate}[2015/08/05 Louis Resume Class]
\LoadClass[a4paper,academicons]{altacv}
\RequirePackage{titlesec}
\pagenumbering{gobble}

\titlespacing\section{0pt}{20pt plus 4pt minus 2pt}{6pt plus 2pt minus 2pt}
\titlespacing\subsection{0pt}{20pt plus 4pt minus 2pt}{6pt plus 2pt minus 2pt}

% Required packages
\usepackage[english]{babel}
\usepackage{enumitem}
\usepackage{geometry}

% Useful packages
\usepackage{hyperref}
\usepackage{tabularx}
\usepackage{graphicx}
\usepackage{textpos}
\usepackage{framed, color}
\usepackage{tcolorbox}
\definecolor{shadecolor}{rgb}{0.82,0.82,0.82}

% Setup document margins
\geometry{left=0.5cm,right=0.5cm,top=0.5cm,bottom=0.5cm}
% \renewcommand{\baselinestretch}{1.2} 

% Bibliography required for altacv
\usepackage{biblatex}
\addbibresource{references.bib}

% Set font
\setmainfont{Carlito}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Custom commands
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Custom section title
\titleformat{\section}
	{\bf\large\center}
	{}{0em} 
	{}

\let\oldsection\section
\renewcommand{\section}[1]{%
	\begin{snugshade}
	\vspace*{0.25\baselineskip}
	\oldsection{{#1}}
	\vspace*{-0.25\baselineskip}
	\end{snugshade}

	% \vspace*{0.5\baselineskip}
	% \begin{tcolorbox}[%
	% 	enhanced,
 %        frame hidden,
	% 	skin=enhancedfirst, 
	% 	interior style={left color=black!35,right color=black!5},
	%     left=0pt,right=0pt,top=0pt,bottom=0pt,
	%     sharpish corners,
	% 	]
	% 	\vspace*{0.25\baselineskip}
	% 	\oldsection{{#1}}
	% 	\vspace*{-0.25\baselineskip}
	% \end{tcolorbox}
	% \vspace*{0.5\baselineskip}
}
	
% Custom subsection title
\titleformat{\subsection}
	{\bf\large\raggedright}
	{}{0em}
	{}

% Dated section
\newcommand{\datedsection}[2]{%
	\section[#1]{#1 \hfill \textnormal{#2}}%
}

% Dated subsection
\newcommand{\datedsubsection}[2]{%
	\subsection[#1]{#1 \newline \textnormal{{#2}}}%
}

% Position (i.e. job or other position)
\newcommand{\position}[4]{%
	\subsection[#1]{#1 \hfill \textnormal{{#2}} \newline
	\textnormal{{#3}} \hfill \textnormal{{#4}}}
}

% My name at the top of the document
\newcommand{\myname}[1]{
	\centerline{\bf\Huge{#1}}
}

% My contact info
\newcommand{\contact}[5]{
	\center{\large #1 {\large\textperiodcentered} #2 {\large\textperiodcentered} #3
	{\large\textperiodcentered} #4 {\large\textperiodcentered} #5}
\vspace*{-\baselineskip}
}

% 5-item description
\newcommand{\workitemsfive}[5]{
	\begin{itemize}[noitemsep,nosep]
		\item #1
		\item #2
		\item #3
		\item #4
		\item #5
	\end{itemize}
\vspace*{-\baselineskip}
}

% 4-item description
\newcommand{\workitemsfour}[4]{
	\begin{itemize}[noitemsep,nosep]
		\item #1
		\item #2
		\item #3
		\item #4
	\end{itemize}
\vspace*{-\baselineskip}
}

% 3-item description
\newcommand{\workitemsthree}[3]{
	\begin{itemize}[noitemsep,nosep]
		\item #1
		\item #2
		\item #3
	\end{itemize}
\vspace*{-\baselineskip}
}

% 2-item description
\newcommand{\workitemstwo}[2]{
	\begin{itemize}[noitemsep,nosep]
		\item #1
		\item #2
	\end{itemize}
\vspace*{-\baselineskip}
}

% 1-item description
\newcommand{\workitemsone}[1]{
	\begin{itemize}[noitemsep,nosep]
		\item #1
	\end{itemize}
\vspace*{-\baselineskip}
}

\newenvironment{ritemize}{\begin{itemize}[noitemsep, leftmargin=*]\raggedright}{\end{itemize}}
