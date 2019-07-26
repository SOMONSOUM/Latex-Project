\ProvidesClass{pptexam}[2018/10/07]
\LoadClass{article}
\RequirePackage{geometry}
\RequirePackage{xcolor}
\RequirePackage{graphicx}
\RequirePackage{float}
\RequirePackage{tikz}
\RequirePackage{tcolorbox}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{amsthm}
\RequirePackage{mathtools}
\RequirePackage{newpxmath}
\RequirePackage{pifont}
\RequirePackage{enumitem}
\RequirePackage{multicol}
\RequirePackage{fontspec}
\geometry{margin=1cm}
\setmainfont[%
Script=Khmer,%
Ligatures=TeX,%
AutoFakeSlant=.25,%
AutoFakeBold=2]{Kantumruy}
\setsansfont[%
Script=Khmer,%
Ligatures=TeX,%
AutoFakeSlant=.25,%
AutoFakeBold=1]{KhmerOSmuollight.ttf}
\setmonofont[%
Script=Khmer,%
Ligatures=TeX,%
AutoFakeSlant=.25,%
AutoFakeBold=1]{KhmerOSbokor.ttf}
\newfontfamily{\tcfamily}[%
Script=Khmer,%
Ligatures=TeX,%
AutoFakeSlant=.25,%
AutoFakeBold=2]{Tacteing.ttf}
\DeclareTextFontCommand{\texttc}{\tcfamily}
% todo: define muti-column list environment keys
\SetEnumitemKey{2}{before=\raggedcolumns\setlength{\multicolsep}{\topsep}\begin{multicols}{2},after=\end{multicols}}
\SetEnumitemKey{3}{before=\raggedcolumns\setlength{\multicolsep}{\topsep}\begin{multicols}{3},after=\end{multicols}}
\SetEnumitemKey{4}{before=\raggedcolumns\setlength{\multicolsep}{\topsep}\begin{multicols}{4},after=\end{multicols}}
\SetEnumitemKey{5}{before=\raggedcolumns\setlength{\multicolsep}{\topsep}\begin{multicols}{5},after=\end{multicols}}
\SetEnumitemKey{6}{before=\raggedcolumns\setlength{\multicolsep}{\topsep}\begin{multicols}{6},after=\end{multicols}}
% todo: set enumerate and itemize key for numerals
\AddEnumerateCounter{\alpkh}{\@alpkh}{ឈ}%\char"1788
\AddEnumerateCounter{\khmer}{\@khmer}{៣}%\char"17E3
% todo: define enumerate keys
\SetEnumitemKey{1}{label={\sffamily\arabic*.}}
\SetEnumitemKey{a}{label={\sffamily\alph*.}}
\SetEnumitemKey{A}{label={\sffamily\alph*.}}
\SetEnumitemKey{i}{label={\sffamily\roman*.}}
\SetEnumitemKey{I}{label={\sffamily\Roman*.}}
\SetEnumitemKey{k}{label={\sffamily\alpkh*.}}
\SetEnumitemKey{m}{label={\sffamily\khmer*.}}
\SetEnumitemKey{M}{label={\protect\tikz[baseline=-.75ex]{\protect\node[draw,circle,inner sep=1pt,minimum height=1.75em,font=\sffamily]{\khmer*};}}}
\SetEnumitemKey{K}{label={\protect\tikz[baseline=-.75ex]{\protect\node[draw,circle,inner sep=1pt,minimum height=1.5em,font=\footnotesize\sffamily]{\alpkh*};}}}
\setlist[enumerate]{leftmargin=*,itemsep=0pt}
\setlist[enumerate,1]{M}
\setlist[enumerate,2]{K}
\setlist[enumerate,3]{leftmargin=2.3ex,label={\sffamily\alph*.}}
% todo: define itemize keys
\SetEnumitemKey{b}{label={\sffamily\ensuremath{\bullet}}}
\SetEnumitemKey{c}{label={\sffamily\ensuremath{\circ}}}
\SetEnumitemKey{d}{label={\sffamily\ensuremath{\diamond}}}
\SetEnumitemKey{t}{label={\sffamily\ensuremath{\triangleright}}}
\SetEnumitemKey{p}{label={\sffamily\ding{43}}}
\SetEnumitemKey{w}{label={\sffamily\ding{45}}}
% todo: styling itemize
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
% todo: enable use of sub enumerate
\RequirePackage{tasks}
\NewPatternFormat{k}{\@alpkh}% cntformats package
\NewPatternFormat{m}{\@khmer}% counter-format=tsk[m]
\settasks{%
	counter-format={tsk[k].},%
	label-format=\sffamily,%
	label-offset=0.5ex,%
	label-align=right,%
	label-width=3.5ex,%
	item-indent=4ex,%
	column-sep=2ex,%
	before-skip=0ex,%
	after-skip=0ex,%
	after-item-skip=0.5ex%
}
\NewTasks[%
style=enumerate,%
counter-format={tsk[k].},%
label-format=\sffamily,%
label-offset=0.5ex,%
label-align=right,%
label-width=2ex,%
item-indent=2.5ex,%
column-sep=1ex,%
before-skip=0ex,%
after-skip=0ex,%
after-item-skip=0.5ex]{Enumerate}[\item]
\NewTasks[%
style=itemize,
label=\ensuremath{\bullet},
label-format=\sffamily,%
label-offset=0.7ex,%
label-align=right,%
label-width=1ex,%
item-indent=1.7ex,%
column-sep=1ex,%
after-item-skip=0.5ex]{Itemize}[\item]
\AtBeginDocument{%
\begin{center}
	\sffamily
	ព្រះរាជាណាចក្រកម្ពុជា\\
	ជាតិ សាសនា ព្រះមហាក្សត្រ\\[.5ex]
	{\tcfamily\scalebox{4}{6}}
\end{center}
\vskip-2em
{\sffamily ក្រសួងអប់រំ យុវជន និងកីឡា\hfill
សាលាមេតូឌីស្ទកម្ពុជា\hfill
សាលាមេតូឌីស្ទកម្ពុជា}\\[\baselineskip]
{\normalfont ថ្ងៃ\makebox[2.5cm]{\dotfill}ខែ\makebox[1.5cm]{\dotfill}ឆ្នាំ\makebox[2.5cm]{\dotfill}ពស ២៥៦\makebox[.5cm]{\dotfill}\hfill ត្រូវនឹង ថ្ងៃ\makebox[2.5cm]{\dotfill}ទី\makebox[.75cm]{\dotfill}ខែ\makebox[1.5cm]{\dotfill}ឆ្នាំ ២០១\makebox[.5cm]{\dotfill}}\\
\begin{minipage}{.4\linewidth}
	ឯកទេស\dotfill\\[\baselineskip]
	ជំនាន់ទី\dotfill ឆ្នាំទី\dotfill
\end{minipage}
\begin{minipage}{.2\linewidth}
	\centering
	\begin{tikzpicture}
	\draw(0,0) ellipse (1.5 and 1);
	\node[fill=white,font=\sffamily]at(0,.5){ពិន្ទុ};
	\end{tikzpicture}
\end{minipage}
\begin{minipage}{.4\linewidth}
	ថ្នាក់\dotfill លេខរៀង\dotfill\\[\baselineskip]
	ឈ្មោះ\dotfill
\end{minipage}\\
%
\begin{center}
	\ttfamily វិញ្ញាសា\makebox[4cm]{\dotfill} រយៈពេល\makebox[1.5cm]{\dotfill}នាទី
\end{center}
}
\newcommand\topic[1][ចម្លើយ]{%
\begin{center}
	{\tcfamily\scalebox{1}{(}}~\texttt{#1}~{\tcfamily\scalebox{1}{)}}
\end{center}}
\newcommand\finish[1][6]{%
	\begin{center}
		\scalebox{4}{\tcfamily #1}
\end{center}}
% todo: declare experimental latex 3 package to use new language syntax
\RequirePackage{expl3}[2017/04/15]
% todo: provide new class
\ProvidesExplClass{pptexam}{2018/10/07}{1.0}{Official Exam Sheet for PPTEC}
%todo: Define Khmer Numbers
\cs_new:Npn \khmer #1 {
	\exp_after:wN \int_to_khmer:n \cs:w c@#1 \cs_end:
}
\cs_new:Npn \int_to_khmer:n #1 {
	\exp_after:wN \_int_to_khmer:n \__int_value:w #1 \q_nil
}
\cs_new:Npn \_int_to_khmer:n #1 {
	\if_meaning:w #1 \q_nil
	\else:%
	\if_case:w #1
	០ \or: ១ \or: ២ \or: ៣ \or: ៤ \or: ៥ \or: ៦ \or: ៧ \or: ៨ \or: ៩
	\fi:%
	\exp_after:wN \_int_to_khmer:n
	\fi:
}
\tex_let:D \@khmer \int_to_khmer:n
\cs_new:Npn \khmernumeral #1 { \_int_to_khmer:n #1 \q_nil }
%todo: Define Khmer Alphabets
\cs_new:Npn \alpkh #1 {
	\exp_after:wN \int_to_khmer_alph:n \cs:w c@#1\cs_end:
}
\cs_new:Npn \int_to_khmer_alph:n #1{
	\int_to_symbols:nnn { #1 }{ 33 }{
		{1}{ក} {2}{ខ} {3}{គ} {4}{ឃ} {5}{ង} 
		{6}{ច} {7}{ឆ} {8}{ជ} {9}{ឈ} {10}{ញ} 
		{11}{ដ} {12}{ឋ} {13}{ឌ} {14}{ឍ} {15}{ណ} 
		{16}{ត} {17}{ថ} {18}{ទ} {19}{ធ} {20}{ន} 
		{21}{ប} {22}{ផ} {23}{ព} {24}{ភ} {25}{ម} 
		{26}{យ} {27}{រ} {28}{ល} {29}{វ} {30}{ស} 
		{31}{ហ} {32}{ឡ} {33}{អ}
	}
}
%
\tex_let:D \@alpkh \int_to_khmer_alph:n
\tex_let:D \@Alpkh \int_to_khmer_alph:n
%todo: Define Khmer Short Date dd/mm/yyyy
\tl_new:N \l_khmer_short_date_tl
\tl_set:Nn \l_khmer_short_date_tl {%
	\if_int_compare:w \c_sys_day_int < 10
	\int_to_khmer:n { 0\c_sys_day_int }
	\else:
	\int_to_khmer:n \c_sys_day_int
	\fi:
	/
	\if_int_compare:w \c_sys_month_int < 10
	\int_to_khmer:n { 0\c_sys_month_int }
	\else:
	\int_to_khmer:n \c_sys_month_int
	\fi:%
	/
	\int_to_khmer:n \c_sys_year_int
}
\tex_let:D \khmershortdate \l_khmer_short_date_tl
%todo: Define Khmer Date dd~month~yyyy
\tl_new:N \l_khmer_date_tl
\tl_set:Nn \l_khmer_date_tl {%
	ថ្ងៃទី~
	\if_int_compare:w \c_sys_day_int < 10
	\int_to_khmer:n { 0\c_sys_day_int }
	\else:
	\int_to_khmer:n \c_sys_day_int
	\fi:{}~
	ខែ~
	\if_case:w \c_sys_month_int
	\or: មករា \or: កុម្ភៈ\or: មិនា\or: មេសា\or: ឧសភា\or: មិថុនា\or: កក្កដា\or: សីហា\or: កញ្ញា\or: តុលា\or: វិច្ឆិកា\or: ធ្នូ
	\fi:{}~
	ឆ្នាំ~
	\int_to_khmer:n \c_sys_year_int
}
\tex_let:D \khmerdate \l_khmer_date_tl
%
\int_new:N \l_tempa_int
\cs_new:Npn \dotlines #1 {%
	\int_set:Nn \l_tempa_int { 0 }
	\int_do_until:nNnn { \l_tempa_int } = { #1 }{ 
		\int_incr:N\l_tempa_int \vskip \baselineskip \dotfill }
}
%
\dim_set:Nn \parindent { 0pt }
\dim_set:Nn \footskip { 10pt }
\tl_set:Nn \thepage { \Large \sffamily \int_to_khmer:n \c@page }
%
\raggedbottom
\endinput