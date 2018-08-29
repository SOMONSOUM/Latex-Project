\NeedsTeXFormat{LaTeX2e}[2017/04/15]
\LoadClass[11pt,a4paper]{article}
\RequirePackage[no-math]{fontspec}
\XeTeXlinebreaklocale "km"
\XeTeXlinebreakskip = 0pt plus 1pt minus .5pt
\setmainfont[%
  Script=Khmer,
  Ligatures=TeX,
  AutoFakeBold=1,
  AutoFakeSlant=.15]{Khmer OS Siemreap}
\setsansfont[%
  Script=Khmer,
  Ligatures=TeX,
  AutoFakeBold=1,
  AutoFakeSlant=.15]{Khmer OS Siemreap}
\setmonofont[%
  Script=Khmer,
  Ligatures=TeX,
  AutoFakeBold=1,
  AutoFakeSlant=.15]{Khmer OS Siemreap}
\RequirePackage{fontawesome}
\RequirePackage{draftwatermark}
\SetWatermarkAngle{90}
\SetWatermarkColor{blue!68!gray}
\SetWatermarkHorCenter{.6cm}
\SetWatermarkFontSize{10pt}
\SetWatermarkText{\faChrome{}~https://bunnybookshelf.blogspot.com}
\RequirePackage{geometry}
\geometry{%
	left=.75cm,%
	right=.75cm,%
	top=1.5cm,%
	bottom=1.5cm%
}
%
\RequirePackage{graphicx}
\RequirePackage{float}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{amsthm}
\allowdisplaybreaks
\RequirePackage{mathtools}
\RequirePackage{newpxmath}
\RequirePackage[names]{xcolor}
\everymath{\color{red!68!gray!68!black}\displaystyle}
\RequirePackage{multicol}
\RequirePackage{enumitem}
\setlist[enumerate]{leftmargin=*,itemsep=0pt}
\setlist[enumerate,1]{label={\color{red!68!gray}[\Roman*]}}
\setlist[enumerate,2]{label={\color{blue!68!gray}[\arabic*]}}
\setlist[enumerate,3]{label={\color{violet!68!gray}[\alph*]}}
\RequirePackage{pifont}
% set enumerate and itemize key for number of columns
% \RequirePackage{multicol}
\SetEnumitemKey{2}{before=\raggedcolumns\setlength{\multicolsep}{\topsep}\begin{multicols}{2},after=\end{multicols}}
\SetEnumitemKey{3}{before=\raggedcolumns\setlength{\multicolsep}{\topsep}\begin{multicols}{3},after=\end{multicols}}
\SetEnumitemKey{4}{before=\raggedcolumns\setlength{\multicolsep}{\topsep}\begin{multicols}{4},after=\end{multicols}}
\SetEnumitemKey{5}{before=\raggedcolumns\setlength{\multicolsep}{\topsep}\begin{multicols}{5},after=\end{multicols}}
\SetEnumitemKey{6}{before=\raggedcolumns\setlength{\multicolsep}{\topsep}\begin{multicols}{6},after=\end{multicols}}
% set enumerate and itemize key for numerals
\AddEnumerateCounter{\alpkh}{\@alpkh}{\char"1788}
\AddEnumerateCounter{\khmer}{\@khmer}{\char"17E3}
% enumerate keys
\SetEnumitemKey{1}{label=\protect\color{blue!68!gray}[\arabic*]}
\SetEnumitemKey{a}{label=\protect\color{magenta!68!black}[\alph*]}
\SetEnumitemKey{A}{label=\protect\color{magenta!68!black}[\Alph*]}
\SetEnumitemKey{i}{label=\protect\color{red!68!gray}[\roman*]}
\SetEnumitemKey{I}{label=\protect\color{red!68!gray}[\Roman*]}
\SetEnumitemKey{k}{label=\protect\color{teal}[\alpkh*]}
\SetEnumitemKey{m}{label=\protect\color{teal}[\khmer*]}
% itemize keys
\SetEnumitemKey{b}{label=\protect\color{magenta!68!black}\protect\ensuremath{\bullet}}
\SetEnumitemKey{c}{label=\protect\color{magenta!68!black}\protect\ensuremath{\circ}}
\SetEnumitemKey{d}{label=\protect\color{magenta!68!black}\protect\ensuremath{\diamond}}
\SetEnumitemKey{t}{label=\protect\color{magenta!68!black}\protect\ensuremath{\triangleright}}
\SetEnumitemKey{p}{label=\protect\color{magenta!68!black}\protect\ding{43}}
\SetEnumitemKey{w}{label=\protect\color{magenta!68!black}\protect\ding{45}}
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
\NewPatternFormat{m}{\@khmer}% counter-format=tsk[m]
\settasks{%
	counter-format={[tsk[a]]},%
	label-format=\color{magenta!68!black},%
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
  counter-format={[tsk[1]]},%
  label-format=\color{blue!68!gray},%
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
  label-format=\color{magenta!68!black},%
  label-offset=0.7ex,%
  label-align=right,%
  label-width=1ex,%
  item-indent=1.7ex,%
  column-sep=1ex,%
  after-item-skip=0.5ex]{Itemize}[\item]
%
\RequirePackage{expl3}[2017/04/15]
\ProvidesExplClass{xam}{2018/04/19}{1.0}{Exam Sheet for Bac II}
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
\tl_new:N \c_ten_dots_tl
\tl_set:Nn \c_ten_dots_tl { .......... }
\tl_new:N \c_twenty_dots_tl
\tl_set:Nn \c_twenty_dots_tl { \c_ten_dots_tl \c_ten_dots_tl }
\tl_new:N \c_thirty_dots_tl
\tl_set:Nn \c_thirty_dots_tl { \c_twenty_dots_tl \c_ten_dots_tl }
\tl_new:N \c_forty_dots_tl
\tl_set:Nn \c_forty_dots_tl { \c_twenty_dots_tl \c_twenty_dots_tl }
\tl_new:N \l_xam_class_tl
\tl_set:Nn \l_xam_class_tl { ប្រឡងសាកល្បង }
\cs_new:Npn \xamclass #1 {
  \tl_set:Nn \l_xam_class_tl{ #1 }
}
\tl_new:N \l_student_label_tl
\tl_set:Nn \l_student_label_tl { ឈ្មោះសិស្ស }
\cs_new:Npn \studentlabel #1 {
	\tl_set:Nn \l_student_label_tl{ #1 }
}
\tl_new:N \l_student_name_tl
\tex_let:D \l_student_name_tl \c_thirty_dots_tl
\cs_new:Npn \studentname #1 {
	\tl_set:Nn \l_student_name_tl{ #1 }
}
\tl_new:N \l_xam_label_tl
\tl_set:Nn \l_xam_label_tl { វិញ្ញាសាទី }
\cs_new:Npn \xamlabel #1 {
	\tl_set:Nn \l_xam_label_tl{ #1 }
}
\tl_new:N \l_xam_number_tl
\tex_let:D \l_xam_number_tl \c_ten_dots_tl
\cs_new:Npn \xam #1 {
	\clearpage
	\tl_set:Nn \l_xam_number_tl{ #1 }
}
\tl_new:N \l_author_label_tl
\tl_set:Nn \l_author_label_tl { រៀបរៀងដោយ }
\cs_new:Npn \preparelabel #1 {
	\tl_set:Nn \l_author_label_tl { #1 }
}
\tl_new:N \l_author_name_tl
\tex_let:D \l_author_name_tl \c_thirty_dots_tl
\cs_new:Npn \prepareby #1 {
	\tl_set:Nn \l_author_name_tl { #1 }
}
\tl_new:N \l_page_label_tl
\tl_set:Nn \l_page_label_tl { ទំព័រ }
\cs_new:Npn \pagelabel #1 {
	\tl_set:Nn \l_page_label_tl { #1 }
}
\tl_new:N \l_phone_label_tl
\tl_set:Nn \l_phone_label_tl { លេខទូរស័ព្ទ }
\cs_new:Npn \phonelabel #1 {
	\tl_set:Nn \l_phone_label_tl { #1 }
}
\tl_new:N \l_phone_number_tl
\tex_let:D \l_phone_number_tl \c_thirty_dots_tl
\cs_new:Npn \phonenumber #1 {
	\tl_set:Nn \l_phone_number_tl { #1 }
}
\tl_new:N \l_teach_date_tl
\tex_let:D \l_teach_date_tl \l_khmer_date_tl
\cs_new:Npn \teachdate #1 {
	\tl_set:Nn \l_teach_date_tl { #1 }
}
\tl_set:Nn \ps@plain{%
	\tl_set:Nn \@oddhead{%
		\color{violet!68!gray}\footnotesize\itshape%
		\faPencilSquare{} ~ \l_xam_class_tl
		\hrulefill%
		\faFileTextO{} ~ \l_xam_label_tl{} ~ \l_xam_number_tl%
		\hrulefill%
		\faCalendar{} ~ \l_teach_date_tl
	}%
	\tex_let:D \@evenhead \@oddhead%
	\tl_set:Nn \@oddfoot{%
		\color{violet!68!gray}\footnotesize\itshape%
		\faPencilSquare{} ~ \l_author_label_tl{} ~ \l_author_name_tl%
		\hrulefill%
		\faFilesO{} ~ \l_page_label_tl{} ~ \khmer{page}%
		\hrulefill%
		\faPhoneSquare{} ~ \l_phone_label_tl{} ~ \l_phone_number_tl}%
	\tex_let:D \@evenfoot \@oddfoot%
}
\pagestyle{plain}
\raggedbottom