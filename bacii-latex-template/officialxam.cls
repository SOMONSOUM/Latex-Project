\LoadClass[11pt,a4paper]{article}
% todo: customize page margin
\RequirePackage{geometry}
\geometry{margin=.7cm,top=.5cm,bottom=1cm}
% todo: language setting
\RequirePackage[no-math]{fontspec}
\XeTeXlinebreaklocale "km"
\XeTeXlinebreakskip = 0pt plus 1pt minus .5pt
\setmainfont[%
Script=Khmer,
Ligatures=TeX,
AutoFakeBold=1.5,
AutoFakeSlant=0.2]{Khmer OS Content}
\setsansfont[%
Script=Khmer,
Ligatures=TeX,
AutoFakeBold=1.5,
AutoFakeSlant=0.2]{Khmer OS Content}
\setmonofont[%
Script=Khmer,
Ligatures=TeX,
AutoFakeBold=1.5,
AutoFakeSlant=0.2]{Khmer OS Content}
\newfontfamily{\mlfamily}[%
Script=Khmer,
Ligatures=TeX,
AutoFakeBold=1,
AutoFakeSlant=0.2]{Khmer OS Muol Light}
% todo: adding water mark text
\RequirePackage{fontawesome}
\RequirePackage{draftwatermark}
\SetWatermarkAngle{90}
\SetWatermarkColor{black}
\SetWatermarkHorCenter{0.5cm}
\SetWatermarkFontSize{10pt}
\SetWatermarkText{\color{blue}\faFacebookSquare~https://www.facebook.com/groups/HighSchoolMaths}
% todo: declare graphic packages
\RequirePackage{xcolor}
\RequirePackage{tikz}
\RequirePackage{graphicx}
\RequirePackage{float}
% todo: mathematical usage
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{amsthm}
\RequirePackage{mathtools}
\RequirePackage{newpxmath}
\allowdisplaybreaks
\everymath{\color{red!67!black}\displaystyle}
% todo: additional text symbols
\RequirePackage{pifont}
% todo: muti-column usage
\RequirePackage{multicol}
% todo: list environments
\RequirePackage{enumitem}
\setlist[enumerate]{leftmargin=*,itemsep=0pt}
\setlist[enumerate,1]{label={\color{blue}\bfseries\sffamily\Roman*.}}
\setlist[enumerate,2]{label={\color{blue}\bfseries\sffamily\khmer*.}}
\setlist[enumerate,3]{leftmargin=2.3ex,label={\color{blue}\bfseries\sffamily\alpkh*.}}
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
\SetEnumitemKey{1}{label={\color{blue}\sffamily\arabic*.}}
\SetEnumitemKey{a}{label={\color{blue}\sffamily\alph*.}}
\SetEnumitemKey{A}{label={\color{blue}\sffamily\alph*.}}
\SetEnumitemKey{i}{label={\color{blue}\sffamily\roman*.}}
\SetEnumitemKey{I}{label={\color{blue}\sffamily\Roman*.}}
\SetEnumitemKey{k}{label={\color{blue}\sffamily\alpkh*.}}
\SetEnumitemKey{m}{label={\color{blue}\sffamily\khmer*.}}
% todo: define itemize keys
\SetEnumitemKey{b}{label={\color{blue}\sffamily\ensuremath{\bullet}}}
\SetEnumitemKey{c}{label={\color{blue}\sffamily\ensuremath{\circ}}}
\SetEnumitemKey{d}{label={\color{blue}\sffamily\ensuremath{\diamond}}}
\SetEnumitemKey{t}{label={\color{blue}\sffamily\ensuremath{\triangleright}}}
\SetEnumitemKey{p}{label={\color{blue}\sffamily\ding{43}}}
\SetEnumitemKey{w}{label={\color{blue}\sffamily\ding{45}}}
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
  label-format=,%
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
label-format=\color{blue}\bfseries,%
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
label-format=\color{blue}\bfseries,%
label-offset=0.7ex,%
label-align=right,%
label-width=1ex,%
item-indent=1.7ex,%
column-sep=1ex,%
after-item-skip=0.5ex]{Itemize}[\item]
% todo: define additional commands
\def\dashfill{\leavevmode \cleaders \hb@xt@ 5pt{\hss-\hss }\hfill \kern \z@}
\def\crulefill{\leavevmode \cleaders \hb@xt@ 1pt{\hss-\hss }\hfill \kern \z@}
\def\borderline#1{{\color{blue}{\crulefill[ {\mlfamily #1} ]\crulefill}}}
\def\baselinestretch{1.25}
\parindent=0pt
\footskip=15pt
\pagenumbering{khmer}
\raggedbottom
% todo: define name macro
\def\@highschool{សុខ អាន ទន្លេបាទី}
\def\highschool#1{\def\@highschool{#1}}
\def\@xam{ឆមាសលើកទី២}
\def\xam#1{\def\@xam{#1}}
\def\@grade{១២}
\def\grade#1{\def\@grade{#1}}
\def\@subject{គណិតវិទ្យា}
\def\subject#1{\def\@subject{#1}}
\def\@minute{១៥០}
\def\minute#1{\def\@minute{#1}}
\def\@score{១២៥}
\def\score#1{\def\@score{#1}}
\def\@xamdate{០៦ កក្កដា ២០១៨}
\def\xamdate#1{\def\@xamdate{#1}}
% todo: print exam rule
\AtBeginDocument{%
  \begin{minipage}[t]{7cm}
    {\mlfamily ក្រសួងអប់រំយុវជន និងកីឡា}\\
    វិទ្យាល័យ \textbf{\color{blue}\sffamily \@highschool}\\
    ប្រឡង\textbf{\color{blue}\sffamily \@xam}~ថ្នាក់ទី\textbf{\color{blue}\sffamily \@grade}\\
  \end{minipage}
  \hfill
  \begin{minipage}[t]{7cm}
    លេខបន្ទប់៖ \dotfill\\
    លេខតុ៖ \dotfill\\
    មណ្ឌលប្រឡង៖ \dotfill
  \end{minipage}\\[-.5\baselineskip]
  \begin{minipage}[b]{5cm}
    {\small ឈ្មោះ និងហត្ថលេខាអនុរក្ស៖}
    \vspace*{3\baselineskip}
  \end{minipage}
  \begin{minipage}[b]{9cm}
    សម័យប្រឡង៖ \textbf{\color{blue}\sffamily \@xamdate}\\
    នាមត្រកូល និងនាមខ្លួន៖ \dotfill\\
    ថ្ងៃខែឆ្នាំកំណើត៖ \dotfill\\
    ហត្ថលេខា៖ \dotfill
  \end{minipage}
  \hfill
  \fbox{%
    \begin{minipage}[b]{5cm}
      \color{blue}\bfseries លេខសម្ងាត់៖
  \end{minipage}}\\[0.5ex]
  {\small បេក្ខជនមិនត្រូវធ្វើសញ្ញាសម្គាល់អ្វីមួយនៅលើសន្លឹកប្រឡងឡើយ។ សន្លឹកប្រឡងដែលមានសញ្ញាសម្គាល់នឹងត្រូវបានពិន្ទុសូន្យ។}\\
  {\color{red}{\Large\lower0.25ex\hbox{\ding{34}}}\dashfill}\\%[.75ex]
  វិញ្ញាសា៖ \textbf{\color{blue}\sffamily\@subject} \hfill រយៈពេល៖ \textbf{\color{blue}\sffamily\@minute}~នាទី \hfill ពិន្ទុ​​​​​​​​​៖ \textbf{\color{blue}\sffamily\@score} \hfill\fbox{%
    \begin{minipage}[b]{5cm}
      \color{blue}\bfseries លេខសម្ងាត់៖
  \end{minipage}}\\
  \begin{minipage}[t]{3cm}
    \begin{tikzpicture}[overlay]
    \draw[line width=1pt,color=magenta!67!red](1.5,-.5)ellipse(1.5 and 1);
    \node[font=\bfseries\sffamily,color=blue] at(1.5,0){ពិន្ទុសរុប};
    \end{tikzpicture}
  \end{minipage}~\quad~
  \begin{minipage}[t]{17cm}
    \textbf{\color{red}\sffamily​ សេចក្ដីណែនាំ៖}\\
    ១. បេក្ខជនត្រូវគូសខ្វែងនៅទំព័រទី២ ផ្នែកខាងលើដែលត្រូវកាត់ចេញ។\\
    ២. បេក្ខជនត្រូវសរសេរចម្លើយនៃសំណួរបន្តនៅលើទំព័រទី២ ទី៣ និងទី៤។
  \end{minipage}
  \vskip1em}
% todo: declare experimental latex 3 package to use new language syntax
\RequirePackage{expl3}[2017/04/15]
% todo: provide new class
\ProvidesExplClass{officialxam}{2018/06/24}{1.0}{Official Exam Sheet for Bac II}
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
\cs_new:Npn \dotline #1 {%
  \linespread{1.5}\selectfont\color{gray}
  \int_set:Nn \l_tempa_int { 1 }
  \int_do_until:nNnn { \l_tempa_int } = { #1 }{ 
    \int_incr:N\l_tempa_int \noindent\hphantom{}\dotfill\\ }
    \hphantom{}\dotfill
  }
%
\def\thepage{\textcolor{magenta!67!red}{\mlfamily\khmer{page}}}
%
\endinput