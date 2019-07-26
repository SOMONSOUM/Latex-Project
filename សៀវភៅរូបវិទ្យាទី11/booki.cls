%% TEMPLETE WRITER: SAY OL  %%
%% EMAIL: say_ol@yahoo.com  %%
%% WEBSITE: khtug.blogspot.com  %%
%% PERSONAL BLOG: bunnybookshelf.blogspot.com  %%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{booki}[2017/10/27]
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
\DeclareOption{black}{\colorlet{booki}{black}}
\DeclareOption{blue}{\colorlet{booki}{blue}}
\DeclareOption{brown}{\colorlet{booki}{brown}}
\DeclareOption{cyan}{\colorlet{booki}{cyan}}
\DeclareOption{darkgray}{\colorlet{booki}{darkgray}}
\DeclareOption{gray}{\colorlet{booki}{gray}}
\DeclareOption{green}{\colorlet{booki}{green}}
\DeclareOption{gray}{\colorlet{booki}{gray}}
\DeclareOption{lime}{\colorlet{booki}{lime}}
\DeclareOption{magenta}{\colorlet{booki}{magenta}}
\DeclareOption{olive}{\colorlet{booki}{olive}}
\DeclareOption{orange}{\colorlet{booki}{orange}}
\DeclareOption{pink}{\colorlet{booki}{pink}}
\DeclareOption{purple}{\colorlet{booki}{purple}}
\DeclareOption{red}{\colorlet{booki}{red}}
\DeclareOption{teal}{\colorlet{booki}{teal}}
\DeclareOption{violet}{\colorlet{booki}{violet}}
\DeclareOption{yellow}{\colorlet{booki}{yellow!45!red}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ExecuteOptions{magenta}
\ProcessOptions\relax
% floating object
\RequirePackage{float}
% graphic
\RequirePackage{graphicx}
% table
\RequirePackage{colortbl}
\arrayrulecolor{booki}
% picture
\RequirePackage{tikz}
\usetikzlibrary{calc}
\usetikzlibrary{angles}
\usetikzlibrary{quotes}
\usetikzlibrary{arrows.meta}
\tikzset{%
	every picture/.style={%
		line width=1pt,%
		fill=booki,%
		draw=booki,%
		text=blue,%
	},%
	>={Stealth[length=6pt,inset=2pt]}%
}
% boxes
\RequirePackage{tcolorbox}
\tcbuselibrary{theorems} % \tcboxmath[size=fbox]{arg}
\tcbuselibrary{skins}
\tcbuselibrary{breakable}
\tcbset{%
	enhanced,%
	standard jigsaw,%
	breakable,%
	opacityback=0,%
	colback=white,%
	colframe=booki,%
	colbacktitle=booki!7!white,%
	before skip=\topskip,%
	after skip=\topskip,%
	boxrule=1pt,%
	titlerule=0pt,%
	fonttitle=\color{booki}\sffamily\bfseries,%
	left=1ex,%
	right=1ex,%
	top=1ex,%
	middle=1ex,%
	bottom=1ex,%
	attach title to upper=\enspace,%
  highlight math style={%
  	size=fbox},%
  every box/.style={%
  	highlight math style={%
  		size=fbox,%
  		boxrule=1pt,%
  		colback=white,%
  		colframe=booki}%
  	}%
  }
\def\boxtext#1{\tcbox[nobeforeafter,tcbox raise base,size=fbox,colframe=booki,colback=white]{#1}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% sections format
\def\thechapter{\khmer{chapter}}
\def\thesection{\thechapter.\khmer{section}}
\def\thesubsection{\thesection.\khmer{subsection}}
\def\thefigure{\thechapter.\khmer{figure}}
\def\thetable{\thechapter.\khmer{table}}
\def\theequation{\arabic{equation}}
\def\thepage{\textsf{\khmer{page}}}
\def\@seccntformat#1{\begingroup\color{booki}\sffamily\bfseries\csname the#1\endcsname.\endgroup~}
\def\@secttlformat#1{\begingroup\color{booki}\sffamily\bfseries#1\endgroup}
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
			\textcolor{booki}{#1}\nobreak\hfil \nobreak\hb@xt@\@pnumwidth{\hss\color{booki}#2}\par
			\penalty\@highpenalty
		\endgroup
	\fi}
% section
\def\@dottedtocline#1#2#3#4#5{%
	\ifnum #1>\c@tocdepth \else
	\vskip \z@ \@plus.2\p@
	{\leftskip #2\relax \rightskip \@tocrmarg \parfillskip -\rightskip
		\parindent #2\relax\@afterindenttrue
		\interlinepenalty\@M
		\leavevmode
		\@tempdima #3\relax
		\advance\leftskip \@tempdima \null\nobreak\hskip -\leftskip
		{\color{booki}#4}\nobreak
		\leaders\hbox{$\m@th
			\mkern \@dotsep mu\hbox{.}\mkern \@dotsep
			mu$}\hfill
		\nobreak
		\hb@xt@\@pnumwidth{\hfil\normalfont\color{booki}#5}%
		\par}%
	\fi}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% chapter
% \RequirePackage{tikz}
\def\@makechapterhead#1{%
	{\if@twocolumn\vspace*{2.5ex}\else\relax\fi%
		\parindent\z@\raggedright%
		\ifnum\c@secnumdepth>\m@ne%
		%
		\begin{tikzpicture}[overlay]
		\node [right,draw=booki,line width=1pt,rounded corners,minimum height=7ex,inner xsep=1.5ex,inner ysep=1ex] (chapbox) at (0,0) {\color{booki}\LARGE\@seccntformat{chapter}\@secttlformat{#1}};%
		\draw[draw=booki,line width=1pt] (chapbox.east)--(\linewidth,0);%
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
		\begin{tikzpicture}[overlay]
		\node [right,draw=booki,line width=1pt,rounded corners,minimum height=7ex,inner xsep=1.5ex,inner ysep=1ex] (chapbox) at (0,0) {\color{booki}\LARGE\@secttlformat{#1}};%
		\draw[draw=booki,line width=1pt] (chapbox.east)--(\linewidth,0);%
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
			\begin{tikzpicture}[overlay]%
				\node[right,draw=booki,line width=.7pt,rounded corners,minimum height=3ex,inner xsep=1ex,inner ysep=.5ex](sectbox)at(0,0){\@svsec\@secttlformat{#8}};%
				\draw[draw=booki,line width=.7pt](sectbox.east)--(\linewidth,0);%
			\end{tikzpicture}%
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
				\node[right,draw=booki,line width=.7pt,rounded corners,minimum height=3ex,inner xsep=1ex,inner ysep=.5ex](sectbox)at(0,0){\@secttlformat{#5}};%
				\draw[draw=booki,line width=.7pt](sectbox.east)--(\linewidth,0);%
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
\SetEnumitemKey{1}{label=\protect\color{booki}\protect\sffamily\arabic*.}
\SetEnumitemKey{a}{label=\protect\color{booki}\protect\sffamily\alph*.}
\SetEnumitemKey{A}{label=\protect\color{booki}\protect\sffamily\Alph*.}
\SetEnumitemKey{i}{label=\protect\color{booki}\protect\sffamily\roman*.}
\SetEnumitemKey{I}{label=\protect\color{booki}\protect\sffamily\Roman*.}
\SetEnumitemKey{k}{label=\protect\color{booki}\protect\sffamily\alpkh*.}
\SetEnumitemKey{m}{label=\protect\color{booki}\protect\sffamily\khmer*.}
% itemize keys
\SetEnumitemKey{b}{label=\protect\color{booki}\protect\ensuremath{\bullet}}
\SetEnumitemKey{c}{label=\protect\color{booki}\protect\ensuremath{\circ}}
\SetEnumitemKey{d}{label=\protect\color{booki}\protect\ensuremath{\diamond}}
\SetEnumitemKey{t}{label=\protect\color{booki}\protect\ensuremath{\triangleright}}
\SetEnumitemKey{p}{label=\protect\color{booki}\protect\ding{43}}
\SetEnumitemKey{w}{label=\protect\color{booki}\protect\ding{45}}
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
	label-format=\color{booki}\sffamily,%
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
	label-format=\color{booki}\sffamily,%
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
	label-format=\color{booki},%
	label-offset=0.5ex,%
	label-align=right,%
	label-width=1ex,%
	item-indent=1.5ex,%
	column-sep=2ex,%
	after-item-skip=0.5ex]{Itemize}[\item]
% caption
\RequirePackage{caption}
\RequirePackage{subcaption}
\DeclareCaptionFont{booki}{\color{booki}}
\captionsetup{%
	font=small,%
	skip=0pt,%
	labelfont={booki,sf},%
	textfont={booki,sf},%
	labelsep=period}
\captionsetup[sub]{%
	font=small,%
	skip=0.5ex,%
	labelfont={booki,sf},%
	textfont={booki,sf},%
	labelsep=period}
%% name macro %%
\def\chaptername{ជំពូក}
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
%% frame theorem %%
\tcolorboxenvironment{lemma}{}
\tcolorboxenvironment{theorem}{}
\tcolorboxenvironment{corollary}{}
\tcolorboxenvironment{proposition}{}
\tcolorboxenvironment{definition}{}
%\tcolorboxenvironment{example}{}
\tcolorboxenvironment{exercise}{}
%\tcolorboxenvironment{practice}{}
\tcolorboxenvironment{formula}{}
\tcolorboxenvironment{lemma*}{}
\tcolorboxenvironment{theorem*}{}
\tcolorboxenvironment{corollary*}{}
\tcolorboxenvironment{proposition*}{}
\tcolorboxenvironment{definition*}{}
%\tcolorboxenvironment{example*}{}
\tcolorboxenvironment{exercise*}{}
%\tcolorboxenvironment{practice*}{}
\tcolorboxenvironment{formula*}{}
\tcolorboxenvironment{explanation}{}
%% change label color %%
\thm@headfont{\color{booki}\sffamily\bfseries}
\def\th@remark{%
	\thm@headfont{\color{booki}\sffamily\bfseries}%
	\normalfont % body font
	\thm@preskip\topsep \divide\thm@preskip\tw@
	\thm@postskip\thm@preskip
}
%% re-define proof environment %%
\renewenvironment{proof}[1][\color{booki}\sffamily\bfseries\proofname]{\par
	\pushQED{\qed}%
	\normalfont \topsep6\p@\@plus6\p@\relax
	\trivlist
	\item[\hskip\labelsep
	\color{booki}\sffamily
	#1\@addpunct{.}]\ignorespaces
}{%
	\popQED\endtrivlist\@endpefalse
}
%% re-define quite easy done symbol %%
\def\qedsymbol{\textcolor{booki}{\ensuremath{\blacksquare}}}
%% paint color for bibiography counter %%
\def\@biblabel#1{\textcolor{booki}{[#1]}}
%% footnote %%
\def\footnoterule{\kern -3pt\textcolor{booki}{\hrule width \linewidth height 0.4pt}\kern 2.6pt}
\def\thefootnote{\color{booki}\sffamily(\arabic{footnote})}
%% change every inline maths to display maths %%
\everymath{\displaystyle}
%% increase base line skip in display formula
\addtolength{\jot}{1pt}
%% prevent book contents from vertical stretching %%
\raggedbottom
%%\tikz[baseline]\node[rounded corners,draw=booki,line width=1pt,inner sep=1ex](page){\parbox{5ex}{\centering\sffamily\thepage}};
%%\tikz\node[rounded corners,draw=booki,line width=1pt,inner sep=1ex]{\parbox{5ex}{\centering\sffamily\thepage}};
\def\preparelabel{រៀបរៀងដោយ}
\def\preparename{ស៊ុំ សំអុន}
\def\ps@plain{%
	\let\@oddhead\@empty%
	\let\@evenhead\@oddhead%
	\def\@oddfoot{%
		\scriptsize\textcolor{booki!89!white}{\footnotesize\itshape\preparelabel~\preparename}%និពន្ធ និងរៀបរៀងដោយ ស៊ុំ សំអុន
		\hfil{\Large\color{booki}\sffamily\thepage}%
		\hfil\textcolor{booki!89!white}{\footnotesize\itshape Bunny Book Series}}%
	\def\@evenfoot{%
		\scriptsize\textcolor{booki!89!white}{\footnotesize\itshape Bunny Book Series}%
		\hfil{\Large\color{booki}\sffamily\thepage}%
		\hfil\scriptsize\textcolor{booki!89!white}{\footnotesize\itshape\preparelabel~\preparename}%
		}%
	}
%
\def\ps@booki{%
	\def\@oddhead{%
		\textcolor{booki!89!white}{\footnotesize\itshape \leftmark}%
		\hfil\textcolor{booki!89!white}{\footnotesize\itshape \rightmark}}%
	\def\@evenhead{%
		\textcolor{booki!89!white}{\footnotesize\itshape \rightmark}%
		\hfil\textcolor{booki!89!white}{\footnotesize\itshape \leftmark}}%
	\def\@oddfoot{%
		\scriptsize\textcolor{booki!89!white}{\footnotesize\itshape\preparelabel~\preparename}%
		\hfil{\Large\color{booki}\sffamily\thepage}%
		\hfil\textcolor{booki!89!white}{\footnotesize\itshape Bunny Book Series}}%
	\def\@evenfoot{%
		\scriptsize\textcolor{booki!89!white}{\footnotesize\itshape Bunny Book Series}%
		\hfil{\Large\color{booki}\sffamily\thepage}%
		\hfil\scriptsize\textcolor{booki!89!white}{\footnotesize\itshape\preparelabel~\preparename}%
	}%
}
%
\pagestyle{booki}
%
\def\arraystretch{1.25}
%
\def\baselinestretch{1.2}
\def\setminus{\ensuremath{{}-{}}}
%
\RequirePackage{cancel}
\def\CancelColor{\color{booki}}
%
\RequirePackage{tkz-tab}
\tikzset{%
	t style/.style={draw=booki},%
	h style/.style={pattern = north east lines,pattern color =booki},%
	double style/.append style={draw=booki},%
	arrow style/.style={->,draw=booki},%
	from style/.append style={draw=booki}}
\def\tkzTabDefaultLineWidth{1pt}
\RequirePackage{tkz-euclide}
\usetkzobj{all}
%
\endinput