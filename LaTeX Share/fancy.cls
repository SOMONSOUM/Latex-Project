%% TEMPLETE WRITER: SAY OL  %%
%% EMAIL: say_ol@yahoo.com  %%
%% WEBSITE: khtug.blogspot.com  %%
%% PERSONAL BLOG: bunnybookshelf.blogspot.com  %%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{fancy}[2019/02/04]
\LoadClassWithOptions{book}
% geometry
\RequirePackage{geometry}
\geometry{%
	left=1cm,%
	right=1cm,%
	top=1.5cm,%
	bottom=1.5cm,%
	bindingoffset=0.8cm}
% math font
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{amsthm}
\RequirePackage{mathtools}
\RequirePackage{newpxmath}
% language
\RequirePackage[no-math]{fontspec}% no math font
\setmainfont[Ligatures=TeX,AutoFakeBold=0.5,AutoFakeSlant=0.25]{Kantumruy}% roman font
\setsansfont[Ligatures=TeX,AutoFakeBold=0,AutoFakeSlant=0.25]{Khmer OS Bokor}% sans serif font
\setmonofont[Ligatures=TeX,AutoFakeBold=0.5,AutoFakeSlant=0.25]{Khmer OS Content}% typewriter font
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
\DeclareOption{black}{\colorlet{fancy}{black}}
\DeclareOption{blue}{\colorlet{fancy}{blue}}
\DeclareOption{brown}{\colorlet{fancy}{brown}}
\DeclareOption{cyan}{\colorlet{fancy}{cyan}}
\DeclareOption{darkgray}{\colorlet{fancy}{darkgray}}
\DeclareOption{gray}{\colorlet{fancy}{gray}}
\DeclareOption{green}{\colorlet{fancy}{green}}
\DeclareOption{gray}{\colorlet{fancy}{gray}}
\DeclareOption{lime}{\colorlet{fancy}{lime}}
\DeclareOption{magenta}{\colorlet{fancy}{magenta}}
\DeclareOption{olive}{\colorlet{fancy}{olive}}
\DeclareOption{orange}{\colorlet{fancy}{orange}}
\DeclareOption{pink}{\colorlet{fancy}{pink}}
\DeclareOption{purple}{\colorlet{fancy}{purple}}
\DeclareOption{red}{\colorlet{fancy}{red}}
\DeclareOption{teal}{\colorlet{fancy}{teal}}
\DeclareOption{violet}{\colorlet{fancy}{violet}}
\DeclareOption{yellow}{\colorlet{fancy}{yellow!45!red}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ExecuteOptions{magenta}
\ProcessOptions\relax
% floating object
\RequirePackage{float}
% graphic
\RequirePackage{graphicx}
% table
\RequirePackage{colortbl}
\arrayrulecolor{fancy}
% picture
\RequirePackage{tikz}
\usetikzlibrary{calc}
\usetikzlibrary{angles}
\usetikzlibrary{quotes}
\usetikzlibrary{arrows.meta}
\tikzset{%
	every picture/.style={%
		line width=1pt,%
		fill=fancy,%
		draw=fancy,%
		text=blue,%
	},%
	>={Stealth[length=6pt,inset=2pt]}%
}
%
\RequirePackage[many]{tcolorbox}
\tcbset{
	breakable,
	enhanced,
	sharp corners,
	boxsep=1pt,
	attach boxed title to top left={yshift=-\tcboxedtitleheight,  yshifttext=-\baselineskip},
	boxed title style={boxsep=0pt,sharp corners}
}
\newtcolorbox{activity}[1][]{
	title={សកម្មភាព},
	colframe=green,
	colback=green!22!white,
	coltitle=black,
	boxed title style={colback=green},
	overlay unbroken and first={
		\node[below right,font=\small,color=green,text width=.8\linewidth]
		at (title.north east) {#1};
	}
}
\newtcolorbox{definition}[1][]{
	title={និយមន័យ},
	colframe=magenta,
	colback=magenta!12!white,
	boxed title style={colback=magenta},
	overlay unbroken and first={
		\node[below right,font=\small,color=magenta,text width=.8\linewidth]
		at (title.north east) {#1};
	}
}
\newtcolorbox{theorem}[1][]{
	title={ទ្រឹស្ដីបទ},
	colframe=blue,
	colback=blue!12!white,
	boxed title style={colback=blue},
	overlay unbroken and first={
		\node[below right,font=\small,color=blue,text width=.8\linewidth]
		at (title.north east) {#1};
	}
}
\newtcolorbox{example}[1][]{
	title={ឧទាហរណ៍},
	colframe=cyan,
	colback=cyan!12!white,
	boxed title style={colback=cyan},
	overlay unbroken and first={
		\node[below right,font=\small,color=cyan,text width=.8\linewidth]
		at (title.north east) {#1};
	}
}
\newtcolorbox{generality}[1][]{
	title={ជាទូទៅ},
	colframe=teal,
	colback=teal!12!white,
	boxed title style={colback=teal},
	overlay unbroken and first={
		\node[below right,font=\small,color=teal,text width=.8\linewidth]
		at (title.north east) {#1};
	}
}
\newtcolorbox{property}[1][]{
	title={លក្ខណៈ},
	colframe=teal,
	colback=teal!12!white,
	boxed title style={colback=teal},
	overlay unbroken and first={
		\node[below right,font=\small,color=teal,text width=.8\linewidth]
		at (title.north east) {#1};
	}
}
\newtcolorbox{remark}[1][]{
	title={សម្គាល់},
	colframe=yellow!50!orange,
	colback=yellow!50!orange!30,
	boxed title style={colback=yellow!50!orange},
	overlay unbroken and first={
		\node[below right,font=\small,color=red,text width=.8\linewidth]
		at (title.north east) {#1};
	}
}
\let\emph\relax
\DeclareTextFontCommand{\emph}{\color{fancy}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% sections format
\def\thechapter{\khmer{chapter}}
\def\thesection{\khmer{section}}
\def\thesubsection{\alpkh{subsection}}
\def\theequation{\arabic{equation}}
\def\thepage{\textsf{\khmer{page}}}
\def\@seccntformat#1{\begingroup\color{white}\sffamily\bfseries\csname the#1\endcsname\endgroup~}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% table of contents
% chapter
\def\l@chapter#1#2{%
	\ifnum \c@tocdepth >\m@ne
		\addpenalty{-\@highpenalty}%
		\vskip 1.0em \@plus\p@
		\setlength\@tempdima{1.5em}%
		\begingroup
			\parindent \z@ \rightskip \@pnumwidth
			\parfillskip -\@pnumwidth
			\leavevmode \bfseries
			\advance\leftskip\@tempdima
			\hskip -\leftskip
			\textcolor{fancy}{\sffamily \chaptername~#1}\nobreak\hfil \nobreak\hb@xt@\@pnumwidth{\hss\color{fancy}#2}\par
			\penalty\@highpenalty
		\endgroup
	\fi}
% section
\renewcommand*\l@section{\@dottedtocline{1}{2ex}{3ex}}
\renewcommand*\l@subsection{\@dottedtocline{1}{5ex}{3ex}}
\def\@pnumwidth{6ex}
\def\@dotsep{.25}
\def\@dottedtocline#1#2#3#4#5{%
	\ifnum #1>\c@tocdepth \else
	\vskip \z@ \@plus.2\p@
	{\leftskip #2\relax \rightskip \@tocrmarg \parfillskip -\rightskip
		\parindent #2\relax\@afterindenttrue
		\interlinepenalty\@M
		\leavevmode
		\@tempdima #3\relax
		\advance\leftskip \@tempdima \null\nobreak\hskip -\leftskip
		\color{fancy}\sffamily #4\nobreak
		\leaders\hbox{$\m@th
			\mkern \@dotsep mu\hbox{.}\mkern \@dotsep
			mu$}\hfill
		\nobreak
		\hb@xt@\@pnumwidth{\hfil\normalfont\color{fancy}#5}%
		\par}%
	\fi}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% part
\renewcommand*{\partname}{ផ្នែក}
% chapter
% \RequirePackage{tikz}
\def\@makechapterhead#1{%
	{\if@twocolumn\vspace*{2.5ex}\else\relax\fi%
		\parindent\z@\raggedright%
		\ifnum\c@secnumdepth>\m@ne%
		%
		\begin{tikzpicture}[overlay,every node/.style={font=\LARGE\sffamily}]
		\node[right,minimum height=6ex,draw=fancy,fill=fancy,text=white](chapter)at(0,0){\chaptername~\thechapter};
		\node[right,text=fancy](title)at(chapter.east){ #1};
		\draw[very thick](chapter.north west)--([xshift=\linewidth]chapter.north west);
		\end{tikzpicture}}%
	%
	\fi\@@par\nobreak\vskip5ex}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% chapter star
\def\@makeschapterhead#1{%
	{\if@twocolumn\vspace*{2.5ex}\else\relax\fi%
		\parindent\z@\raggedright%
		\ifnum\c@secnumdepth>\m@ne%
		%
		\begin{tikzpicture}[overlay,every node/.style={font=\LARGE\sffamily}]
		\node[right,minimum height=6ex,draw=fancy,fill=fancy,text=white](chapter)at(0,0){\hphantom{\chaptername}};
		\node[right,text=fancy](title)at(chapter.east){ #1};
		\draw[very thick](chapter.north west)--([xshift=\linewidth]chapter.north west);
		\end{tikzpicture}}%
	%
	\fi\@@par\nobreak\vskip5ex}
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
			\begin{tikzpicture}[overlay,every node/.style={font=\large\sffamily}]
			\node[right,minimum height=3.25ex,draw=fancy,fill=fancy,text=white](section)at(0,0){\parbox{3ex}{\centering\@svsec}};
			\node[right,text=fancy](title)at(section.east){#8};
			\draw[very thick](section.north west)--([xshift=\linewidth]section.north west);
			\end{tikzpicture}
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
			\begin{tikzpicture}[overlay,every node/.style={font=\large\sffamily}]
			\node[right,minimum height=3.25ex,draw=fancy,fill=fancy,text=white](section)at(0,0){\parbox{3ex}{\centering ?}};
			\node[right,text=fancy](title)at(section.east){#5};
			\draw(section.north west)--([xshift=\linewidth]section.north west);
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
\SetEnumitemKey{1}{label=\protect\color{fancy}\protect\sffamily\arabic*.}
\SetEnumitemKey{a}{label=\protect\color{fancy}\protect\sffamily\alph*.}
\SetEnumitemKey{A}{label=\protect\color{fancy}\protect\sffamily\Alph*.}
\SetEnumitemKey{i}{label=\protect\color{fancy}\protect\sffamily\roman*.}
\SetEnumitemKey{I}{label=\protect\color{fancy}\protect\sffamily\Roman*.}
\SetEnumitemKey{k}{label=\protect\color{fancy}\protect\sffamily\alpkh*.}
\SetEnumitemKey{m}{label=\protect\color{fancy}\protect\sffamily\khmer*.}
% itemize keys
\SetEnumitemKey{b}{label=\protect\color{fancy}\protect\ensuremath{\bullet}}
\SetEnumitemKey{c}{label=\protect\color{fancy}\protect\ensuremath{\circ}}
\SetEnumitemKey{d}{label=\protect\color{fancy}\protect\ensuremath{\diamond}}
\SetEnumitemKey{t}{label=\protect\color{fancy}\protect\ensuremath{\triangleright}}
\SetEnumitemKey{p}{label=\protect\color{fancy}\protect\ding{43}}
\SetEnumitemKey{w}{label=\protect\color{fancy}\protect\ding{45}}
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
	label-format=\color{fancy}\sffamily,%
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
	label-format=\color{fancy}\sffamily,%
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
	label-format=\color{fancy},%
	label-offset=0.5ex,%
	label-align=right,%
	label-width=1ex,%
	item-indent=1.5ex,%
	column-sep=2ex,%
	after-item-skip=0.5ex]{Itemize}[\item]
% caption
\RequirePackage{caption}
\RequirePackage{subcaption}
\renewcommand{\thefigure}{\khmer{figure}}
\renewcommand{\thetable}{\khmer{table}}
\renewcommand{\thesubtable}{\alpkh{subtable}}
\renewcommand{\thesubfigure}{\alpkh{subfigure}}
\DeclareCaptionFont{fancy}{\color{fancy}}
\captionsetup{%
	font=small,%
	skip=0pt,%
	labelfont={fancy,sf},%
	textfont={fancy,sf},%
	labelsep=period}
\captionsetup[sub]{%
	font=small,%
	skip=0.5ex,%
	labelfont={fancy,sf},%
	textfont={fancy,sf},%
	labelsep=period}
\setlength{\intextsep}{0pt}
%% name macro %%
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
\def\proofname{សម្រាយបញ្ជាក់}
\def\explanationname{ពន្យល់}
\allowdisplaybreaks
%% change label color %%
\thm@headfont{\color{fancy}\sffamily\bfseries}
\def\th@remark{%
	\thm@headfont{\color{fancy}\sffamily\bfseries}%
	\normalfont % body font
	\thm@preskip\topsep \divide\thm@preskip\tw@
	\thm@postskip\thm@preskip
}
%% re-define proof environment %%
\renewenvironment{proof}[1][\color{fancy}\itshape\sffamily\bfseries\proofname]{\par
	\pushQED{\qed}%
	\normalfont \topsep2\p@\@plus1\p@\relax
	\trivlist
	\item[\hskip\labelsep
	\color{fancy}\sffamily
	#1\@addpunct{.}]\ignorespaces
}{%
	\popQED\endtrivlist\@endpefalse
}
%% re-define quite easy done symbol %%
\def\qedsymbol{\textcolor{fancy}{\ensuremath{\blacksquare}}}
%% paint color for bibiography counter %%
\def\@biblabel#1{\textcolor{fancy}{[#1]}}
%% footnote %%
\def\footnoterule{\kern -3pt\textcolor{fancy}{\hrule width \linewidth height 0.4pt}\kern 2.6pt}
\def\thefootnote{\color{fancy}\sffamily(\arabic{footnote})}
%% change every inline maths to display maths %%
\everymath{\displaystyle}
%% increase base line skip in display formula
\addtolength{\jot}{1pt}
%% prevent book contents from vertical stretching %%
\raggedbottom
\def\preparelabel{រៀបរៀងដោយ}
\def\preparename{អូល សាយ}
\def\ps@plain{%
	\let\@oddhead\@empty%
	\let\@evenhead\@oddhead%
	\def\@oddfoot{%
		\scriptsize\textcolor{fancy!89!white}{\footnotesize\itshape\preparelabel~\preparename}%និពន្ធ និងរៀបរៀងដោយ អូល សាយ
		\hfil\tikz{\node[text=fancy]{\thepage};}%
		\hfil\textcolor{fancy!89!white}{\footnotesize\itshape វិទ្យាស្ថានគរុកោសល្យរាជធានីភ្នំពេញ}}%
	\def\@evenfoot{%
		\scriptsize\textcolor{fancy!89!white}{\footnotesize\itshape វិទ្យាស្ថានគរុកោសល្យរាជធានីភ្នំពេញ}%
		\hfil\tikz{\node[text=fancy]{\thepage};}%
		\hfil\scriptsize\textcolor{fancy!89!white}{\footnotesize\itshape\preparelabel~\preparename}%
		}%
	}
%
\def\ps@fancy{%
	\def\@oddhead{%
		\textcolor{fancy!89!white}{\footnotesize\itshape \leftmark}%
		\hfil\textcolor{fancy!89!white}{\footnotesize\itshape \rightmark}}%
	\def\@evenhead{%
		\textcolor{fancy!89!white}{\footnotesize\itshape \rightmark}%
		\hfil\textcolor{fancy!89!white}{\footnotesize\itshape \leftmark}}%
	\def\@oddfoot{%
		\scriptsize\textcolor{fancy!89!white}{\footnotesize\itshape\preparelabel~\preparename}%
		\hfil\tikz{\node[text=fancy]{\thepage};}%
		\hfil\textcolor{fancy!89!white}{\footnotesize\itshape វិទ្យាស្ថានគរុកោសល្យរាជធានីភ្នំពេញ}}%
	\def\@evenfoot{%
		\scriptsize\textcolor{fancy!89!white}{\footnotesize\itshape វិទ្យាស្ថានគរុកោសល្យរាជធានីភ្នំពេញ}%
		\hfil\tikz{\node[text=fancy]{\thepage};}%
		\hfil\scriptsize\textcolor{fancy!89!white}{\footnotesize\itshape\preparelabel~\preparename}%
	}%
}
%
\pagestyle{fancy}
%
\def\arraystretch{1.25}
%
\def\baselinestretch{1.2}
\def\setminus{\ensuremath{{}-{}}}
%
\RequirePackage{cancel}
\def\CancelColor{\color{fancy}}
%
\RequirePackage{tkz-tab}
\tikzset{%
	t style/.style={draw=fancy},%
	h style/.style={pattern = north east lines,pattern color =fancy},%
	double style/.append style={draw=fancy},%
	arrow style/.style={->,draw=fancy},%
	from style/.append style={draw=fancy}}
\def\tkzTabDefaultLineWidth{1pt}
\RequirePackage{tkz-euclide}
\usetkzobj{all}
%
\endinput