% Tested with Texlive 2014 (TeXstudio)
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{My-Thesis}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{memoir}}% or memoir or report or book or paper or what%% تمام پارامترهای ورودی برای تنظیم متن را به کلاس زیر ارسال می‌کنیم
\ProcessOptions % Now we'll execute any options passed in
\LoadClass[a4paper,twoside,10pt,fleqn]{memoir}% or memoir or report or book or paper or whatever you class is closest to


\usepackage{amsthm}
\usepackage{amssymb}
\usepackage{amsmath}
\usepackage{mathtools}
\usepackage{multicol}
\usepackage{tabularx}
\usepackage{setspace} % for switching between double/single space in document
%\usepackage{fancyhdr} % package for changing Headings style
\usepackage{wrapfig}
\usepackage[top=3.5cm, bottom=2.5cm, left=2.5cm, right=3.5cm,headsep=1cm]{geometry} % headsep: vertical separation space between header and top of text - headheight: height of header
\usepackage[usenames,dvipsnames]{color}
\usepackage[usenames,dvipsnames,table]{xcolor}
% my packages
\usepackage{changepage}
\usepackage{bm}
\usepackage{xy}
\usepackage{braket}
\usepackage{cite}
\usepackage{comment}
\usepackage[]{mcode}
\usepackage{courier} % causes \ttfamily to produce output in the courier font.
\usepackage{epsfig}
% end of my packages
\usepackage{courier} % or what ever
\usepackage[scaled=.92]{helvet}%. Sans serif - Helvetica
\usepackage{calc}
\usepackage{verbatim}
%\usepackage{wrapfig}
\usepackage[]{subcaption}
\usepackage{algorithm}
\usepackage{algorithmic}
\usepackage{caption}
\usepackage{graphicx}
\graphicspath{{images/}}
\usepackage{hyperref}
\usepackage{makeidx} % index (نمایه)
\usepackage[nomain,toc,xindy]{glossaries} % glossary
%\usepackage[quickindex-variant2]{xepersian}
\usepackage{xepersian}




% header (memoir page style)
\nouppercaseheads
\makepagestyle{mystyle}
\makeevenhead{mystyle}{}{}{\itshape\leftmark\vskip -2mm}
\makeoddhead{mystyle}{}{}{\itshape\leftmark\vskip -2mm}
\makeheadrule{mystyle}{ \textwidth }{.8pt}
\makeevenfoot{mystyle}{}{\thepage}{}
\makeoddfoot{mystyle}{}{\thepage}{}
%\makepsmarks{mystyle}{%
%\createmark{chapter}{left}{nonumber}{}{}}

% bibliography
\let\Oldbibliography\bibliography
\renewcommand{\bibliography}[1]{
	\let\appendix\relax
	\baselineskip=.5cm
	\renewcommand{\bibname}{منابع و مآخذ}
	\clearpage
	\phantomsection
	\bibliographystyle{ieeetr-fa}
	\Oldbibliography{#1}
}


% fonts
%% تعریف برای فونت اعداد و ارقام
%\setdigitfont[Scale=1.1]{XB Zar}
%% توسط دستورات defpersianfont و deflatinfont به ترتیب می توان یکسری فونت فارسی و انگلیسی دیگر تعریف کرد که در جاهای دیگر متن بتوان از آن استفاده کرد. برای استفاده کافی است که عبارتی که می خواهیم فونت آن عوض شود را به صورت زیر به عنوان نمونه بنویسیم.
\defpersianfont\tablefont[Scale=.8]{XM Traffic}
\defpersianfont\pejoheshfont[Scale=1.4]{B Titr}
\defpersianfont\groupfont[Scale=1.4]{B Zar}
\defpersianfont\titlefont[Scale=2.4]{B Titr}
\defpersianfont\versionfont[Scale=1.6]{B Mitra}
\defpersianfont\payanFont[Scale=1.8]{XB Niloofar}
\defpersianfont\nastaliq[Scale=2]{IranNastaliq}
\defpersianfont\farsifontshafigh[Scale=1.3]{XB Niloofar}
\defpersianfont\titrt[Scale=1]{XB Titre}
\defpersianfont\traffict[Scale=1]{B Traffic}
\defpersianfont\farsifontsayeh[Scale=1.5]{XB Kayhan Sayeh}
\defpersianfont\titlefont[Scale=2.4]{B Titr}
\defpersianfont\logofontR[Scale=1.2]{B Zar}
\defpersianfont\typefontR[Scale=1.3]{B Nazanin}
\defpersianfont\titlefontR[Scale=2]{B Titr}
\defpersianfont\datafontR[Scale=1.4]{B Zar}
\deflatinfont\tableFontEn[Scale=.9]{XB Niloofar}

\newcommand{\defaultfonts}{
\settextfont[Scale=1.4]{XB Niloofar} % Scale * 10pt(in LoadClass) = Real Size
\setlatintextfont[Scale=1.4]{Traditional Arabic} % for texts in \lr{}
}
\defaultfonts
% بازنویسی محیط tabular به منظور تنظیم فونت‌های جدول
\let\oldtabular\tabular
\let\endoldtabular\endtabular
\renewenvironment{tabular}{\bgroup
	\settextfont[Scale=1.2]{XB Niloofar}
	\setlatintextfont[Scale=1.1]{Times New Roman}
	\oldtabular}
{\endoldtabular \egroup}


%math fonts
\DefaultMathsDigits
%\DeclareMathSizes{textsize}{mathsize}{scriptsize}{scriptscriptsize}
\DeclareMathSizes{10}{13}{8}{7}   % For size 10 text
\DeclareMathSizes{11}{12}{11}{10}   % For size 11 text
\DeclareMathSizes{12}{13}{12}{11}  % For size 12 text
\DeclareMathSizes{14}{15}{14}{13}  % For size 14 text

%theorem
\theoremstyle{plain}
\newtheorem{theorem}{قضیه}
\newtheorem{lemma}{لم}
\newtheorem{proposition}{گزاره}
\theoremstyle{definition}
\newtheorem{definition}{تعریف}
\newtheorem{example}{مثال}
\newtheorem{prob}{سوال}
\theoremstyle{remark}
\newtheorem{corollary}{نتیجه}
\newtheorem{remark}{ملاحظه}


%footnotes
\setlength{\footnotesep}{0.5cm} % فاصله پاورقی با متن
\setlength{\skip\footins}{2cm} % فاصله بین خطوط در پاورقی
%\textwidthfootnoterule

%toc
\setcounter{tocdepth}{4}
%% با این دستور در فهرست مطالب در هنگام آوردن شماره و عنوان فصل در ابتدای آن یک کلمه فصل می گذارد
\renewcommand*{\cftchaptername}{فصل\space}

%figure
\makeatletter
\let\oldfigure\figure
\def\figure{\@ifnextchar[\figure@i \figure@ii}
\def\figure@i[#1]{\oldfigure[#1]\centering}
\def\figure@ii{\oldfigure\centering}
\makeatother

% algorithm
\floatname{algorithm}{الگوریتم}
\newsavebox{\ieeealgbox}
\newenvironment{boxedalgorithmic}
{\begin{lrbox}{\ieeealgbox}
		\begin{minipage}{\dimexpr\columnwidth-2\fboxsep-2\fboxrule}
			\begin{algorithmic}}
			{\end{algorithmic}
		\end{minipage}
	\end{lrbox}\noindent\fbox{\usebox{\ieeealgbox}}}

%caption
\captionsetup{margin=10pt,font=small,labelfont=bf,textfont={small},skip=9pt}

%hyperref
\hypersetup{
	%% موقعی که فایل پی دی اف خروجی را باز می کنید صفحه به صورت عریض و بزرگ باز می شود.
	pdfmenubar=false, pdfstartview=FitH, 
	%% در قسمت مراجع شماره صفحه ای که به آن مرجع ارجاع داده است را وارد می کند،
	%% مواردی که برای فعال سازی این که شماره اشکال را به صورت ارجاعی نشان دهد
	%pagebackref =true,hyperfigures=true,
	%% به جای استفاده از مربع قرمز دور موارد ارجاعی از لینک های رنگی استفاده کند.
colorlinks=true,
	%% رنگ برخی از لینک ها در زیر تعریف شده است. 
%linkcolor=blue, anchorcolor=green, citecolor=magenta, urlcolor=cyan, filecolor=magenta, pdftoolbar=true
linkcolor=black, anchorcolor=black, citecolor=black, urlcolor=black, filecolor=black, pdftoolbar=true
	%bookmarksopen = true,
	%bookmarksopenlevel = 1
	%%% اگر این option را true‌ بکنیم، آن‌گاه در کنار bookmark شماره فصل و بخش و زیربخش نیز می آید. مثلا می‌نویسد: ۱.۲ طراحی شبکه
	%bookmarksnumbered = true
}


%chaptering style
\setcounter{secnumdepth}{3} % 3-number depth for chapter numbers
%\SepMark{-} % separator for chapter numbers

% more white space in the first page of each chapter
\makeatletter
\defpersianfont\chaptertitlefont[Scale=1.6]{B Titr}
\newcommand\mycustomraggedright{%
\if@RTL\raggedleft%
\else\raggedright%
\fi}
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
\ifnum \c@secnumdepth >-2\relax
\huge\bfseries \partname\nobreakspace\thepart
\par
\vskip 20\p@
\fi
\LARGE\bfseries #2\par}%
\@endpart}
\def\@makechapterhead#1{%
\vspace*{200\p@}%
{\parindent \z@ \raggedleft \normalfont
\ifnum \c@secnumdepth >\m@ne
\if@mainmatter
\huge\bfseries \@chapapp\space \thechapter
\par\nobreak
\vskip 20\p@
\fi
\fi
\interlinepenalty\@M
\Huge \bfseries \raggedleft{ #1}\par\nobreak
\vskip 50\p@
}}
%اگه می‌خواین که کلمه «فصل» رو هم داشته باشین، خط پایین رو غیرفعال کنین.
%\renewcommand{\chaptername}{}
%  نکته جانبی و بی‌ربط به این بحث: اگه می‌خواین که صفحات اول هر فصل، شماره صفحه نداشته باشن، ۹ خط پایین رو فعال کنین.
%\let\origchapter\chapter
%\renewcommand*{\chapter}{% 
%  \fancypagestyle{plain}{%
%    %\fancyhf{}%
%    \renewcommand{\headrulewidth}{0pt}%
%    \renewcommand{\footrulewidth}{0pt}%
%  }%
%\origchapter
%}
\makeatother


% glossaries
\newcommand{\FaToEnName}{واژه‌نامه فارسی به انگلیسی}
\newcommand{\EnToFaName}{واژه‌نامه انگلیسی به فارسی}
\newglossary[blg]{FaToEn}{bls}{blo}{\FaToEnName}
\newglossary[glg]{EnToFa}{gls}{glo}{\EnToFaName}
\makeglossaries
\glsdisablehyper

\newglossarystyle{mylistFa}{%
	\renewenvironment{theglossary}{}{}%
	\renewcommand*{\glossaryheader}{}%
	\renewcommand*{\glsgroupheading}[1]{}%
	%\renewcommand*{\glsgroupheading}[1]{\subsection*{\glsgetgrouptitle{##1}}}%
	\renewcommand*{\glsgroupskip}{}%
	\renewcommand*{\glossaryentryfield}[5]{%
		\noindent\glstarget{##1}{##2}
		\dotfill
		\space \lr{##3} \\
	}%
	\renewcommand*{\glossarysubentryfield}[6]{%
		\glossaryentryfield{##2}{##3}{##4}{##5}{##6}}%
}
\newglossarystyle{mylistEn}{%
	\renewenvironment{theglossary}{}{}%
	\renewcommand*{\glossaryheader}{}%
	\renewcommand*{\glsgroupheading}[1]{}%
	%\renewcommand*{\glsgroupheading}[1]{\begin{LTR}\subsection*{\glsgetgrouptitle{##1}}\end{LTR}}%
	\renewcommand*{\glsgroupskip}{}%
	\renewcommand*{\glossaryentryfield}[5]{%
		\noindent\lr{\glstarget{##1}{##2}
		\penalty0\hbox{}\nolinebreak\dotfill
		\space \rl{##3}} \\
	}%
	\renewcommand*{\glossarysubentryfield}[6]{%
		\glossaryentryfield{##2}{##3}{##4}{##5}{##6}}%
}

% توسط این دستور واژه مورد نظر در متن، هر دو واژه نامه و پاورقی می آید.
\newcommand{\inpdic}[2]{\newglossaryentry{fa-#1}{type=FaToEn,name={#1}, sort={#1},description={#2}}\gls{fa-#1}\LTRfootnote{#2}\newglossaryentry{en-#1}{type=EnToFa,name={#2}, sort={#2},description={#1}}\glsuseri{en-#1}}
