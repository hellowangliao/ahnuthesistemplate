\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ahnuthesis}[01/13/2019 Graduate thesis template for AHNU]
\LoadClass[11pt,a4paper,oneside]{article}
\RequirePackage[colorlinks=true,urlcolor=blue,citecolor=black,hyperfootnotes=false,%
linkcolor=black]{hyperref}
\RequirePackage[UTF8,heading=true]{ctex}
\RequirePackage{xltxtra,amsmath}
\ctexset{autoindent=true}
\RequirePackage[backend=biber,style=gb7714-2015,gbpub=true]{biblatex}
\newcommand{\addmybib}[1]{%
\addbibresource{#1}
}
\defbibheading{mybibintoc}[\bibname]{\hspace{-1.8pc}\songti\textbf{#1:}%
\addcontentsline{toc}{section}{\hspace{-1.8pc}#1}}%
\defbibenvironment{mypubs}%
 {\list{}
    {\setlength{\leftmargin}{\bibhang}%
    \setlength{\itemindent}{-\leftmargin}%
     \setlength{\itemsep}{\bibitemsep}%
     \setlength{\parsep}{\bibparsep}}}
  {\endlist}
  {\item\small%
   \printtext[labelnumberwidth]{%
    \printfield{labelprefix}%
    \printfield{labelnumber}}%
    \addspace%
  }
\RequirePackage[top=2.54cm,bottom=2.54cm,left=4cm,right=3.17cm]{geometry}
\RequirePackage{fancyhdr}
\pagestyle{fancy}
\fancyhf{}
\fancyhead{}%
\renewcommand{\headrulewidth}{0pt}%
\fancyfoot{}%
\fancyfoot[C]{\thepage}%
\RequirePackage{tikz}
\newcommand*\circled[1]{%
  \tikz[baseline=(char.base)]\node[shape=circle,draw,inner sep=0.1pt,%
  font=\tiny,minimum size=7pt] (char) {#1};}
\renewcommand\thefootnote{\protect\circled{\arabic{footnote}}}
\RequirePackage{xcolor}
\setcounter{tocdepth}{4}
\setcounter{secnumdepth}{4}
\RequirePackage{titletoc}
\newcommand{\mydots}[1][$\cdot$]{\xleaders\hbox{#1}\hfill\kern0pt}
\titlecontents{section}[1.8pc]
  {\addvspace{3pt}\bfseries}%
  {\contentslabel[\large\thecontentslabel.]{1.8pc}}%
  {}
  {\hspace{1ex}\mydots\hspace{1ex}\thecontentspage}%

\titlecontents*{subsection}[1.8pc]
  {\bfseries}
  {\thecontentslabel. }
  {}
  { \hspace{1ex}\mydots\hspace{1ex}\thecontentspage}%
\makeatletter
\renewcommand{\tableofcontents}{%
{\hfill\songti\bfseries\huge 目\phantom{空空}录\phantom{望美}\hfill}%
\vspace{1cm}
\@starttoc{toc}}
\makeatother
\makeatletter
\g@addto@macro{\CTEX@section@format}{\raggedright}
\makeatother
\newcommand{\zhconclusion}{\section*{\heiti\large 结束语}%
\addcontentsline{toc}{section}{\hspace{-1.8pc}\heiti 结束语}}%
\newcommand{\chconclusion}{}
\newenvironment{chineseconclusion}{\begin{chconclusion}\zhconclusion}%
{\end{chconclusion}}
\newcommand{\csection}[1]{\section{\heiti\large #1}}
\newcommand{\csubsection}[1]{\subsection{\fangsong #1}}
\newcommand{\sanhao}{\fontsize{16pt}{16pt}\selectfont}
\renewcommand{\abstractname}{}
\RequirePackage{titlesec}
\titlelabel{\thetitle.\quad}
\titleformat*{\subsection}{\large\fangsong}
\AtBeginDocument{%
\thispagestyle{empty}
\tableofcontents
\newpage
\setcounter{page}{1}
}
\AtEndDocument{%

\phantom{empty}

\phantom{empty}

\printbibliography[heading=mybibintoc,env=mypubs,title=参考文献]}
\newcommand{\maksoanta}{}
\newenvironment{mysection}[1]{%
\begin{maksoanta}
\section*{\heiti\large #1}%
\addcontentsline{toc}{section}{\hspace{-1.8pc}\heiti #1}%
}%
{\end{maksoanta}}
%
\newcommand{\ahnutitle}[2]{%
\newcommand{\theahnutitle}{#1}
\newcommand{\ahnuetitle}{#2}
}
\newcommand{\ahnuauthor}[2]{%
\newcommand{\theahnuauthor}{#1}
\newcommand{\ahnueauthor}{#2}
}
\RequirePackage{xparse}
\NewDocumentEnvironment{ahnuabstract}{m}{%
\begin{center}
    {\heiti\sanhao\theahnutitle }\\
    \vspace{12pt}
    \theahnuauthor ， 物理与电子信息学院
    \end{center}
    \vspace{-1.2cm}
    \begin{abstract}
      \noindent{\large\heiti 摘要：}\begin{fangsong}
}{%
      \end{fangsong}
      
     \noindent{\large\heiti 关键词：}{\fangsong #1}
    \end{abstract}
    
}
%
\NewDocumentEnvironment{ahnueabstract}{m}{%
\begin{center}
    {\bfseries\sanhao\ahnuetitle }\\
    \vspace{12pt}
    \ahnueauthor,  College of Physics and ELectronic Information
    \end{center}
    \vspace{-1.2cm}
    \begin{abstract}
      \noindent{\large\bfseries Abstract:}
}{%

\noindent{\large\bfseries Keywords: }#1
\end{abstract}
}
