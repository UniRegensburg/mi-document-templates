% The MIT License (MIT)
%
% Copyright (c) 2016 Philipp Pascal Jean-Jacques
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

\ProvidesClass{mi-document}[2016/07/15 v2.0 mi-document]
\LoadClass[12pt,a4paper,oneside,ngerman]{scrartcl}

\usepackage[T1]{fontenc}
\usepackage{ngerman}
\usepackage{xunicode}
\usepackage{polyglossia}
\setmainlanguage[babelshorthands=true]{german}
\usepackage{xltxtra}
\usepackage{graphicx}
\usepackage[bookmarks=true,
			bookmarksnumbered=false,
			bookmarksopen=false,
			colorlinks=true,
			linkcolor=black,
			citecolor=black,
			urlcolor=black
			]{hyperref}
\usepackage{amsmath}
\usepackage{cancel}
\usepackage{mathcomp}
\usepackage{lmodern,dsfont}
\usepackage{listings}
\usepackage{color}
\usepackage{apacite}
\usepackage{setspace}
\usepackage{titlesec}
\usepackage{fancyhdr}
\usepackage{nameref}
\usepackage[round]{natbib}
\usepackage[a4paper,left=3.7cm,right=3.5cm,top=2.5cm,bottom=2.5cm]{geometry}

\usepackage{mi-colors}
\usepackage{mi-language-processing}
\usepackage{mi-language-javascript}
\usepackage{mi-language-python}
\usepackage{mi-document}
