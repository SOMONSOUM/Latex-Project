%% TEMPLETE WRITER: SAY OL  %%
%% EMAIL: say_ol@yahoo.com  %%
%% WEBSITE: khtug.blogspot.com  %%
%% PERSONAL BLOG: bunnybookshelf.blogspot.com  %%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{khtug}[2017/10/27]
\LoadClassWithOptions{book}
% geometry
\RequirePackage{geometry}
\geometry{%
	left=0.7cm,%
	right=0.7cm,%
	top=0.5cm,%
	bottom=1.3cm,%
	%bindingoffset=0cm
	}

% math font
\everymath{\displaystyle}
\RequirePackage{mathpazo}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{amsthm}
\RequirePackage{mathtools}
%\RequirePackage{newpxmath}
%\RequirePackage{eulerpx} 
%\RequirePackage{kpfonts}
\RequirePackage[upgreek]{txgreeks}
\RequirePackage{mathastext}


%\RequirePackage[eulergreek]{mathastext}
%\RequirePackage[upgreek, LGRgreek ,defaultmathsizes]{mathastext}
%\RequirePackage[math-style=upright]{unicode-math}
%\setmathfont{Cambria Math}
%\setmathfont{XITS Math}
%\RequirePackage{unicode-math}
%\setmathfont{Latin Modern Math}
%\setmathfont{TeX Gyre Pagella Math}

%\setmathfont[range="222B]{Linux Libertine O}
% language


\newcommand{\en}{\fontspec{Times New Roman}\selectfont}
\newcommand{\kb}{\fontspec{Khmer OS Bokor}\selectfont}
\newcommand{\kml}{\fontspec{Khmer OS Muol Light}\selectfont}
%{AKbalthom KOUPREY Jais}
\RequirePackage{fontspec}
\setmainfont[% 
Ligatures=TeX,%
AutoFakeBold=0.5,%
AutoFakeSlant=0.25,Scale=0.85]{Antioch Text}% roman font
\setsansfont[%
Ligatures=TeX,%
AutoFakeBold=0,%
AutoFakeSlant=0.25]{Khmer OS Bokor}% sans serif font
\setmonofont[%
Ligatures=TeX,%
AutoFakeBold=0.5,%
AutoFakeSlant=0.25]{Khmer OS Bokor}% typewriter font
\XeTeXlinebreaklocale "kh"% line break rule
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
	មករា\or កុម្ភៈ\or មិនា\or មេសា\or%
	ឧសភា\or មិថុនា\or កក្កដា\or សីហា\or%
	កញ្ញា\or តុលា\or វិច្ឆិកា\or ធ្នូ\fi~%
	\@khmer\year}
% color
%\RequirePackage[table]{xcolor}
\RequirePackage{xcolor}
\DeclareOption{black}{\colorlet{khtug}{black}}
\DeclareOption{blue}{\colorlet{khtug}{blue}}
\DeclareOption{brown}{\colorlet{khtug}{brown}}
\DeclareOption{cyan}{\colorlet{khtug}{cyan!79!blue}}
\DeclareOption{darkgray}{\colorlet{khtug}{darkgray}}
\DeclareOption{gray}{\colorlet{khtug}{gray}}
\DeclareOption{green}{\colorlet{khtug}{green!79!black}}
\DeclareOption{gray}{\colorlet{khtug}{gray}}
\DeclareOption{lime}{\colorlet{khtug}{lime!79!black}}
\DeclareOption{magenta}{\colorlet{khtug}{magenta}}
\DeclareOption{olive}{\colorlet{khtug}{olive}}
\DeclareOption{orange}{\colorlet{khtug}{orange}}
\DeclareOption{pink}{\colorlet{khtug}{pink!79!red}}
\DeclareOption{purple}{\colorlet{khtug}{purple}}
\DeclareOption{red}{\colorlet{khtug}{red}}
\DeclareOption{teal}{\colorlet{khtug}{teal}}
\DeclareOption{violet}{\colorlet{khtug}{violet}}
\DeclareOption{yellow}{\colorlet{khtug}{yellow!79!red}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ExecuteOptions{violet}
\ProcessOptions\relax
% floating object
\RequirePackage{float}
% graphic
\RequirePackage{tikz}
\RequirePackage{graphicx}
\RequirePackage{tikz-3dplot}
\usetikzlibrary{angles,quotes}
% table
\RequirePackage{colortbl}
\arrayrulecolor{khtug}
% picture
\RequirePackage{tikz}
\usetikzlibrary{calc}
\usetikzlibrary{angles}
\usetikzlibrary{quotes}
\usetikzlibrary{arrows.meta}
\tikzset{%
	every picture/.style={%
		line width=0.7pt,%
		draw=khtug,%
		text=blue,%
	},%
	>={Stealth[]}%
}
% boxes

                                              
\RequirePackage{tkz-tab} %variation table
\RequirePackage{pgfplots}                                       
\usetikzlibrary{intersections}
%
%%%%%%
%graph shape
\pgfplotsset{compat=1.12}
\usepgfplotslibrary{fillbetween}
\usetikzlibrary{patterns}  
%
\RequirePackage{subfiles}
\RequirePackage{blindtext}
\RequirePackage{tabto}
\TabPositions{8cm}

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
	colframe=khtug,%
	colbacktitle=khtug!7!white,%
	before skip=0.2cm,%
	after skip=0.2cm %\topskip
	,%
	boxrule=0.7pt,%
	titlerule=0pt,%
	fonttitle=\color{khtug}\sffamily,%
	sharp corners,%
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
  		colback=white,%
  		colframe=khtug,%
  		boxrule=0.7pt}%
  	}%
  }
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% sections format
\def\@seccntformat#1{\begingroup\color{khtug}\sffamily\csname the#1\endcsname\endgroup~}
\def\@secttlformat#1{\begingroup\color{khtug}\sffamily#1\endgroup}
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
			\hskip -\leftskip\sffamily
			\textcolor{khtug}{#1}\nobreak\hfil \nobreak\hb@xt@\@pnumwidth{\hss\color{khtug}#2}\par
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
		{\color{khtug}#4}\nobreak
		\leaders\hbox{$\m@th
			\mkern \@dotsep mu\hbox{.}\mkern \@dotsep
			mu$}\hfill
		\nobreak
		\hb@xt@\@pnumwidth{\hfil\normalfont\color{khtug}#5}%
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
		\node [draw=khtug,ultra thick,minimum height=7ex,inner xsep=1.5ex,inner ysep=1ex] (chapbox) at (0.5\linewidth,0) {\huge\@seccntformat{chapter}\@secttlformat{#1}};%
		\draw[draw=khtug,ultra thick]
		(0,0)--(chapbox.west)
		(chapbox.east)--(\linewidth,0);%
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
		\node [draw=khtug,ultra thick,minimum height=7ex,inner xsep=1.5ex,inner ysep=1ex] (chapbox) at (0.5\linewidth,0) {\huge\@secttlformat{#1}};%
		\draw[draw=khtug,ultra thick]
		(0,0)--(chapbox.west)
		(chapbox.east)--(\linewidth,0);%
		\end{tikzpicture}}%
	%
	\fi\@@par\nobreak\vskip5ex}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% section spacing
\long\def\section{%
	\@startsection{section}{1}{\z@}{%
		-1.5ex\@plus-.2ex\@minus-.2ex}{%
		1.5ex\@plus.2ex\@minus.2ex}{\Large\sffamily\bfseries}}
\long\def\subsection{%
	\@startsection{subsection}{2}{\z@}{%
		-1.5ex\@plus-.2ex\@minus-.2ex}{%
		1.5ex\@plus.2ex\@minus.2ex}{\large\sffamily\bfseries}}
\long\def\subsubsection{%
	\@startsection{subsubsection}{3}{\z@}{%
		-1.5ex\@plus-.2ex\@minus-.2ex}{%
		1.5ex\@plus.2ex\@minus.2ex}{\sffamily\bfseries}}
\long\def\paragraph{%
	\@startsection{paragraph}{4}{\z@}{%
		1.5ex\@plus.2ex\@minus.2ex}{-1em}{\normalfont}}
\long\def\subparagraph{%
	\@startsection{subparagraph}{4}{\parindent}{%
		1.5ex\@plus.2ex\@minus.2ex}{-1em}{\normalfont}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% section drawing
% \RequirePackage{tikz}
\def\thesection{\arabic{section}}
\def\thesubsection{\Alph{subsection}}
\def\@sect#1#2#3#4#5#6[#7]#8{%
	\ifnum #2>\c@secnumdepth
		\let\@svsec\@empty
	\else
		\refstepcounter{#1}%
		\protected@edef\@svsec{\csname the#1\endcsname}%
	\fi
	\@tempskipa #5\relax
	\ifdim \@tempskipa>\z@
		\begingroup
		#6{%
			\vskip1ex\noindent%
			\begin{tikzpicture}[overlay,every node/.append style={inner sep=0.5ex}]%
				\node[minimum height=3ex,right,very thick,fill=khtug,text=white,font=\sffamily\bfseries,circle](counter){\@svsec};
				\coordinate(E)at(\linewidth,0);
				\coordinate(S)at([xshift=-1pt]counter.south east);
				\draw[khtug,very thick](S)--(E|-S);
				\node[right]at(counter.east){\@secttlformat{#8}};
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
			\begin{tikzpicture}[overlay,every node/.append style={inner sep=0.5ex}]%
				\node[right,fill=khtug,text=white,font=\sffamily\bfseries,circle](counter){\phantom{1}};
				\coordinate(E)at(\linewidth,0);
				\coordinate(S)at([xshift=-1pt]counter.south east);
				\draw[khtug,very thick](S)--(E|-S);
				\node[right,text=red]at(counter.east){\@secttlformat{#5}};
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
% enumerate
\RequirePackage{enumitem}
\RequirePackage{multicol}
\RequirePackage{pifont}
% set enumerate and itemize key for number of columns
% \RequirePackage{multicol}
\SetEnumitemKey{2}{before=\raggedcolumns\setlength{\multicolsep}{\topsep}\begin{multicols}{2},after=\end{multicols}}
\SetEnumitemKey{3}{before=\raggedcolumns\setlength{\multicolsep}{\topsep}\begin{multicols}{3},after=\end{multicols}}
\SetEnumitemKey{4}{before=\raggedcolumns\setlength{\multicolsep}{\topsep}\begin{multicols}{4},after=\end{multicols}}
\SetEnumitemKey{5}{before=\raggedcolumns\setlength{\multicolsep}{\topsep}\begin{multicols}{5},after=\end{multicols}}
\SetEnumitemKey{6}{before=\raggedcolumns\setlength{\multicolsep}{\topsep}\begin{multicols}{6},after=\end{multicols}}
% set enumerate and itemize key for numerals
\AddEnumerateCounter{\alpkh}{\@alpkh}{ឈ}
\AddEnumerateCounter{\khmer}{\@khmer}{៣}
% enumerate keys
\SetEnumitemKey{1}{label=\protect\color{khtug}\arabic*.}
\SetEnumitemKey{a}{label=\protect\color{khtug}\en\alph*.}
\SetEnumitemKey{A}{label=\protect\color{khtug}\en\Alph*}
\SetEnumitemKey{i}{label=\protect\color{khtug}\en\roman*.}
\SetEnumitemKey{I}{label=\protect\color{khtug}\en\Roman*.}
\SetEnumitemKey{k}{label=\protect\color{khtug}\kb\alpkh*.}
\SetEnumitemKey{m}{label=\protect\color{khtug}\kb\khmer*.}
% itemize keys
\SetEnumitemKey{b}{label=\protect\color{khtug}\protect\ensuremath{\bullet}}
\SetEnumitemKey{c}{label=\protect\color{khtug}\protect\ensuremath{\circ}}
\SetEnumitemKey{d}{label=\protect\color{khtug}\protect\ensuremath{\diamond}}
\SetEnumitemKey{t}{label=\protect\color{khtug}\protect\ensuremath{\triangleright}}
\SetEnumitemKey{p}{label=\protect\color{khtug}\protect\ding{43}}
\SetEnumitemKey{w}{label=\protect\color{khtug}\protect\ding{45}}
% styling enumerate
\setlist[enumerate]{%
	parsep=0pt,%
	topsep=1ex,%
	partopsep=0pt,%
	leftmargin=*,%
	itemsep=1ex,%
	labelsep=.5ex}
\setlist[enumerate,1]{1}
\setlist[enumerate,2]{a}
\setlist[enumerate,3]{i}
\setlist[enumerate,4]{A}
% styling itemize
\setlist[itemize]{%
	parsep=0pt,%
	topsep=1ex,%
	partopsep=0pt,%
	leftmargin=*,%
	itemsep=1ex,%
	labelsep=.7ex}
\setlist[itemize,1]{b}
\setlist[itemize,2]{c}
\setlist[itemize,3]{d}
\setlist[itemize,4]{t}
% sub enumerate
\RequirePackage{tasks}
\NewPatternFormat{k}{\@alpkh}% cntformats package
\NewPatternFormat{m}{\@khmer}% counter-format=tsk[l]
\settasks{%
	counter-format=tsk[a].,%
	label-format=\color{khtug},%
	label-offset=0.5ex,%
	label-align=right,%
	label-width=3.5ex,%
	item-indent=4ex,%
	column-sep=2ex,%
	before-skip=0ex,%
	after-skip=0ex,%
	after-item-skip=0.5ex%
}
%% name macro %%
\def\chaptername{ជំពូក}
\def\contentsname{មាតិកា}
\def\listtablename{បញ្ជីតារាង}
\def\listfigurename{បញ្ជីរូភាព}
\def\tablename{តារាង}
\def\figurename{រូប}
\def\bibname{គន្ថនិទ្ទេស}
\def\refname{ឯកសារយោង}
\def\abstractname{សង្ខេប}
% theorem name maro
\def\proofname{សម្រាយ}
\allowdisplaybreaks
%% change label color %%
\thm@headfont{\color{khtug}}
\def\th@remark{%
	\thm@headfont{\color{khtug}}%
	\normalfont % body font
	\thm@preskip\topsep \divide\thm@preskip\tw@
	\thm@postskip\thm@preskip
}
%% re-define proof environment %%
\renewenvironment{proof}[1][\color{khtug}\sffamily\proofname]{\par
	\pushQED{\qed}%
	\normalfont \topsep6\p@\@plus6\p@\relax
	\trivlist
	\item[\hskip\labelsep
	\color{khtug}\sffamily
	#1\@addpunct{.}]\ignorespaces
}{%
	\popQED\endtrivlist\@endpefalse
}
%% re-define quite easy done symbol %%
\def\qedsymbol{\textcolor{khtug}{\ensuremath{\blacksquare}}}
%% paint color for bibiography counter %%
\def\@biblabel#1{\textcolor{khtug}{[#1]}}
%
\everymath{\displaystyle}

% todo: define additional commands 
\def\dashfill{\leavevmode \cleaders \hb@xt@ 6pt{\hss \rule{4pt}{1pt}\hss }\hfill \kern \z@} \def\borderline#1{{\color{khtug} \sffamily\hrulefill\lower.55ex\hbox{ [{#1}]}\hrulefill}}
%%
\RequirePackage{fancyhdr}
%\def\headrule{{\vskip 3pt\if@fancyplain\let\headrulewidth\plainheadrulewidth\fi
		%\color{gray}\hrule\@height\headrulewidth\@width\headwidth\vskip-\headrulewidth}\vspace{-0.5cm}}
%\def\footrule{{\if@fancyplain\let\footrulewidth\plainfootrulewidth\fi
		%\vskip -\footruleskip \vskip -\footrulewidth
		%\color{khtug}\hrule\@width\headwidth\@height\footrulewidth\vskip \footruleskip}}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}



 %todo: adding water mark text 
  %\RequirePackage{fontawesome} 
  %\RequirePackage{draftwatermark} 
   %\SetWatermarkAngle{45} 
     %\SetWatermarkColor{khtug!35! } 
     %\SetWatermarkHorCenter{7cm}
       %\SetWatermarkFontSize{10pt} 
        %\SetWatermarkText{\Huge លីម សីហា} 


%\def\header#1#2#3{\fancyhead{\footnotesize\itshape\color{khtug}\sffamily #1\hfill #2\hfill #3}}
%\def\footer#1#2#3{\fancyfoot{\footnotesize \itshape \color{khtug}\sffamily #1\hfill #2\hfill #3}}
\pagestyle{fancy}
\pagenumbering{khmer}
\fancyhf{}
%\lhead{}
%\chead{{\color{khtug}\sffamily វិទ្យាល័យសម្តេចឳ ខេត្តសៀមរាប}}
%\chead{\color{khtug}\en \thepage}
\lfoot{\vspace{-0.4cm}{\color{khtug}\sffamily រៀបរៀងដោយ ស៊ុំ សំអុន   }}
\cfoot{\vspace{-0.35cm} \color{khtug}\sffamily ទំព័រទី \thepage}     
\rfoot{\vspace{-0.45cm} \color{khtug}\sffamily\quad ទូរស័ព្ទ ០៨៩ ៨៩ ៨៦​៦១}  
\def\arraystretch{1}
%
\def\baselinestretch{1.5}
\footskip=15pt
\raggedbottom 

%
\usetikzlibrary{snakes}

\endinput