%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% first version: bodiebook v0.1
%% LaTeX BOOK Template
%% Template by Wd, <wd20060220@gmail.com>
%% 2014/11/16 v1.0 Tsinghua University Wd
%%
%% wangfanstar version: mactexbook
%% add ctex to support chinese characters
%% add 黑体，宋体，隶书，楷体，仿宋
%% add 字号
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{mactexbook}[2015/07/31 v1.0 wangfanstar]

\LoadClass[10.5pt,fancyhdr,openany,a4paper]{book}
\RequirePackage{elocalloc}
%% TL2015用于代替etex，解决 No room for a new\dimen的问题
\RequirePackage{ctex}
\RequirePackage{floatrow}  %% floatrow必须放在前一点防止冲突TEXLIVE2015

%=============================== Fonts ==========================================%
%=================================================================================%

\RequirePackage{amsfonts}
%\RequirePackage[utf8]{inputenc}
\RequirePackage{kpfonts}
\RequirePackage{fontspec,unicode-math}

\setmainfont[Ligatures=TeX]{Times New Roman}


%\setCJKmainfont[BoldFont={STHeiti},ItalicFont=STKaiti] {STSong}
%\setCJKsansfont{STHeiti}
%\setCJKmonofont{STFangsong}
%
%\setCJKfamilyfont{zhsong}{STSong}
%\setCJKfamilyfont{zhhei}{STHeiti}
%\setCJKfamilyfont{zhkai}{STKaiti}
%\setCJKfamilyfont{zhfs}{STFangsong}
%\setCJKfamilyfont{zhli}{LiSu}
%\setCJKfamilyfont{zhyou}{YouYuan}
%\newcommand*{\lishu}{\CJKfamily{zhli}} % 隶书
%\newcommand*{\youyuan}{\CJKfamily{zhyou}} % 幼圆
%\newcommand{\song}{\songti}
%\newcommand{\fs}{\fangsong}
%\newcommand{\hei}{\heiti}
%\newcommand{\kai}{\kaishu}
%\newcommand{\li}{\lishu}
%\newcommand{\you}{\youyuan}


\newcommand{\yihao}{\fontsize{26pt}{36pt}\selectfont}    % 一号, 1.4倍行距
\newcommand{\erhao}{\fontsize{22pt}{28pt}\selectfont}    % 二号, 1.25倍行距
\newcommand{\xiaoer}{\fontsize{18pt}{18pt}\selectfont}    % 小二, 单倍行距
\newcommand{\sanhao}{\fontsize{16pt}{24pt}\selectfont}    % 三号, 1.5倍行距
\newcommand{\xiaosan}{\fontsize{15pt}{22pt}\selectfont}    % 小三, 1.5倍行距
\newcommand{\sihao}{\fontsize{14pt}{21pt}\selectfont}    % 四号, 1.5倍行距
%\newcommand{\banxiaosi}{\fontsize{13pt}{19.5pt}\selectfont}    % 半小四, 1.5倍行距
\newcommand{\xiaosi}{\fontsize{12pt}{18pt}\selectfont}    % 小四, 1.5倍行距
\newcommand{\dawuhao}{\fontsize{11pt}{11pt}\selectfont}    % 大五号, 单倍行距
\newcommand{\wuhao}{\fontsize{10.5pt}{10.5pt}\selectfont}    % 五号, 单倍行距

%Font size customize
\newcommand{\fontsizec}[1]{\fontsize{#1}{\baselineskip}\selectfont}

%\RequirePackage{times,txfonts}  %times new roman

%=============================== Math ============================================%
%=================================================================================%

\RequirePackage{amsmath,amsthm}
%\RequirePackage[mathstyleoff]{breqn}% a math package

%=============================== Page Layout =====================================%
%=================================================================================%

\RequirePackage{geometry}
\RequirePackage{multicol}
\RequirePackage[newparttoc]{titlesec}

\RequirePackage{titletoc,shorttoc} %style of titles and table of contents
\RequirePackage{fancyhdr} %header and footer
\RequirePackage{indentfirst}

%=============================== Floating Objects ================================%
%=================================================================================%

\RequirePackage{makecell,array} % tables
\RequirePackage{graphicx,multirow,bm,subfig,picinpar}% figures
\RequirePackage[figuresright]{rotating}
\RequirePackage{longtable,multirow}
\RequirePackage{supertabular}
\RequirePackage[online]{threeparttable}
\RequirePackage{booktabs,dcolumn,tabu}% three lines table
\RequirePackage{tikz}%drawing figures
\newcolumntype{,}{D{,}{}{-1}}
\newcolumntype{.}{D{.}{.}{-1}}
\def\hed#1{\multicolumn{1}{c}{#1}}
\def\mur#1{\multirow{1}{*}{#1}}
\RequirePackage{caption,calc}

%=============================== Other Settings ==================================%
%=================================================================================%
\definecolor{darkblue}{HTML}{005C8E}

\RequirePackage{ifthen}%logitic judgements
\RequirePackage{enumitem}
\RequirePackage{indentfirst,lettrine}%indent first, lettrine effect
\RequirePackage{natbib}
\RequirePackage[nottoc]{tocbibind}%add references into toc
\RequirePackage[xetex,
                pdfstartview=FitH,
                CJKbookmarks=true,
                bookmarksnumbered=true,
                bookmarksopen=false,
                colorlinks,
                pdfborder=001,   %color borders
                linkcolor=black,
                anchorcolor=black,
                citecolor=darkblue]{hyperref} %bookmarks
%\RequirePackage[xetex]{hyperref} %bookmarks
\hypersetup{pdfencoding=auto,bookmarksdepth=4,bookmarksopenlevel=0,
             pdfauthor={wangfanstar@163.com},pdftitle={linux process note},pdfsubject={linux},pdfkeywords={linux}}
\RequirePackage{attachfile2}
\RequirePackage[open,openlevel=0,atend]{bookmark}
\RequirePackage{fancyvrb,sverb}

%============ Basic Layout Settings (themes and colors) ==========================%
%=================================================================================%

% loads a color scheme
\newcommand*{\wdtexbookcolor}[1]{
  \RequirePackage{wdtexbookcolor#1}}

% loads a style scheme
\newcommand*{\wdtexbooktheme}[1]{
  \RequirePackage{wdtexbooktheme#1}}


%=========================== Refernce Settings====================================%
%=================================================================================%

%\makeatletter
%\def\@cite#1#2{\textsuperscript{[{#1\if@tempswa , #2\fi}]}}
%\makeatother

%======================= Table and Figure Settings================================%
%=================================================================================%

\newcommand{\PreserveBackslash}[1]{\let\temp=\\#1\let\\=\temp}
\newcolumntype{C}[1]{>{\PreserveBackslash\centering}p{#1}}
\newcolumntype{R}[1]{>{\PreserveBackslash\raggedleft}p{#1}}
\newcolumntype{L}[1]{>{\PreserveBackslash\raggedright}p{#1}}
\makeatletter
\newenvironment{tablehere}
  {\def\@captype{table}}
 {}

\newenvironment{figurehere}
 {\def\@captype{figure}}
 {}
\makeatother%tablehere environment

%Units in header
\def\tabunit#1{\llap{\lower \belowcaptionskip \hbox{#1} \hspace{.03\textwidth}}}


%=================== Enumerates Environment Settings==============================%
%=================================================================================%
\setenumerate{label={\rm \arabic*.},leftmargin=0pt,labelindent=\parindent,labelsep=*,itemindent=1.75\parindent}
\setitemize{leftmargin=0pt,labelindent=\parindent,labelsep=*,itemindent=1.5\parindent}


%====================== Other Predefinitions======================================%
%=================================================================================%
\def\Wd{\hbox{$\mathcal W\kern-.1em\lower.5ex\hbox{$\mathcal D$}$}}
\def\wv{\ensuremath{\scriptsize{\sim}}}
\newcommand{\grad}{\ensuremath{^{\circ}}}%degree
%Roman numbers
\makeatletter
\newcommand{\rmnum}[1]{\romannumeral #1}
\newcommand{\Rmnum}[1]{\expandafter\@slowromancap\romannumeral #1@}
\makeatother

\RequirePackage{lipsum}

\newcommand{\switchgeometry}{
  \newgeometry{left=1in,
             right=2.3346in,
             top=1in,
             bottom=1in,
             headsep=1cm,
             marginparwidth=85pt,
             marginparsep=11pt}

\fancypagestyle{plain}{%
    \fancyhf{} % clear all header and footer fields
    \fancyfootoffset[OR]{\dimexpr\marginparsep+\marginparwidth\relax}
    \fancyfootoffset[EL]{\dimexpr\marginparsep+\marginparwidth\relax}
    \fancyfoot[RO]{\small{\bfseries\color{black}\thepage}}
    \fancyfoot[LE]{\small{\bfseries\color{black}\thepage}}
}
}

\newcommand{\wdstartdoc}{
\addtocontents{toc}{\protect\begin{multicols}{2}}
\setcounter{page}{1}
\renewcommand{\thepage}{\arabic{page}}
}

\newcommand{\wdenddoc}{
\addtocontents{toc}{\protect\end{multicols}}
}

\renewcommand\contentsname{\sanhao\heiti 目~~~录}
\renewcommand\listfigurename{\sanhao\heiti 图目录}
\renewcommand\listtablename{\sanhao\heiti 表目录}
\renewcommand{\chaptername}{第~\thechapter~章}
%\renewcommand{\contentslabel}{第~\thecontentslabel~章}

\renewcommand\thefigure{图 \arabic{chapter}-\arabic{figure}~}%将图号1.1改成1-1
\renewcommand\thetable{表 \arabic{chapter}-\arabic{table}~}%将表号1.1改成1-1

\renewcommand*\bibname{参考文献}    %book类型
%\renewcommand\refname{参考文献}     %article类型
\renewcommand*\indexname{索\quad 引}    %


\endinput
