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
\LoadClass[11pt]{article}
\RequirePackage{titlesec}
\pagenumbering{gobble}

\titlespacing\section{0pt}{20pt plus 4pt minus 2pt}{6pt plus 2pt minus 2pt}
\titlespacing\subsection{0pt}{20pt plus 4pt minus 2pt}{6pt plus 2pt minus 2pt}

% Required packages
\usepackage[utf8]{inputenc}
\usepackage[english]{babel}
\usepackage{enumitem}
\usepackage{geometry}

% Useful packages
\usepackage{hyperref}

% Font
\usepackage{tgtermes}

% Setup document margins
\geometry{letterpaper,
	total={210mm,297mm},
	left=0.75in,
	right=0.75in,
	top=0.55in,
	bottom=0.75in}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Custom commands
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Custom section title
\titleformat{\section}
	{\bf\large\center}
	{}{0em} 
	{}
	[{\titlerule[1pt]}]
	
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
	\subsection[#1]{#1 \hfill \textnormal{\normalsize{#2}}}%
}

% Position (i.e. job or other position)
\newcommand{\position}[3]{%
	\subsection[#1]{#1, \textnormal{#3}\hfill \textnormal{\normalsize{#2}}}%
}

% My name at the top of the document
\newcommand{\name}[1]{
	\centerline{\bf\huge{#1}}
}

% My contact info
\newcommand{\contact}[6]{
	\center{\large #1 {\large\textperiodcentered} #2 {\large\textperiodcentered} #3
	{\large\textperiodcentered} #4 
	\newline
	#5 {\large\textperiodcentered} #6}
\vspace*{-\baselineskip}
}

% 4-item description
\newcommand{\workitemsfour}[4]{
	\begin{itemize}[noitemsep,nosep]
		\item #1
		\item #2
		\item #3
		\item #4 \vspace*{-\baselineskip}
	\end{itemize}
}

% 3-item description
\newcommand{\workitemsthree}[3]{
	\begin{itemize}[noitemsep,nosep]
		\item #1
		\item #2
		\item #3 \vspace*{-\baselineskip}
	\end{itemize}
}

% 2-item description
\newcommand{\workitemstwo}[2]{
	\begin{itemize}[noitemsep,nosep]
		\item #1
		\item #2 \vspace*{-\baselineskip}
	\end{itemize}
}

% 1-item description
\newcommand{\workitemsone}[1]{
	\begin{itemize}[noitemsep,nosep]
		\item #1 \vspace*{-\baselineskip}
	\end{itemize}
}

\newenvironment{ritemize}{\begin{itemize}[noitemsep, leftmargin=*]\raggedright}{\end{itemize}}
