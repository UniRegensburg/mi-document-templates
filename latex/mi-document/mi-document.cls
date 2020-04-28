% The MIT License (MIT)
%
% Copyright (c) 2016 Philipp Pascal Jean-Jacques
% Copyright (c) 2020 Andreas Schmid
%
% Permission is hereby granted, free of charge, to any person obtaining a copy
% of this software and associated documentation files (the "Software"), to deal
% in the Software without restriction, including without limitation the rights
% to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
% copies of the Software, and to permit persons to whom the Software is
% furnished to do so, subject to the following conditions:
%
% The above copyright notice and this permission notice shall be included in all
% copies or substantial portions of the Software.
%
% THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
% IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
% FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
% AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
% LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
% OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
% SOFTWARE.

\ProvidesClass{mi-document}[2020/03/19 v1.1 mi-document]
\LoadClass[fontsize=11pt,a4paper,oneside,abstract=true,bibliography=totoc]{scrreprt}

%TODO font setup

\RequirePackage{iftex}
\ifPDFTeX
	\RequirePackage{tgpagella}
	\RequirePackage{tgheros}
	\RequirePackage{tgcursor}
	\RequirePackage[T1]{fontenc}
\else
	\usepackage{fontspec}
	\setmainfont{TeX Gyre Pagella}
	\setsansfont{TeX Gyre Heros}
	\setmonofont{TeX Gyre Cursor}
	\usepackage{unicode-math}
\fi

	\RequirePackage{pifont}
\newcommand{\checkboxEmpty}{
	\ding{114}
}
\newcommand{\checkboxChecked}{
	\leavevmode\rlap{\ding{55}}\ding{114}
}



\usepackage{graphicx}
\usepackage{color}


\usepackage{apacite}
\usepackage{natbib}
\usepackage{bibentry}

\usepackage[a4paper,left=3.5cm,right=3.5cm,top=2.5cm,bottom=2.5cm,includehead]{geometry}

\usepackage{setspace}

% page style
\RequirePackage[automark]{scrlayer-scrpage}
\KOMAoptions{onpsinit={\setstretch{1}}}%ausgleich zu setspace
\chead{}
\ohead{\leftmark}
\RequirePackage[hidelinks]{hyperref}


% commands for the title page
\newcommand{\getAuthor}{unbekannter Author}
\newcommand{\getTitle}{kein Titel}
\newcommand{\getCourse}{kein Kurs}
\newcommand{\getSemester}{SS 12}
\newcommand{\getDozent}{Kein Dozent}
\newcommand{\getDate}{\today}
\newcommand{\getStudID}{}
\newcommand{\getStudSemester}{}
\newcommand{\getMail}{}
\newcommand{\getStudMail}{}
\newcommand{\getKeywords}{}
\newcommand{\getModule}{}
\newcommand{\getAddress}{}
\newcommand{\getDateHandedIn}{}
\newcommand{\getPhone}{}
\newcommand{\getWorkType}{}
\newcommand{\getStudSubject}{Medieninformatik}
\newcommand{\getFirstReviewer}{}
\newcommand{\getSecondReviewer}{}
\newcommand{\getAdvisor}{}
\newcommand{\getInstitute}{Institut für Information und Medien, Sprache und Kultur (I:IMSK)}
\renewcommand{\author}[1]{\renewcommand{\getAuthor}{#1}}
\renewcommand{\title}[1]{\renewcommand{\getTitle}{#1}}
\newcommand{\course}[1]{\renewcommand{\getCourse}{#1}}
\newcommand{\semester}[1]{\renewcommand{\getSemester}{#1}}
\newcommand{\dozent}[1]{\renewcommand{\getDozent}{#1}}
\newcommand{\studid}[1]{\renewcommand{\getStudID}{#1}}
\newcommand{\studSemester}[1]{\renewcommand{\getStudSemester}{#1}}
\newcommand{\mail}[1]{\renewcommand{\getMail}{\href{mailto:#1}{#1}}}
\newcommand{\studMail}[1]{\renewcommand{\getStudMail}{\href{mailto:#1}{#1}}}
\newcommand{\keywords}[1]{\renewcommand{\getKeywords}{#1}}
\newcommand{\module}[1]{\renewcommand{\getModule}{#1}}
\newcommand{\address}[2]{\renewcommand{\getAddress}{#1}}
\newcommand{\phone}[1]{\renewcommand{\getPhone}{#1}}
\newcommand{\dateHandedIn}[1]{\renewcommand{\getDateHandedIn}{#1}}
\AtBeginDocument{
	\hypersetup{pdfinfo={
			Title={\getTitle},
			Author={\getAuthor},
			Subject={\getCourse},
			Keywords={\getKeywords}
	}}
}
\newcommand{\bachelor}{\renewcommand{\getWorkType}{Bachelorarbeit}}
\newcommand{\master}{\renewcommand{\getWorkType}{Masterarbeit}}
\newcommand{\studSubject}[1]{\renewcommand{\getStudSubject}{#1}}
\newcommand{\firstReviewer}[1]{\renewcommand{\getFirstReviewer}{#1}}
\newcommand{\secondReviewer}[1]{\renewcommand{\getSecondReviewer}{#1}}
\newcommand{\advisor}[1]{\renewcommand{\getAdvisor}{#1}}
\newcommand{\institute}[1]{\renewcommand{\getInstitute}{#1}}
\newcommand{\defaultStretch}{\setstretch{1.5}}

\newcommand{\signature}{\@ifstar\mi@signaturestar\mi@signature}
\newcommand{\mi@signature}{\par\vspace{1.5cm}\noindent Regensburg, \getDateHandedIn\hfill\SignatureBox{Unterschrift}\\\strut}
\newcommand{\mi@signaturestar}{\par\vspace{1.5cm}\noindent\SignatureBox{Ort, Datum}\hfill\SignatureBox{Unterschrift}\\\strut}
\newcommand*{\SignatureBox}[2][5cm]{\parbox[t]{#1}{\centering\rule{\linewidth}{.3pt}\\\makebox[0pt][c]{#2}}}


%abstract environment with language option
\RequirePackage{xparse}
\RenewDocumentEnvironment{abstract}{o}{
	\IfNoValueF{#1}{\selectlanguage{#1}}%
	\if@abstrt
	\Iftocfeature{toc}{leveldown}%
	{\subsection*}%
	{\section*}%
	{\abstractname}%
	\fi
}{}



%% lower line spacing for lists
\let\orig@listi\@listi
\def\@listi{%
	\orig@listi
	\itemsep\z@
}
\let\@listI\@listi

\let\orig@listii\@listii
\def\@listii{%
	\orig@listii
	\itemsep\z@
}

\let\orig@listiii\@listiii
\def\@listiii{%
	\orig@listiii
	\itemsep\z@
}

% fonts for section headings
\setkomafont{disposition}{\bfseries}


\usepackage{mi-colors}
\usepackage{listings}
\usepackage{mi-language-processing}
\usepackage{mi-language-javascript}
\usepackage{mi-language-python}

\lstloadlanguages{Python}
\lstset{
	language=Python,   % default language
	xleftmargin=0.6cm,
	frameround=ffff,
	rulecolor = \color[rgb]{0.6, 0.6, 0.6},
	framexleftmargin= 1.5mm,
	framexrightmargin= -5.5mm,
	numbers=left,
	numberstyle=\ttfamily,
	basicstyle=\linespread{1}\ttfamily,
	backgroundcolor=\color[rgb]{1, 1, 1},
	breaklines=true,
	tabsize=2,
	frame=bt,
	showstringspaces=false,
	showstringspaces=false,
	upquote=true,
}



\endinput