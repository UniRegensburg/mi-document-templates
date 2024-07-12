% The MIT License (MIT)
%
% Copyright (c) 2016 Philipp Pascal Jean-Jacques
% Copyright (c) 2020 Andreas Schmid & Marei Peischl
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

\ProvidesClass{mi-document}[2020/05/08 v2.0 mi-document]

\newif\if@thesis
\newif\if@seminar
\DeclareOption{thesis}{\@thesistrue}
\DeclareOption{seminar}{\@seminartrue}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{scrreprt}}
\ProcessOptions*\relax
\LoadClass[fontsize=11pt,paper=a4,abstract=true,bibliography=totoc,headings=small]{scrreprt}

\RequirePackage{iftex}
\ifPDFTeX
	\RequirePackage{tgpagella}
	\RequirePackage{tgheros}
	\RequirePackage{tgcursor}
	\RequirePackage[T1]{fontenc}
\else
	\RequirePackage{fontspec}
	\setmainfont{TeX Gyre Pagella}
	\setsansfont{TeX Gyre Heros}
	\setmonofont{TeX Gyre Cursor}
	\RequirePackage{unicode-math}
\fi

\RequirePackage[hidelinks]{hyperref}

\RequirePackage{pifont}
\newcommand{\checkboxEmpty}{
	\ding{114}
}
\newcommand{\checkboxChecked}{
	\leavevmode\rlap{\ding{55}}\ding{114}
}

\usepackage[english, ngerman]{babel}
\usepackage{translations}

\RequirePackage{etoolbox}

\RequirePackage{graphicx}
\RequirePackage{wrapfig}
\RequirePackage{color}

\RequirePackage{apacite}
\RequirePackage{natbib}
\RequirePackage{bibentry}

\RequirePackage{tabularx}
\RequirePackage{booktabs}

\RequirePackage{ragged2e}

\RequirePackage[a4paper,left=3.5cm,right=3.5cm,top=2.5cm,bottom=2.5cm,includehead]{geometry}

\RequirePackage{setspace}

% page style
\RequirePackage[automark]{scrlayer-scrpage}
\KOMAoptions{onpsinit={\setstretch{1}}}%ausgleich zu setspace
\chead{}
\ohead[\leftmark]{\leftmark}

% commands for the title page
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
\newcommand{\getFirstReviewer}{}
\newcommand{\getSecondReviewer}{}
\newcommand{\getAdvisor}{}
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
\newcommand{\studSubject}[1]{\renewcommand{\getStudSubject}{#1}}
\newcommand{\firstReviewer}[1]{\renewcommand{\getFirstReviewer}{#1}}
\newcommand{\secondReviewer}[1]{\renewcommand{\getSecondReviewer}{#1}}
\newcommand{\advisor}[1]{\renewcommand{\getAdvisor}{#1}}
\newcommand{\institute}[1]{\renewcommand{\getInstitute}{#1}}
\newcommand{\defaultStretch}{\setstretch{1.5}}

\newcommand{\signature}{\@ifstar\mi@signaturestar\mi@signature}
\newcommand*{\SignatureBox}[2][5cm]{\parbox[t]{#1}{\centering\rule{\linewidth}{.3pt}\\\makebox[0pt][c]{#2}}}

% language-specific title page commands
\ifcurrentbaselanguage{German}{
\newcommand{\getTitle}{kein Titel}
\newcommand{\getAuthor}{unbekannter Author}
\newcommand{\getCourse}{kein Kurs}
\newcommand{\getSemester}{SS 12}
\newcommand{\getDozent}{Kein Dozent}
\newcommand{\getStudSubject}{Medieninformatik}
\newcommand{\bachelor}{\renewcommand{\getWorkType}{Bachelorarbeit}}
\newcommand{\master}{\renewcommand{\getWorkType}{Masterarbeit}}
\newcommand{\getInstitute}{Institut für Information und Medien, Sprache und Kultur (I:IMSK)}
\newcommand{\mi@signature}{\par\vspace{1.5cm}\noindent Regensburg, \getDateHandedIn\hfill\SignatureBox{Unterschrift}\\\strut}
\newcommand{\mi@signaturestar}{\par\vspace{1.5cm}\noindent\SignatureBox{Ort, Datum}\hfill\SignatureBox{Unterschrift}\\\strut}
}

\ifcurrentbaselanguage{English}{
\newcommand{\getTitle}{no title}
\newcommand{\getAuthor}{unknown Author}
\newcommand{\getCourse}{no course}
\newcommand{\getSemester}{SS 12}
\newcommand{\getDozent}{no instructor}
\newcommand{\getStudSubject}{Media Informatics}
\newcommand{\bachelor}{\renewcommand{\getWorkType}{Bachelor's Thesis}}
\newcommand{\master}{\renewcommand{\getWorkType}{Master's Thesis}}
\newcommand{\getInstitute}{Institute for Information and Media, Language and Culture (I:IMSK)}
\newcommand{\mi@signature}{\par\vspace{1.5cm}\noindent Regensburg, \getDateHandedIn\hfill\SignatureBox{Signature}\\\strut}
\newcommand{\mi@signaturestar}{\par\vspace{1.5cm}\noindent\SignatureBox{Place, Date}\hfill\SignatureBox{Signature}\\\strut}
}

% set PDF metadata
\AtBeginDocument{
	\hypersetup{pdfinfo={
			Title={\getTitle},
			Author={\getAuthor},
			Subject={\getCourse},
			Keywords={\getKeywords}
	}}
}

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

% remove dot after figure number
\renewcommand*{\figureformat}{%
  \figurename~\thefigure%
}

% lower line spacing for lists
\usepackage{enumitem}
\setlist[itemize]{noitemsep}
\setlist[enumerate]{noitemsep}
\setlist[description]{noitemsep}

% create index
\usepackage{imakeidx}

\ifcurrentbaselanguage{German}{
\makeindex[columns=2, intoc, title=Stichwortverzeichnis, options=-s indexstyle]
}

\ifcurrentbaselanguage{English}{
\makeindex[columns=2, intoc, title=Index, options=-s indexstyle]
}

% fonts for section headings
\setkomafont{disposition}{\bfseries}

\RequirePackage{mi-colors}
\RequirePackage{listings}
\RequirePackage{mi-language-processing}
\RequirePackage{mi-language-javascript}
\RequirePackage{mi-language-python}
\RequirePackage{mi-language-latex}
\usepackage[format=plain]{caption}
\usepackage{chngcntr}

\ifcurrentbaselanguage{German}{
\renewcommand{\lstlistingname}{Codebeispiel}
\renewcommand{\lstlistlistingname}{Quellcodeverzeichnis}
}

\ifcurrentbaselanguage{English}{
\renewcommand{\lstlistlistingname}{List of Listings}
}

\lstloadlanguages{Python}
\lstset{
	language=Python,   % default language
    aboveskip=0.6cm,
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

\if@thesis
\RequirePackage{mi-thesis}
\fi
\if@seminar
\RequirePackage{mi-seminar}
\fi

\endinput
