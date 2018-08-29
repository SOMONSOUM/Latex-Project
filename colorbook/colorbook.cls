%% TEMPLETE WRITER: SAY OL  %%
%% EMAIL: say_ol@yahoo.com  %%
%% WEBSITE: khtug.blogspot.com  %%
%% PERSONAL BLOG: bunnybookshelf.blogspot.com  %%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{colorbook}[2017/10/10]
\LoadClassWithOptions{book}
\RequirePackage{geometry}
\RequirePackage{xcolor}
\RequirePackage{colortbl}
\RequirePackage{longtable}
\RequirePackage{graphicx}
\RequirePackage{float}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{amsthm}
\RequirePackage{mathtools}
\RequirePackage{newpxmath}
\RequirePackage{enumitem}
\RequirePackage{multicol}
\RequirePackage{varwidth}
\RequirePackage{hyperref}
\RequirePackage{caption}
\RequirePackage{subcaption}
\RequirePackage{wrapfig}
\RequirePackage{tikz}
\RequirePackage{tcolorbox}
\RequirePackage{tasks}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%% declare package options %%%%%
%%%%% package: xcolor %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newif\if@print\@printfalse
\DeclareOption{print}{\@printtrue}
\DeclareOption{black}{\colorlet{colorbook}{black}}
\DeclareOption{blue}{\colorlet{colorbook}{blue}}
\DeclareOption{brown}{\colorlet{colorbook}{brown}}
\DeclareOption{cyan}{\colorlet{colorbook}{cyan}}
\DeclareOption{darkgray}{\colorlet{colorbook}{darkgray}}
\DeclareOption{gray}{\colorlet{colorbook}{gray}}
\DeclareOption{green}{\colorlet{colorbook}{green}}
\DeclareOption{lightgray}{\colorlet{colorbook}{lightgray}}
\DeclareOption{lime}{\colorlet{colorbook}{lime}}
\DeclareOption{magenta}{\colorlet{colorbook}{magenta}}
\DeclareOption{olive}{\colorlet{colorbook}{olive}}
\DeclareOption{orange}{\colorlet{colorbook}{orange}}
\DeclareOption{pink}{\colorlet{colorbook}{pink}}
\DeclareOption{purple}{\colorlet{colorbook}{purple}}
\DeclareOption{red}{\colorlet{colorbook}{red}}
\DeclareOption{teal}{\colorlet{colorbook}{teal}}
\DeclareOption{violet}{\colorlet{colorbook}{violet}}
\DeclareOption{yellow}{\colorlet{colorbook}{yellow}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ExecuteOptions{cyan}
\ProcessOptions\relax
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%% pre-set color box %%%%%
%%%%% package: tcolorbox %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\tcbuselibrary{skins}
\tcbuselibrary{breakable}
\tcbset{%
	colback=colorbook!7!white,%
	colframe=colorbook,%
	colbacktitle=colorbook!7!white,%
	before skip=\topskip,%
	after skip=\topskip,%
	boxrule=0.4pt,%
	breakable,%
	%
	enhanced,%
	standard jigsaw,%
	titlerule=0pt,%
	fonttitle=\color{colorbook}\bfseries\sffamily,%
	left=1ex,%
	right=1ex,%
%	bottomtitle=-0.5ex,%
	top=1ex,%
	middle=1ex,%
	bottom=1ex,%
	attach title to upper=\enspace,%
	segmentation style={solid}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%% pre-set tikz picture %%%%%
%%%%% package: tikz %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\usetikzlibrary{shapes}
\tikzset{%
	every path/.style={color=colorbook},%
	>=latex}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%% table frame color %%%%%
%%%%% package: colortbl %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\arrayrulecolor{colorbook}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%% paragraph margin %%%%%
%%%%% package: geometry %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\geometry{margin=2.5cm}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%% hyper link %%%%%
%%%%% package: hyperref %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\hypersetup{%
	linktoc=all,%
	bookmarksnumbered,%
	bookmarksopen,%
	hidelinks}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%% page style %%%%%
%%%%% package: tikz %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\ps@plain{%
	\let\@mkboth\@gobbletwo%
	\let\@oddhead\@empty%
	\let\@evenhead\@oddhead%
	\def\@oddfoot{\hfil\color{colorbook}\tikz\node[rounded rectangle,fill=colorbook!5!white,draw=colorbook,thick,inner sep=1ex]{\parbox{5ex}{\centering\bfseries\sffamily\thepage}};\hfil}%
	\let\@evenfoot\@oddfoot}
\pagestyle{plain}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%% part %%%%%
%%%%% package: xcolor %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% part with coutner %%
\def\@part[#1]#2{\ifnum \c@secnumdepth >-2\relax \refstepcounter {part}\addcontentsline
	{toc}{part}{\thepart \hspace {1em}#1}\else \addcontentsline {toc}{part}{#1}\fi
	\markboth {}{}{%
		\centering \interlinepenalty \@M \sffamily \ifnum
		\c@secnumdepth >-2\relax
		\scalebox{25}{\color{colorbook!25!white}\bfseries\arabic{part}}\par
		\vspace{\baselineskip}
		{\color{colorbook}\Huge\bfseries #2}\par
	}\@endpart}
%% part without counter %%
\def\@spart#1{{\centering \interlinepenalty \@M \color{colorbook}\sffamily \Huge \bfseries #1\par }\@endpart}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%% chapter %%%%%
%%%%% package: xcolor %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% chapter with counter %%
\def\chapterlabel{}
\def\@makechapterhead#1{%
	{\parindent \z@
		\ifnum \c@secnumdepth >\m@ne
			\if@mainmatter
				\def\chapterlabel{\thechapter.~}
			\fi
		\fi
		\if@print
			\raggedright\color{colorbook}\huge\bfseries\sffamily\chapterlabel#1
			\par\nobreak\vskip3ex
		\else
		\begin{tikzpicture}[overlay,remember picture]
		\fill[fill=colorbook!79!white](current page.north west)rectangle([yshift=-3cm]current page.north east);
		%
		\node[fill=colorbook!5!white,draw=colorbook,text=colorbook,line width=.5ex,rounded rectangle,minimum height=4em,inner sep=1em] (chapbox) at ([yshift=-3cm]current page.north) {\begin{varwidth}{\linewidth}%
			\centering\huge\bfseries\sffamily\chapterlabel#1%
			\end{varwidth}};
		\end{tikzpicture}
		\par\nobreak\vskip9ex
		\fi
	}
}
%% chapter without counter %%
\def\@makeschapterhead#1{%
	{\if@twocolumn\vspace*{2.5ex}\else\relax\fi%
		\parindent\z@\raggedright%
		\ifnum\c@secnumdepth>\m@ne%
		%
		  \if@print
		  	\raggedright\color{colorbook}\huge\bfseries\sffamily#1
		  	\par\nobreak\vskip3ex
		  \else
		  \begin{tikzpicture}[overlay,remember picture]
		  \fill[fill=colorbook!79!white](current page.north west)rectangle([yshift=-3cm]current page.north east);
		  %
		  \node[fill=colorbook!5!white,draw=colorbook,text=colorbook,line width=.5ex,rounded rectangle,minimum height=4em,inner sep=1em] (chapbox) at ([yshift=-3cm]current page.north) {\begin{varwidth}{\linewidth}%
		  	\centering\huge\bfseries\sffamily#1%
		  	\end{varwidth}};
		  \end{tikzpicture}
		  \par\nobreak\vskip9ex
		  \fi}%
	%
	\fi}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%% section, subsection, subsubsection, paragraph and subparagraph %%%%%
%%%%% package: xcolor %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\@seccntformat#1{\csname the#1\endcsname.\enspace}
\long\def\section{\@startsection{section}{1}{\z@}{-3.5ex \@plus-1ex \@minus-.2ex}{2.3ex\@plus.2ex}{\color{colorbook}\sffamily\Large\bfseries}}
\long\def\subsection{\@startsection{subsection}{2}{\z@ }{-3.25ex\@plus-1ex \@minus-.2ex}{1.5ex\@plus.2ex}{\color{colorbook}\sffamily\large\bfseries}}
\long\def\subsubsection{\@startsection {subsubsection}{3}{\z@}{-3.25ex\@plus-1ex\@minus-.2ex}{1.5ex\@plus.2ex}{\color{colorbook}\sffamily\normalsize\bfseries}}
\long\def\paragraph{\@startsection{paragraph}{4}{\z@}{3.25ex\@plus1ex\@minus.2ex}{-1em}{\color{colorbook}\sffamily\normalsize\bfseries}}
\long\def\subparagraph{\@startsection{subparagraph}{5}{\parindent}{3.25ex\@plus1ex\@minus.2ex}{-1em}{\color{colorbook}\sffamily\normalsize\bfseries}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%% list environemnt %%%%%
%%%%% package: enumitem, xcolor %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% enumerate %%
\setlist[enumerate]{leftmargin=*,labelsep=1ex,font=\bfseries\sffamily}
\setlist[enumerate,1]{label=\textcolor{colorbook}{\arabic*.}}
\setlist[enumerate,2]{label=\textcolor{colorbook}{\alph*.}}
\setlist[enumerate,3]{label=\textcolor{colorbook}{\roman*.}}
\setlist[enumerate,4]{label=\textcolor{colorbook}{\Alph*.}}
%% itemize %%
\setlist[itemize]{leftmargin=*,labelsep=1ex,font=\bfseries\sffamily}
\setlist[itemize,1]{label=\textcolor{colorbook}{\ensuremath{\bullet}}}
\setlist[itemize,2]{label=\textcolor{colorbook}{\ensuremath{\star}}}
\setlist[itemize,3]{label=\textcolor{colorbook}{\ensuremath{\circ}}}
\setlist[itemize,4]{label=\textcolor{colorbook}{\ensuremath{\ast}}}
%% description %%
\setlist[description]{font=\color{colorbook}\sffamily,labelsep=1ex}
% set enumerate and itemize key for number of columns
\setlength{\multicolsep}{\topsep}
\SetEnumitemKey{2}{before=\raggedcolumns\begin{multicols}{2},after=\end{multicols},topsep=0pt}
\SetEnumitemKey{3}{before=\raggedcolumns\begin{multicols}{3},after=\end{multicols}}
\SetEnumitemKey{4}{before=\raggedcolumns\begin{multicols}{4},after=\end{multicols},topsep=0pt}
\SetEnumitemKey{5}{before=\raggedcolumns\begin{multicols}{5},after=\end{multicols}}
\SetEnumitemKey{6}{before=\raggedcolumns\begin{multicols}{6},after=\end{multicols},topsep=0pt}
% set enumerate and itemize key for numerals
\SetEnumitemKey{1}{label=\textcolor{colorbook}{\arabic*.}}
\SetEnumitemKey{a}{label=\textcolor{colorbook}{\alph*.}}
\SetEnumitemKey{A}{label=\textcolor{colorbook}{\Alph*.}}
\SetEnumitemKey{i}{label=\textcolor{colorbook}{\roman*.}}
\SetEnumitemKey{I}{label=\textcolor{colorbook}{\Roman*.}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%% horizontal list %%%%%
%%%%% package: tasks, xcolor %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\settasks{%
	counter-format=tsk[a].,%
	label-format=\color{colorbook}\bfseries\sffamily,%
	label-offset=1ex,%
	label-align=right,%
	label-width=3ex,%
	item-indent=4ex,%
	column-sep=4ex
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%% caption and subcaption %%%%%
%%%%% package: caption, subcaption, xcolor %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\DeclareCaptionFont{colorbook}{\color{colorbook}}
\captionsetup{font=small,skip=0pt,labelfont={colorbook,bf,sf},textfont={colorbook,bf,sf},labelsep=period}
\captionsetup[sub]{font=small,skip=0pt,labelfont={colorbook,bf,sf},textfont={colorbook,bf,sf},labelsep=period}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%% table of contents %%%%%
%%%%% package: xcolor %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% part %%
\renewcommand*\l@part[2]{%
	\ifnum \c@tocdepth >-2\relax
	\addpenalty{-\@highpenalty}%
	\addvspace{2.25em \@plus\p@}%
	\setlength\@tempdima{3em}%
	\begingroup
	\parindent \z@ \rightskip \@pnumwidth
	\parfillskip -\@pnumwidth
	{\leavevmode
		\large \bfseries\color{colorbook} #1\hfil \hb@xt@\@pnumwidth{\hss #2}}\par
	\nobreak
	\global\@nobreaktrue
	\everypar{\global\@nobreakfalse\everypar{}}%
	\endgroup
	\fi}
%% chapter %%
\def\l@chapter#1#2{\ifnum\c@tocdepth>\m@ne\addpenalty{-\@highpenalty}\vskip1.0em\@plus\p@\setlength\@tempdima{1.5em}\begingroup\parindent\z@\rightskip\@pnumwidth\parfillskip-\@pnumwidth\leavevmode\bfseries\advance\leftskip\@tempdima\hskip-\leftskip\color{colorbook}#1\nobreak\hfil\nobreak\hb@xt@\@pnumwidth{\hss\color{colorbook}#2}\par\penalty\@highpenalty\endgroup\fi}
%% section %%
\def\@dottedtocline#1#2#3#4#5{\ifnum#1>\c@tocdepth\else\vskip\z@\@plus.2\p@{\leftskip#2\relax\rightskip\@tocrmarg\parfillskip-\rightskip\parindent#2\relax\@afterindenttrue\interlinepenalty\@M\leavevmode\@tempdima#3\relax\advance\leftskip\@tempdima\null\nobreak\hskip-\leftskip{\color{colorbook}#4}\nobreak\leaders\hbox{$\m@th\mkern\@dotsep mu\hbox{.}\mkern\@dotsep mu$}\hfill\nobreak\hb@xt@\@pnumwidth{\hfil\normalfont \color{colorbook}#5}\par}\fi}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%% theorem %%%%%
%%%%% package: amsthm, tcolorbox %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% name macro %%
\def\lemmaname{Lemma}
\def\theoremname{Theorem}
\def\corollaryname{Corollary}
\def\propositionname{Proposition}
\def\definitionname{Definition}
\def\examplename{Example}
\def\exercisename{Exercise}
\def\answername{Answer}
\def\remarkname{Remark}
%\def\proofname{Proof}
%% theorem with counter %%
\theoremstyle{definition}
\newtheorem{lemma}{\lemmaname}
\newtheorem{theorem}{\theoremname}
\newtheorem{corollary}{\corollaryname}
\newtheorem{proposition}{\propositionname}
\newtheorem{definition}{\definitionname}
\newtheorem{example}{\examplename}
\newtheorem{exercise}{\exercisename}
%% theorem without counter %%
\theoremstyle{definition}
\newtheorem*{lemma*}{\lemmaname}
\newtheorem*{theorem*}{\theoremname}
\newtheorem*{corollary*}{\corollaryname}
\newtheorem*{proposition*}{\propositionname}
\newtheorem*{definition*}{\definitionname}
\newtheorem*{example*}{\examplename}
\newtheorem*{exercise*}{\exercisename}
\newtheorem*{answer}{\answername}
\theoremstyle{remark}
\newtheorem*{remark}{\remarkname}
%% frame theorem %%
\tcolorboxenvironment{lemma}{}
\tcolorboxenvironment{theorem}{}
\tcolorboxenvironment{corollary}{}
\tcolorboxenvironment{proposition}{}
\tcolorboxenvironment{definition}{}
\tcolorboxenvironment{lemma*}{}
\tcolorboxenvironment{theorem*}{}
\tcolorboxenvironment{corollary*}{}
\tcolorboxenvironment{proposition*}{}
\tcolorboxenvironment{definition*}{}
%% change label color %%
\thm@headfont{\color{colorbook}\bfseries\sffamily}
\def\th@remark{%
	\thm@headfont{\color{colorbook}\bfseries\sffamily}%
	\normalfont % body font
	\thm@preskip\topsep \divide\thm@preskip\tw@
	\thm@postskip\thm@preskip
}
%% re-define proof environment %%
\renewenvironment{proof}[1][\color{colorbook}\bfseries\sffamily\proofname]{\par
	\pushQED{\qed}%
	\normalfont \topsep6\p@\@plus6\p@\relax
	\trivlist
	\item[\hskip\labelsep
	\color{colorbook}\bfseries\sffamily
	#1\@addpunct{.}]\ignorespaces
}{%
	\popQED\endtrivlist\@endpefalse
}
%% re-define quite easy done symbol %%
\def\qedsymbol{\textcolor{colorbook}{\ensuremath{\blacksquare}}}
%% paint color for bibiography counter %%
\def\@biblabel#1{\textcolor{colorbook}{[#1]}}
%% footnote %%
\def\footnoterule{\kern -3pt\textcolor{colorbook}{\hrule width \linewidth height 0.4pt}\kern 2.6pt}
\def\thefootnote{\color{colorbook}\bfseries\sffamily(\arabic{footnote})}
%% change every inline maths to display maths %%
\everymath{\displaystyle}
%% prevent book contents from vertical stretching %%
\raggedbottom
%%
\endinput