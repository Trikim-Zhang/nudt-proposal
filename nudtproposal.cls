%% This is file `nudtproposal.cls',
% 出现任何问题请联系（zhangxinhang19@foxmail.com）
% 该模板的著作权属于（zhangxinhang19@foxmail.com）
\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{nudtproposal}[2024/07/07 v1.0 nudtproposal document class]

% --- Loadclass Infomation --- %
\LoadClass[a4paper,12pt]{article}

% --- Required Packages --- %
% 中文支持
\RequirePackage[fontset=none]{ctex}
\RequirePackage{zhnumber}
\RequirePackage{indentfirst}
\RequirePackage{xunicode-addon}
\RequirePackage[T1]{fontenc}
\RequirePackage{datetime}
% 页面设置
\RequirePackage[includeheadfoot]{geometry}
% 标题设置
\RequirePackage[center,pagestyles]{titlesec}
% 浮动体
\RequirePackage[section]{placeins}
\RequirePackage{float}
% 图片
\RequirePackage{graphicx}
\graphicspath{{image/}{images/}{image/svg/}{figure/}{figures/}{resources/}}
\RequirePackage{subfig}
% 表格
\RequirePackage{array}
\RequirePackage{longtable}
\RequirePackage{makecell}
\RequirePackage{booktabs}
\RequirePackage{multirow}
\RequirePackage{tabularx}
% 列表
\RequirePackage[neverdecrease]{paralist}
\RequirePackage{enumitem}
% 公式、定理
\RequirePackage{amsmath,amsfonts,amssymb,amsthm}
\RequirePackage[Symbolsmallscale]{upgreek}
\interdisplaylinepenalty=2500
\RequirePackage{bm}
\theoremstyle{plain}% default
\newtheorem{theorem}{定理} %
\newtheorem{lemma}[theorem]{引理} %
\newtheorem{proposition}[theorem]{命题} %
\newtheorem*{corollary}{推论} %
\theoremstyle{definition} %
\newtheorem{definition}{定义} %
\newtheorem{conjecture}{猜想} %
\newtheorem{example}{例} %
\theoremstyle{remark} %
\newtheorem{case}{\normalfont\bfseries 案例} %
\renewcommand*{\proofname}{\normalfont\bfseries 证明} %
% 算法环境
\RequirePackage[linesnumbered,ruled]{algorithm2e}
% 参考文献
\RequirePackage[backend=biber,style=gb7714-2015,
% gbalign=right,
gbnamefmt=lowercase,gbpub=false,doi=false,url= false]{biblatex}
\RequirePackage{biblatex-ext-tabular}
% 超链接
\RequirePackage{hyperref}
% 超链接设置
\hypersetup{
    % xetex,
    % unicode=false, % hyperref 和 xetex 同时使用时不能开启 Unicode 选项.
    pdfstartview=FitH,
    CJKbookmarks=true,
    bookmarksnumbered=true,
    bookmarksopen=true,
    colorlinks, %注释掉此项则交叉引用为彩色边框(将colorlinks和pdfborder同时注释掉)
    pdfborder=001,   %注释掉此项则交叉引用为彩色边框
    allcolors=black,
    breaklinks=true
}
% 交叉引用
\RequirePackage{cleveref}
%% crefformat settings
\crefformat{figure}{#2图~#1#3}
\crefrangeformat{figure}{图~#3#1#4\;到{}\;#5#2#6}
\crefmultiformat{figure}{图~#2#1#3}{和~#2#1#3}{，#2#1#3}{和~#2#1#3}
\crefformat{table}{#2表#1#3}
\crefrangeformat{table}{表#3#1#4\;到{}\;#5#2#6}
\crefmultiformat{table}{表~#2#1#3}{和~#2#1#3}{，#2#1#3}{和~#2#1#3}
\crefformat{equation}{#2式~(#1#3)}
\crefrangeformat{equation}{式~(#3#1#4)\;\~{}\;(#5#2#6)}
\crefmultiformat{equation}{式~(#2#1#3)}{ 和~(#2#1#3)}{，(#2#1#3)}{ 和~(#2#1#3)}
% 颜色
\RequirePackage[usenames,dvipsnames,table]{xcolor}
% 插入pdf页面
\RequirePackage{pdfpages}

% ---  Fonts --- %
% ttf字体 (Windows)
\newcommand{\installttf}{
    %%%% Windows Thesis Fonts
    \setmainfont{Times New Roman}
    \setsansfont{Arial}
    \setmonofont{Courier New}
    %%%% Using Office Family Fonts
    \setCJKmainfont[BoldFont={STZhongsong}]{SimSun}
    \setCJKsansfont{SimHei} % Hei
    \setCJKmonofont{FangSong} % Fangsong
    %%%% alias
    \setCJKfamilyfont{song}[AutoFakeBold={2.17}]{SimSun}
    \setCJKfamilyfont{hei}{SimHei}
    \setCJKfamilyfont{fs}[AutoFakeBold={2.17}]{仿宋_GB2312.ttf} % fang-song
    \setCJKfamilyfont{kai}{KaiTi} % Kai
    \setCJKfamilyfont{fzxbsjw}[AutoFakeBold={2.17}]{FZXBSJW.TTF} % 方正小标宋简体
}
\installttf
\newcommand{\cusong}{\bfseries}
\newcommand{\song}{\CJKfamily{song}}     % 宋体
\newcommand{\fs}{\CJKfamily{fs}}         % 仿宋体
\newcommand{\kai}{\CJKfamily{kai}}       % 楷体
\newcommand{\hei}{\CJKfamily{hei}}       % 黑体
\newcommand{\fzxbsjw}{\CJKfamily{fzxbsjw}}  % 方正小标宋   
\def\songti{\song}
\def\fangsong{\fs}
\def\kaishu{\kai}
\def\heiti{\hei}
\def\fangzhengxiaobiaosongjw{\fzxbsjw}
\newcommand{\fttilde}{\fontspec{FreeSerif}\selectfont}
\newcommand{\pozhehao}{\kern0.2em\rule[0.8ex]{1.6em}{0.1ex}\kern0.2em}
\newcommand{\xiaopozhe}{\kern0.2em\rule[0.8ex]{0.6em}{0.1ex}\kern0.2em}
\newcommand{\china}{中华人民共和国}
\def\nudtpaper{\textsc{Nudt}\textsc{Paper}}

% --- 带圈数字 --- %
\RequirePackage{tikz}
\usetikzlibrary{calc}
\newcommand*\circled[1]{\tikz[baseline = (char.base)]{
  \node[shape = circle, draw, inner sep = 1pt] (char) {\small #1};}}
\RequirePackage{etoolbox}
\robustify{\circled}

% --- 标题样式 --- %
\titleformat{\section}{\bfseries\heiti \zihao{-4}}{\zhnumber{\thesection} 、}{0pt}{}[\numgdef\sectionpage{\number\value{page}}
\ifnumequal{\value{section}}{7}{\numgdef\pageafsecseven{\number\value{page}}}{}]
\titlespacing*{\section} {0pt}{0ex}{.2ex} % 设置标题前后间距
\titleformat{\subsection}{\zihao{-4} \bfseries}{\thesubsection}{5 pt}{}
\titlespacing*{\subsection} {0pt}{0ex}{.2ex}
\titleformat{\subsubsection}{\zihao{-4}}{\thesubsubsection}{5 pt}{}
\titlespacing*{\subsubsection} {0pt}{0ex}{.2ex}

% --- Page Layout --- %
\geometry{top=27mm,bottom=25.4mm,left=30mm,right=30mm}
\geometry{headheight=7.7mm,headsep=4.3mm,footskip=7.9mm}
%% specifies the amount of space between paragraphs.
\setlength{\parskip}{0.5ex plus 0.25ex minus 0.25ex}
%% line spacing
\renewcommand{\baselinestretch}{1.4} % line space setting
\renewcommand\setheadrule[1]{%
  \ifdim#1=\z@
    \let\makeheadrule\@empty
  \else
    \def\makeheadrule{%
    % \makebox[0pt][l]{\rule[.2\baselineskip]{\linewidth}{1.5pt}}%
    \rule{\linewidth}{0.4bp}}%
  \fi}
\newpagestyle{description}{
  \sethead{}{\raisebox{.65\baselineskip}{\songti \zihao{-4} 国防科技大学研究生学位论文开题报告}}{}%
  \setfoot{}{}{}%
  \headrule%
}
\renewpagestyle{plain}{
\sethead{}{\raisebox{.65\baselineskip}{\songti \zihao{-4} 国防科技大学研究生学位论文开题报告}}{}%
\setfoot{}{{\songti \zihao{5} \thepage}}{}%
\headrule%
}

% --- 绘制框线 --- %
\RequirePackage{draftwatermark}
\numgdef\sectionpage{0}
\numgdef\pageafsecseven{10000}
\newcommand\FrameforSectionWM{%
\ifboolexpr{ test {\ifnumequal{\sectionpage}{0}}
or test {\ifnumequal{\value{section}}{5}}
or test {\ifnumequal{\value{section}}{6}}
or test {\ifnumgreater{\value{page}}{\pageafsecseven}}
}
{}{%
\ifnumequal{\value{page}}{\sectionpage}
{\tikz{\draw[line width=0.4pt] (0,0) rectangle (\textwidth+2mm,\textheight-0.6cm);}}
{\tikz{\draw[line width=0.4pt] (0,0) rectangle (\textwidth+2mm,\textheight+3mm);}}%
}%
}
\DraftwatermarkOptions{anchor=lb, pos={2.9cm,26.60cm},markcmd=\FrameforSectionWM}

% --- 图、表 --- %
% 重定义图表标题
\renewcommand\figurename{图}
\renewcommand\tablename{表}
\DeclareCaptionLabelFormat{nudt}{{\zihao{5}\song#1~\rmfamily #2}}
\DeclareCaptionLabelSeparator{nudt}{\hspace{1em}}
\DeclareCaptionFont{nudt}{\zihao{5}}
\captionsetup{labelformat=nudt,labelsep=nudt,font=nudt}
\captionsetup[table]{position=top,belowskip=0bp \@plus 2bp \@minus 2bp,aboveskip=6bp \@plus 2bp \@minus 2bp}%
\captionsetup[figure]{position=bottom,belowskip=-3bp \@plus 2bp \@minus 2bp,aboveskip=6bp \@plus 2bp \@minus 2bp}%
\captionsetup[subfloat]
{labelformat=simple,font=nudt,captionskip=6bp,nearskip=6bp,farskip=0bp,topadjust=0bp}
\renewcommand{\thesubfigure}{(\alph{subfigure})}
\renewcommand{\thesubtable}{(\alph{subtable})}
\let\nudt@oldlongtable\longtable
\let\nudt@endoldlongtable\endlongtable
\renewenvironment{longtable}%
    {\bgroup%
    \zihao{5}
    \nudt@oldlongtable}%
  {\nudt@endoldlongtable\egroup}
\newenvironment{slongtable}%
  {\bgroup%
  \zihao{-4}
  \nudt@oldlongtable}%
{\nudt@endoldlongtable\egroup}

% 算法
\renewcommand{\algorithmcfname}{算法}
\AtBeginEnvironment{algorithm}{
    \zihao{5}
    \SetAlgoLined
    \SetKwInOut{Input}{输入}
    \SetKwInOut{Output}{输出}
    \DontPrintSemicolon 
}

% --- 参考文献 --- %
% def bibtabular
\RequirePackage{ragged2e}
% \setlength{\RaggedRightRightskip}{0pt plus 4em}
\newcolumntype{L}[1]{
  >{\RaggedRight\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
\newcolumntype{C}[1]{%
  >{\centering\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}

\defbibtabular{bibtabular}
  {\setlength{\LTpre}{0pt}%
   \setlength{\LTpost}{0pt}%
   \renewcommand*{\arraystretch}{1.5}%
   \begin{longtable}{%
     @{}
     |C{\dimexpr0.1\textwidth-\tabcolsep\relax}|
      L{\dimexpr0.86\textwidth-\tabcolsep\relax}|
     @{}}
     \hline
     \zihao{-4}{序号} & \multicolumn{1}{c|}{\zihao{-4}{文献目录（作者、题目、刊物名、出版时间、页次）}}\\
     \hline
     \endfirsthead}
  {\end{longtable}}
  {\anchor{\mkgbnumlabel{\printfield{labelnumber}}}
   & \driver{} \\\hline}

%--- Labels in Chinese Titlepage --- %
\newtoks\confidentiality % 密级√
\newtoks\papernumber % 编号√
\newtoks\degree % xx研究生学位论文√

\newtoks\title % 标题第1行
\newtoks\subtitle % 标题第2行
\newtoks\degreetype % 学位类别
\newtoks\authorid % 学号√
\newtoks\author % 作者√
\newtoks\major % 一级学科√
\newtoks\field % 研究方向√
\newtoks\advisor % 指导教师√
\newtoks\advisortitle % 职称√
\newtoks\institute % 学院√
\newtoks\zhdate % 开题时间√
\newtoks\year 
\newtoks\month
\newtoks\day

% 定义中文日期
\def\CJK@today{\zhdigits{\the\year}年\zhnumber{\the\month}月}
\renewcommand\zhtoday{\CJK@today}

%  --- Make Titlepage --- %
\renewcommand\maketitle{%
  \cleardoublepage
  \pagenumbering{Roman}
  \thispagestyle{empty}
  {
  \vspace*{-50pt}
  \zihao{4}
  \begin{tabular}{c}
    \includegraphics[width = .2\textwidth]{figure/logo.pdf} 
  \end{tabular}%
  \hfill
  \begin{tabular}{cp{4.5em}<{\centering}}
    {\mdseries\heiti 密级：} &  {\mdseries\heiti \the\confidentiality} \\
    \cline{2-2}
    {\mdseries\heiti 编号：} & {\mdseries\heiti \the\papernumber}\\
  \cline{2-2}    
  \end{tabular}%
  }
  \vspace{25pt}
  \begin{center}
    % {\zihao{1}\bfseries\heiti 国防科技大学}\\
    {\zihao{1}\fangzhengxiaobiaosongjw 国防科技大学}\\
    \vspace*{45pt}
    {\fontsize{28bp}{12}\selectfont \bfseries\heiti \the\degree 研究生学位论文} \\
    \vspace*{25pt}
    {\fontsize{28bp}{12}\selectfont \bfseries\heiti 开题报告}\\
    \vspace*{55pt}
    {\zihao{3}
      \begin{tabular}{p{2.5cm}p{3.2cm}<{\raggedleft}cp{3.2cm}<{\raggedleft}p{3cm}}
        {\bfseries\heiti 论文题目}： & \multicolumn{3}{c}{\fangsong \the\title} \\
        \cline{2-4}        & \multicolumn{3}{c}{{\fangsong \the\subtitle}} \\
        \cline{2-4}    {\bfseries\heiti 学\hfill{}号}： &  \multicolumn{1}{c}{\fangsong \the\authorid}   & {\bfseries\heiti 姓\hfill{}名} ：&  \multicolumn{1}{c}{\fangsong \the\author}\\
        \cline{2-2}\cline{4-4}    {\bfseries\heiti 学\hfill{}科\hfill{}专\hfill{}业：} & \multicolumn{3}{c}{{\fangsong \the\major}} \\
        \cline{2-4}    {\bfseries\heiti 研\hfill{}究\hfill{}方\hfill{}向：} & \multicolumn{3}{c}{{\fangsong \the\field}} \\
        \cline{2-4}    {\bfseries\heiti 指导教师}： &  \multicolumn{1}{c}{\fangsong \the\advisor}   & {\bfseries\heiti 职\hfill{}称}： &  \multicolumn{1}{c}{\fangsong \the\advisortitle}\\
        \cline{2-2}\cline{4-4}    {\bfseries\heiti 学\hfill{}院：} & \multicolumn{3}{c}{{\fangsong \the\institute}} \\
        \cline{2-4}    {\bfseries\heiti 开题时间}：& \multicolumn{1}{c}{\underline{\makebox[2.8cm]{\fangsong \the\year}}}{\bfseries\heiti 年}   & \multicolumn{1}{c}{\underline{\makebox[2cm]{\fangsong \the\month}}}{\bfseries\heiti 月}   & \multicolumn{1}{c}{\underline{\makebox[2cm]{\fangsong \the\day}}}{\bfseries\heiti 日} \\ 
      \end{tabular}%

      \vspace*{40pt}
      \vspace*{16pt}

      \begin{tabular}{p{400pt}<{\centering}}
         {\bfseries\heiti 国防科技大学研究生院制}  \\
         {\bfseries\heiti \zhtoday}
        %  {\bfseries\heiti \the\zhdate}
      \end{tabular}
  }
  \end{center}
  \clearpage

  % --- 说明页 --- %
  \pagestyle{description}
  \begin{center}
  	{\bfseries\heiti \zihao{2} 说 \qquad 明}
  \end{center}
  {\songti \zihao{-4}

    一、开题报告应按下述要求打印后装订成册：
    
    1. 使用A4白纸，双面打印；
    
    2. 封面中填写内容使用三号仿宋字体；

    3. 表中填写内容使用小四号宋体。
    
    二、编号由学院教学科研处（教务处）填写，由9位数字组成。

    \hspace*{-10pt}
    \begin{tabular}{llll}
      \underline{2311} & \underline{05} & \underline{001} & 计算机学院于2023年11月审批的第1份开题报告 \\
      \circled{1} & \circled{2} & \circled{3} &  \\
    \end{tabular}%

    \circled{1}： 审批时间代码。精确到年月，如2311表示审批时间为2023年11月；

    \circled{2}：	审批单位代码。01-理学院，02-计算机学院，03-电子科学学院，04-前沿\\交叉学科学院，05-智能科学学院，06-系统工程学院，07-空天科学学院，08-国际\\关系学院，09-信息通信学院，10-电子对抗学院，11-气象海洋学院，12-军政基础\\教育学院，00-其他单位；

    \circled{3}：审批流水号代码。 
  %   \item 开题报告表中学员填写的内容包括学位论文选题的立论依据、文献综述、研究内容、研究条件、学位论文工作计划、主要参考文献等，指导教师认可学员开题报告内容后，对学员学位论文选题价值、对国内/外研究现状的了解情况、研究内容、研究方案等方面予以评价。
  %   \item 开题报告评议小组一般由3-5名具有正高级专业技术职务的专家（包括导师）组成，其中一名为跨一级学科的专家。
  % \item 若开题报告获得通过，应根据评议小组意见对开题报告进行修改，并在开题报告会后两周内，将评议表和修订后开题报告纸质版原件交学院备案；若开题报告未获得通过，则填报延期开题申请，由原开题报告评议小组重新组织开题报告会。
  }
  \clearpage
  \pagenumbering{arabic}
  \pagestyle{plain}
  % \mdfsetup{skipabove=0pt,skipbelow=0pt}
  \zihao{-4}
}
% --- pdf元数据 --- %
\hypersetup{
  pdftitle={偷偷把自己的信息写入pdf源数据},
  pdfauthor={张鑫航},
  pdfsubject={LaTeX 开题报告},
  pdfkeywords={LaTeX,nudt开题报告}
}
\endinput
% --- End of file --- %