%% TEMPLETE WRITER: SAY OL  %%
%% EMAIL: say_ol@yahoo.com  %%
%% WEBSITE: khtug.blogspot.com  %%
%% PERSONAL BLOG: bunnybookshelf.blogspot.com  %%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{diamond}[2018/09/08]
\LoadClassWithOptions{book}
% geometry
\RequirePackage{geometry}
\geometry{%
	left=1.5cm,%
	right=1.5cm,%
	top=2cm,%
	bottom=2cm,%
	bindingoffset=0.5cm}
% math font
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{amsthm}
\RequirePackage{mathtools}
\RequirePackage{newpxmath}
% language
\RequirePackage[no-math]{fontspec}% no math font
\setmainfont[Ligatures=TeX,AutoFakeBold=0.5,AutoFakeSlant=0.25]{Khmer OS Battambang}% roman font
\setsansfont[Ligatures=TeX,AutoFakeBold=0,AutoFakeSlant=0.25]{Khmer OS Muol}% sans serif font
\setmonofont[Ligatures=TeX,AutoFakeBold=0.5,AutoFakeSlant=0.25]{Khmer OS Bokor}% typewriter font
\XeTeXlinebreaklocale "km"% line break rule
\XeTeXlinebreakskip = 0pt plus 1pt minus 0.5pt% line break skip
% khmer number
\def\khmer#1{\expandafter\@khmer\csname c@#1\endcsname}
\def\@khmer#1{\expandafter\@@khmer\number#1\@nil}
\def\@@khmer#1{%
	\ifx#1\@nil% terminate when encounter @nil
	\else%
	  \ifcase#1 ០\or ១\or ២\or ៣\or ៤\or ៥\or ៦\or ៧\or ៨\or ៩\fi%
	  \expandafter\@@khmer% recursively map the following characters
	\fi}
\def\khmernumeral#1{\@@khmer#1\@nil}
% khmer alphabet
\def\alpkh#1{\expandafter\@alpkh\csname c@#1\endcsname}
\def\@alpkh#1{%
	\ifcase#1% zero -> none
	  \or ក\or ខ\or គ\or ឃ\or ង%
	  \or ច\or ឆ\or ជ\or ឈ\or ញ%
	  \or ដ\or ឋ\or ឌ\or ឍ\or ណ%
	  \or ត\or ថ\or ទ\or ធ\or ន%
	  \or ប\or ផ\or ព\or ភ\or ម%
	  \or យ\or រ\or ល\or វ\or ស%
	  \or ហ\or ឡ\or អ%
	\else%
	  \@ctrerr% otherwise, counter error!
	\fi}
%
\def\khmershortdate{%
	\ifnum\day<10\@khmer{0\day}\else\@khmer\day\fi%
	/\@khmer\month%
	/\@khmer\year}
\def\khmerdate{%
	\ifnum\day<10\@khmer{0\day}\else\@khmer\day\fi~%
	\ifcase\month\or%
	មករា\or%
	កុម្ភៈ\or%
	មិនា\or%
	មេសា\or%
	ឧសភា\or%
	មិថុនា\or%
	កក្កដា\or%
	សីហា\or%
	កញ្ញា\or%
	តុលា\or%
	វិច្ឆិកា\or%
	ធ្នូ\fi~%
	\@khmer\year}
% color
\RequirePackage[table]{xcolor}
\DeclareOption{black}{\colorlet{diamond}{black}}
\DeclareOption{blue}{\colorlet{diamond}{blue}}
\DeclareOption{brown}{\colorlet{diamond}{brown}}
\DeclareOption{cyan}{\colorlet{diamond}{cyan}}
\DeclareOption{darkgray}{\colorlet{diamond}{darkgray}}
\DeclareOption{gray}{\colorlet{diamond}{gray}}
\DeclareOption{green}{\colorlet{diamond}{green}}
\DeclareOption{gray}{\colorlet{diamond}{gray}}
\DeclareOption{lime}{\colorlet{diamond}{lime}}
\DeclareOption{magenta}{\colorlet{diamond}{magenta}}
\DeclareOption{olive}{\colorlet{diamond}{olive}}
\DeclareOption{orange}{\colorlet{diamond}{orange}}
\DeclareOption{pink}{\colorlet{diamond}{pink}}
\DeclareOption{purple}{\colorlet{diamond}{purple}}
\DeclareOption{red}{\colorlet{diamond}{red}}
\DeclareOption{teal}{\colorlet{diamond}{teal}}
\DeclareOption{violet}{\colorlet{diamond}{violet}}
\DeclareOption{yellow}{\colorlet{diamond}{yellow!45!red}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ExecuteOptions{blue}
\ProcessOptions\relax
% floating object
\RequirePackage{float}
% graphic
\RequirePackage{graphicx}
% table
\RequirePackage{colortbl}
\arrayrulecolor{diamond}
% picture
\RequirePackage{tikz}
\usetikzlibrary{calc}
\usetikzlibrary{angles}
\usetikzlibrary{quotes}
\usetikzlibrary{arrows.meta}
\tikzset{%
	every picture/.style={%
		line width=1pt,%
		fill=diamond,%
		draw=diamond,%
		text=diamond,%
	},%
	>={Stealth[length=6pt,inset=2pt]}%
}
% 3d vector
\tikzset{%
	axis/.style={->,color=blue},
	vector/.style={->,color=black},
	vector guide/.style={densely dashed,color=blue}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% sections format
\def\thepart{\alpkh{part}}
\def\thechapter{\khmer{chapter}}
\def\thesection{\thechapter.\khmer{section}}
\def\thesubsection{\thesection.\khmer{subsection}}
\def\thefigure{\thechapter.\khmer{figure}}
\def\thetable{\thechapter.\khmer{table}}
\def\theequation{\arabic{equation}}
\def\thepage{\textsf{\khmer{page}}}
\def\@seccntformat#1{\begingroup\color{diamond}\sffamily\bfseries\csname the#1\endcsname.\endgroup~}
\def\@secttlformat#1{\begingroup\color{diamond}\sffamily\bfseries#1\endgroup}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% table of contents
% part
\def\l@part#1#2{%
	\ifnum \c@tocdepth >-2\relax
	\addpenalty{-\@highpenalty}%
	\addvspace{1em \@plus\p@}%
	\setlength\@tempdima{3em}%
	\begingroup
	\parindent \z@ \rightskip \@pnumwidth
	\parfillskip -\@pnumwidth
	{\leavevmode
		\large \color{diamond}\sffamily\partname~#1\hfil \hb@xt@\@pnumwidth{\hss #2}}\par
	\nobreak
	\global\@nobreaktrue
	\everypar{\global\@nobreakfalse\everypar{}}%
	\endgroup
	\fi}
% chapter
\def\l@chapter#1#2{%
	\ifnum \c@tocdepth >\m@ne
		\addpenalty{-\@highpenalty}%
		\vskip 1.0em \@plus\p@
		\setlength\@tempdima{2em}%
		\begingroup
			\parindent \z@ \rightskip \@pnumwidth
			\parfillskip -\@pnumwidth
			\leavevmode \sffamily\color{diamond}
			\advance\leftskip\@tempdima
			\hskip -\leftskip
			\chaptername~#1\nobreak\hfil \nobreak\hb@xt@\@pnumwidth{\hss\color{diamond}#2}\par
			\penalty\@highpenalty
		\endgroup
	\fi}
% section
\renewcommand*\l@section{\@dottedtocline{1}{3.75em}{3.25em}}
\def\@pnumwidth{3em}
\def\@dottedtocline#1#2#3#4#5{%
	\ifnum #1>\c@tocdepth \else
	\vskip \z@ \@plus.2\p@
	{\leftskip #2\relax \rightskip \@tocrmarg \parfillskip -\rightskip
		\parindent #2\relax\@afterindenttrue
		\interlinepenalty\@M
		\leavevmode
		\@tempdima #3\relax
		\advance\leftskip \@tempdima \null\nobreak\hskip -\leftskip
		\color{diamond}\sffamily #4\nobreak
		\leaders\hbox{$\m@th
			\mkern \@dotsep mu\hbox{.}\mkern \@dotsep
			mu$}\hfill
		\nobreak
		\hb@xt@\@pnumwidth{\hfil #5}%
		\par}%
	\fi}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% part
\def\@part[#1]#2{%
	\ifnum \c@secnumdepth >-2\relax
	\refstepcounter{part}%
	\addcontentsline{toc}{part}{\thepart\hspace{1em}#1}%
	\else
	\addcontentsline{toc}{part}{#1}%
	\fi
	\markboth{}{}%
	{\centering
		\interlinepenalty \@M
		\sffamily
		\ifnum \c@secnumdepth >-2\relax
		\huge\color{diamond} \partname\nobreakspace\thepart
		\par
		\vskip 20\p@
		\fi
		\Huge  #2\par}%
	\@endpart}
\def\@spart#1{%
	{\centering
		\interlinepenalty \@M
		\sffamily
		\Huge \color{diamond} #1\par}%
	\@endpart}
% chapter
% \RequirePackage{tikz}
\def\@makechapterhead#1{%
	{\if@twocolumn\vspace*{2.5ex}\else\relax\fi%
		\parindent\z@\raggedright%
		\ifnum\c@secnumdepth>\m@ne%
		%
		\begin{tikzpicture}[overlay]
		\node[right,inner sep=4ex,minimum height=10ex,font=\sffamily](chaptercounter)at(0,0){\scalebox{2}{\thechapter}};
		\draw[line width=1ex](chaptercounter.north)--(chaptercounter.east)--(chaptercounter.south)--(chaptercounter.west)--cycle;
		\coordinate(rightmargin)at(\linewidth,0);
		\draw[line width=1ex](chaptercounter.south)--(chaptercounter.south-|rightmargin);
		\node[right=2ex,font=\sffamily]at(chaptercounter.east){\scalebox{2}{#1}};
		\end{tikzpicture}}%
	%
	\fi\@@par\nobreak\vskip9ex}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% chapter star
\def\@makeschapterhead#1{%
	{\if@twocolumn\vspace*{2.5ex}\else\relax\fi%
		\parindent\z@\raggedright%
		\ifnum\c@secnumdepth>\m@ne%
		%
		\begin{tikzpicture}[overlay]
		\node[right,inner sep=4ex,minimum height=10ex,font=\sffamily](chaptercounter)at(0,0){\scalebox{2}{\phantom{២}}};
		\draw[line width=1ex](chaptercounter.north)--(chaptercounter.east)--(chaptercounter.south)--(chaptercounter.west)--cycle;
		\coordinate(rightmargin)at(\linewidth,0);
		\draw[line width=1ex](chaptercounter.south)--(chaptercounter.south-|rightmargin);
		\node[right=2ex,font=\sffamily]at(chaptercounter.east){\scalebox{2}{#1}};
		\end{tikzpicture}}%
	%
	\fi\@@par\nobreak\vskip9ex}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% section spacing
\long\def\section{%
	\@startsection{section}{1}{\z@}{%
		-1.5ex\@plus-.2ex\@minus-.2ex}{%
		1.5ex\@plus.2ex\@minus.2ex}{\normalfont\bfseries}}
\long\def\subsection{%
	\@startsection{subsection}{2}{\z@}{%
		-1.5ex\@plus-.2ex\@minus-.2ex}{%
		1.5ex\@plus.2ex\@minus.2ex}{\normalfont\bfseries}}
\long\def\subsubsection{%
	\@startsection{subsubsection}{3}{\z@}{%
		-1.5ex\@plus-.2ex\@minus-.2ex}{%
		1.5ex\@plus.2ex\@minus.2ex}{\normalfont\bfseries}}
\long\def\paragraph{%
	\@startsection{paragraph}{4}{\z@}{%
		1.5ex\@plus.2ex\@minus.2ex}{-1em}{\normalfont\bfseries}}
\long\def\subparagraph{%
	\@startsection{subparagraph}{4}{\parindent}{%
		1.5ex\@plus.2ex\@minus.2ex}{-1em}{\normalfont\bfseries}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% section drawing
% \RequirePackage{tikz}
\def\@sect#1#2#3#4#5#6[#7]#8{%
	\ifnum #2>\c@secnumdepth
		\let\@svsec\@empty
	\else
		\refstepcounter{#1}%
		\protected@edef\@svsec{\@seccntformat{#1}\relax}%
	\fi
	\@tempskipa #5\relax
	\ifdim \@tempskipa>\z@
		\begingroup
		#6{%
			\vskip1ex\noindent%
			\@svsec\@secttlformat{#8}
			\@@par\nobreak\vskip1ex}%
		\endgroup
		\csname #1mark\endcsname{#7}%
		\addcontentsline{toc}{#1}{%
			\ifnum #2>\c@secnumdepth \else
				\protect\numberline{\csname the#1\endcsname}%
			\fi
			#7}%
	\else
		\def\@svsechd{%
			#6{\hskip #3\relax
				\@svsec #8}%
			\csname #1mark\endcsname{#7}%
			\addcontentsline{toc}{#1}{%
				\ifnum #2>\c@secnumdepth \else
					\protect\numberline{\csname the#1\endcsname}%
				\fi
				#7}}%
	\fi
	\@xsect{#5}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% section star
% \RequirePackage{tikz}
\def\@ssect#1#2#3#4#5{%
	\@tempskipa #3\relax
	\ifdim \@tempskipa>\z@
		\begingroup
		#4{%
			\noindent%
			\begin{tikzpicture}[overlay]%
				\node[right,draw=diamond,line width=.7pt,rounded corners,minimum height=3ex,inner xsep=1ex,inner ysep=.5ex](sectbox)at(0,0){\@secttlformat{#5}};%
				\draw[draw=diamond,line width=.7pt](sectbox.east)--(\linewidth,0);%
			\end{tikzpicture}%
			\@@par\nobreak\vskip1ex}%
		\endgroup
	\else
		\def\@svsechd{#4{\hskip #1\relax #5}}%
	\fi
	\@xsect{#3}}
% reference
\RequirePackage{hyperref}
\hypersetup{%
	linktoc=all,%
	bookmarksnumbered,%
	bookmarksopen,%
	hidelinks}
\RequirePackage{bookmark}
\bookmarksetup{
	addtohook={%
		\ifnum\bookmarkget{level}=0%
		\bookmarksetup{color=red}%
		\fi%
		\ifnum\bookmarkget{level}=1%
		\bookmarksetup{color=blue}%
		\fi%
		\ifnum\bookmarkget{level}=2%
		\bookmarksetup{color=teal}%
		\fi}}
% enumerate
\RequirePackage[inline]{enumitem}
\RequirePackage{multicol}
\RequirePackage{pifont}
% set enumerate and itemize key for number of columns
% \RequirePackage{multicol}
\SetEnumitemKey{2}{before=\raggedcolumns\setlength{\multicolsep}{\topsep}\begin{multicols}{2},after=\end{multicols}}
\SetEnumitemKey{3}{before=\raggedcolumns\setlength{\multicolsep}{\topsep}\begin{multicols}{3},after=\end{multicols}}
\SetEnumitemKey{4}{before=\raggedcolumns\setlength{\multicolsep}{\topsep}\begin{multicols}{4},after=\end{multicols}}
\SetEnumitemKey{5}{before=\raggedcolumns\setlength{\multicolsep}{\topsep}\begin{multicols}{5},after=\end{multicols}}
\SetEnumitemKey{6}{before=\raggedcolumns\setlength{\multicolsep}{\topsep}\begin{multicols}{6},after=\end{multicols}}
%% set enumerate and itemize key for numerals
%\AddEnumerateCounter{\alpkh}{\@alpkh}{\char"1788}
%\AddEnumerateCounter{\khmer}{\@khmer}{\char"17e3}
\AddEnumerateCounter{\alpkh}{\@alpkh}{ឈ}
\AddEnumerateCounter{\khmer}{\@khmer}{៣}
% enumerate keys
\SetEnumitemKey{1}{label=\protect\color{diamond}\protect\ttfamily\arabic*.}
\SetEnumitemKey{a}{label=\protect\color{diamond}\protect\ttfamily\alph*.}
\SetEnumitemKey{A}{label=\protect\color{diamond}\protect\ttfamily\Alph*.}
\SetEnumitemKey{i}{label=\protect\color{diamond}\protect\ttfamily\roman*.}
\SetEnumitemKey{I}{label=\protect\color{diamond}\protect\ttfamily\Roman*.}
\SetEnumitemKey{k}{label=\protect\color{diamond}\protect\ttfamily\alpkh*.}
\SetEnumitemKey{m}{label=\protect\color{diamond}\protect\ttfamily\khmer*.}
% itemize keys
\SetEnumitemKey{b}{label=\protect\color{diamond}\protect\ensuremath{\bullet}}
\SetEnumitemKey{c}{label=\protect\color{diamond}\protect\ensuremath{\circ}}
\SetEnumitemKey{d}{label=\protect\color{diamond}\protect\ensuremath{\diamond}}
\SetEnumitemKey{t}{label=\protect\color{diamond}\protect\ensuremath{\triangleright}}
\SetEnumitemKey{p}{label=\protect\color{diamond}\protect\ding{43}}
\SetEnumitemKey{w}{label=\protect\color{diamond}\protect\ding{45}}
% styling enumerate
\setlist[enumerate]{%
	parsep=0pt,%
	topsep=1ex,%
	partopsep=0pt,%
	leftmargin=*,%
	itemsep=.5ex,%
	labelsep=0.5ex}
\setlist[enumerate,1]{m}
\setlist[enumerate,2]{k}
\setlist[enumerate,3]{a}
\setlist[enumerate,4]{i}
% styling itemize
\setlist[itemize]{%
	parsep=0pt,%
	topsep=1ex,%
	partopsep=0pt,%
	leftmargin=*,%
	itemsep=.5ex,%
	labelsep=.5ex}
\setlist[itemize,1]{b}
\setlist[itemize,2]{c}
\setlist[itemize,3]{d}
\setlist[itemize,4]{t}
% sub enumerate
\RequirePackage{tasks}
\NewPatternFormat{k}{\@alpkh}% cntformats package
\NewPatternFormat{m}{\@khmer}% counter-format=tsk[l]
\settasks{%
	counter-format=tsk[k].,%
	label-format=\color{diamond}\ttfamily,%
	label-offset=0.5ex,%
	label-align=right,%
	label-width=3ex,%
	item-indent=3.5ex,%
	column-sep=2ex,%
	before-skip=0ex,%
	after-skip=0ex,%
	after-item-skip=0.5ex%
}
\NewTasks[%
	style=enumerate,%
	counter-format=tsk[k].,%
	label-format=\color{diamond}\ttfamily,%
	label-offset=0.5ex,%
	label-align=right,%
	label-width=3ex,%
	item-indent=3.5ex,%
	column-sep=2ex,%
	before-skip=0ex,%
	after-skip=0ex,%
	after-item-skip=0.5ex]{Enumerate}[\item]
\NewTasks[%
	style=itemize,
	label=\ensuremath{\bullet},
	label-format=\color{diamond},%
	label-offset=0.5ex,%
	label-align=right,%
	label-width=1ex,%
	item-indent=1.5ex,%
	column-sep=2ex,%
	after-item-skip=0.5ex]{Itemize}[\item]
% caption
\RequirePackage{caption}
\RequirePackage{subcaption}
\DeclareCaptionFont{diamond}{\color{diamond}}
\captionsetup{%
	font=small,%
	skip=0pt,%
	labelfont={diamond,tt},%
	textfont={diamond,tt},%
	labelsep=period}
\captionsetup[sub]{%
	font=small,%
	skip=0.5ex,%
	labelfont={diamond,tt},%
	textfont={diamond,tt},%
	labelsep=period}
%% name macro %%
\def\partname{ផ្នែក}
\def\chaptername{មេរៀន}
\def\contentsname{មាតិកា}
\def\appendixname{បន្ថែម}
\def\listtablename{បញ្ជីតារាង}
\def\listfigurename{បញ្ជីរូភាព}
\def\tablename{តារាង}
\def\figurename{រូប}
\def\bibname{គន្ថនិទ្ទេស}
\def\refname{ឯកសារយោង}
\def\abstractname{សង្ខេប}
% theorem name maro
\def\lemmaname{បទគន្លិះ}
\def\theoremname{ទ្រឹស្ដីបទ}
\def\corollaryname{វិបាក}
\def\propositionname{លក្ខណៈ}
\def\definitionname{និយមន័យ}
\def\examplename{ឧទាហរណ៍}
\def\exercisename{លំហាត់}
\def\answername{ចម្លើយ}
\def\remarkname{សម្គាល់}
\def\practicename{ប្រតិបត្តិ}
\def\formulaname{រូបមន្ត}
\def\proofname{សម្រាយ}
\def\explanationname{ពន្យល់}
\allowdisplaybreaks
%% theorem with counter %%
\theoremstyle{definition}
\newtheorem{lemma}{\lemmaname}
\newtheorem{theorem}{\theoremname}
\newtheorem{corollary}{\corollaryname}
\newtheorem{proposition}{\propositionname}
\newtheorem{definition}{\definitionname}
\newtheorem{example}{\examplename}
\newtheorem{exercise}{\exercisename}
\newtheorem{practice}{\practicename}
\newtheorem{formula}{\formulaname}
\theoremstyle{remark}
\newtheorem{remark}{\remarkname}
\renewcommand*{\thelemma}{\khmer{lemma}}
\renewcommand*{\thetheorem}{\khmer{theorem}}
\renewcommand*{\thecorollary}{\khmer{corollary}}
\renewcommand*{\theproposition}{\khmer{proposition}}
\renewcommand*{\thedefinition}{\khmer{definition}}
\renewcommand*{\theexample}{\khmer{example}}
\renewcommand*{\theexercise}{\khmer{exercise}}
\renewcommand*{\thepractice}{\khmer{practice}}
\renewcommand*{\theformula}{\khmer{formula}}
\renewcommand*{\theremark}{\khmer{remark}}
%% theorem without counter %%
\theoremstyle{definition}
\newtheorem*{lemma*}{\lemmaname}
\newtheorem*{theorem*}{\theoremname}
\newtheorem*{corollary*}{\corollaryname}
\newtheorem*{proposition*}{\propositionname}
\newtheorem*{definition*}{\definitionname}
\newtheorem*{example*}{\examplename}
\newtheorem*{exercise*}{\exercisename}
\newtheorem*{practice*}{\practicename}
\newtheorem*{formula*}{\formulaname}
\newtheorem*{answer}{\answername}
\theoremstyle{remark}
\newtheorem*{remark*}{\remarkname}
\newtheorem*{explanation}{\explanationname}
%% change label color %%
\thm@headfont{\color{diamond}\ttfamily}
\def\th@remark{%
	\thm@headfont{\color{diamond}\ttfamily}%
	\normalfont % body font
	\thm@preskip\topsep \divide\thm@preskip\tw@
	\thm@postskip\thm@preskip
}
%% re-define proof environment %%
\renewenvironment{proof}[1][\color{diamond}\ttfamily\proofname]{\par
	\pushQED{\qed}%
	\normalfont \topsep6\p@\@plus6\p@\relax
	\trivlist
	\item[\hskip\labelsep
	\color{diamond}\ttfamily
	#1\@addpunct{.}]\ignorespaces
}{%
	\popQED\endtrivlist\@endpefalse
}
%% re-define quite easy done symbol %%
\def\qedsymbol{\textcolor{diamond}{\ensuremath{\blacksquare}}}
%% paint color for bibiography counter %%
\def\@biblabel#1{\textcolor{diamond}{[#1]}}
%% footnote %%
\def\footnoterule{\kern -3pt\textcolor{diamond}{\hrule width \linewidth height 0.4pt}\kern 2.6pt}
\def\thefootnote{\color{diamond}\ttfamily(\arabic{footnote})}
%% change every inline maths to display maths %%
\everymath{\displaystyle}
%% increase base line skip in display formula
\addtolength{\jot}{1pt}
%% prevent book contents from vertical stretching %%
\raggedbottom
%%\tikz[baseline]\node[rounded corners,draw=diamond,line width=1pt,inner sep=1ex](page){\parbox{5ex}{\centering\ttfamily\thepage}};
%%\tikz\node[rounded corners,draw=diamond,line width=1pt,inner sep=1ex]{\parbox{5ex}{\centering\ttfamily\thepage}};
\def\preparelabel{លំហាត់បន្ថែមដោយ}
\def\preparename{អូល សាយ}
\def\ps@plain{%
	\let\@oddhead\@empty%
	\let\@evenhead\@oddhead%
	\def\@oddfoot{%
		\scriptsize\textcolor{diamond!89!white}{\footnotesize\itshape\preparelabel~\preparename}%វាយអត្ថបទដោយ អូល សាយ
		\hfil{\Large\color{diamond}\sffamily\thepage}%
		\hfil\textcolor{diamond!89!white}{\footnotesize\itshape វិទ្យាស្ថានគរុកោសល្យរាជធានីភ្នំពេញ}}%
	\def\@evenfoot{%
		\scriptsize\textcolor{diamond!89!white}{\footnotesize\itshape វិទ្យាស្ថានគរុកោសល្យរាជធានីភ្នំពេញ}%
		\hfil{\Large\color{diamond}\sffamily\thepage}%
		\hfil\scriptsize\textcolor{diamond!89!white}{\footnotesize\itshape\preparelabel~\preparename}%
		}%
	}
%
\def\ps@diamond{%
	\def\@oddhead{%
		\textcolor{diamond!89!white}{\footnotesize\itshape \leftmark}%
		\hfil\textcolor{diamond!89!white}{\footnotesize\itshape \rightmark}}%
	\def\@evenhead{%
		\textcolor{diamond!89!white}{\footnotesize\itshape \rightmark}%
		\hfil\textcolor{diamond!89!white}{\footnotesize\itshape \leftmark}}%
	\def\@oddfoot{%
		\scriptsize\textcolor{diamond!89!white}{\footnotesize\itshape\preparelabel~\preparename}%
		\hfil{\Large\color{diamond}\sffamily\thepage}%
		\hfil\textcolor{diamond!89!white}{\footnotesize\itshape វិទ្យាស្ថានគរុកោសល្យរាជធានីភ្នំពេញ}}%
	\def\@evenfoot{%
		\scriptsize\textcolor{diamond!89!white}{\footnotesize\itshape វិទ្យាស្ថានគរុកោសល្យរាជធានីភ្នំពេញ}%
		\hfil{\Large\color{diamond}\sffamily\thepage}%
		\hfil\scriptsize\textcolor{diamond!89!white}{\footnotesize\itshape\preparelabel~\preparename}%
	}%
}
%
\pagestyle{diamond}
%
\def\arraystretch{1.25}
%
\def\baselinestretch{1.2}
\def\setminus{\ensuremath{{}-{}}}
%
\RequirePackage{cancel}
\def\CancelColor{\color{diamond}}
%
\RequirePackage{tkz-tab}
\tikzset{%
	t style/.style={draw=diamond},%
	h style/.style={pattern = north east lines,pattern color =diamond},%
	double style/.append style={draw=diamond},%
	arrow style/.style={->,draw=diamond},%
	from style/.append style={draw=diamond}}
\def\tkzTabDefaultLineWidth{1pt}
\RequirePackage{tkz-euclide}
\usetkzobj{all}
%
\endinput