"""REMINDER read commnds for input :r , q <letter> to set macro , :! to use bash script
"set IDE like functions 
execute pathogen#infect()
syntax on
filetype plugin indent on
set nocompatible
filetype plugin on
set backspace=indent,eol,start

" in-insertmode-remap this key for example  inoremap <Space><Space> <Esc>/<++><Enter>"_c4l
autocmd FileType html  inoremap ?? <Esc>/<++><Enter>"_c4l
autocmd FileType markdown  inoremap ?? <Esc>/<++><Enter>"_c4l
autocmd FileType tex  inoremap ?? <Esc>/<++><Enter>"_c4l
autocmd FileType python inoremap ?? <Esc>/<++><Enter>"_c4l
inoremap ;gui <++>
inoremap <C-l> <Esc>/<++><Enter>"_c41
inoremap <C-j> <Esc>/<++><Enter>"_c41
"map <C-j> /<++><Enter>"_c41i
" other mappings for specific filenames  find <string> T=go out of enclosed >
" i  
"autocmd FileType html inoremap ;b <b></b><Space><++><Esc>FbT>i
"autocmd FileType html inoremap ;p <p></p><Space><Enter><Enter><++><Esc>2ki
"autocmd FileType html inoremap ;i <em></em><Space><++><Esc>FeT>i
"""C-language
autocmd FileType c inoremap ( ()<Esc>i
autocmd FileType c inoremap { {}<Esc>i
autocmd FileType c inoremap [ []<Esc>i
autocmd FileType c inoremap " ""<Esc>i

""END
"""C++ language

""END

"""Python 2.7 & 3
autocmd FileType python inoremap ;pr print()<Enter><++><Esc>0k6li
autocmd FileType python inoremap ;int int()<++><Esc>4hi
autocmd FileType python inoremap ;str str()<++><Esc>4hi
autocmd FileType python inoremap ( ()<Esc>i
autocmd FileType python inoremap { {}<Esc>i
autocmd FileType python inoremap [ []<Esc>i
autocmd FileType python inoremap " ""<Esc>i
autocmd FileType python inoremap ;inp input()<Enter><++><Esc>0k$i
autocmd FileType python inoremap ;flo float()<++><Esc>4ha
autocmd FileType python inoremap ;if if<Space><Space>:<Enter><Space><Space><Space><Space><++><Enter><++><Esc>02k3li
autocmd FileType python inoremap ;else else:<Enter><Space><Space><Space><Space><Space><Enter><++><Esc>01k4li
autocmd FileType python inoremap ;elif elif<Space><Space>:<Enter><Space><Space><Space><Space><++><Enter><++><Esc>02k4li
autocmd FileType python inoremap ;while while<Space><Space>:<Enter><Space><Space><Space><Space><++><Enter><++><Esc>01k5li
autocmd FileType python inoremap ;brk break
autocmd FileType python inoremap ;cnt continue
autocmd FileType python inoremap ;imp import<Space><Space>
autocmd FileType python inoremap ;for for<Space><Space>:<Enter><Space><Space><Space><Space><++><Enter><++><Esc>02k4li
autocmd FileType python inoremap ;syse sys.exit()
autocmd Filetype python inoremap ;rng range()<Esc>hi
autocmd Filetype python inoremap ;rintr random.randint(,)<Esc>2hi
autocmd FileType python inoremap ;def def<Space><Space>:<Enter><Space><Space><Space><Space><++><Esc>0k4li
"""END

"""LATEX
function! WC()
	let filename = expand("%")
	let cmd = "detex" . filename . " | wc -w | tr -d [:space:]"
	let result = system(cmd)
	echo result . "words"
endfunction
command WC call WC()
autocmd FileType tex map <F7> :!bibtex<Space>%<Enter>
autocmd FileType tex map <F5> :!pdflatex<Space>%<Enter>
autocmd Filetype tex map <F8> :!latex<Space>%<Enter>
"autocmd Filetype tex map <F9> :
autocmd FileType tex inoremap ;zz <Esc><Esc>:w<Esc><Esc>:!pdflatex<Space>%<Enter>
autocmd FileType tex inoremap ;fr \begin{frame}<Enter>\frametitle{}<Enter><Enter><++><Enter><Enter>\end{frame}<Enter><Enter><++><Esc>6kf}i
autocmd FileType tex inoremap ;fi \begin{fitch}<Enter><Enter>\end{fitch}<Enter><Enter><++><Esc>3kA
autocmd FileType tex inoremap ;exe \begin{exe}<Enter>\ex<Space><Enter>\end{exe}<Enter><Enter><++><Esc>3kA
autocmd FileType tex inoremap ;em \emph{}<Space><++><Esc>T{i
autocmd FileType tex inoremap ;bf \textbf{}<Space><++><Esc>T{i
autocmd FileType tex inoremap ;it \textit{}<Space><++><Esc>T{i
autocmd FileType tex inoremap ;ct \textcite{}<Space><++><Esc>T{i
autocmd FileType tex inoremap ;cp \parencite{}<Space><++><Esc>T{i
autocmd FileType tex inoremap ;glos {\gll<Space><++><Space>\\<Enter><++><Space>\\<Enter>\trans{``<++>''}}<Esc>2k2bcw
autocmd FileType tex inoremap ;x \begin{xlist}<Enter>\ex<Space><Enter>\end{xlist}<Esc>kA<Space>
autocmd FileType tex inoremap ;ol \begin{enumerate}<Enter><Enter>\end{enumerate}<Enter><Enter><++><Esc>3kA\item<Space>
autocmd FileType tex inoremap ;ul \begin{itemize}<Enter><Enter>\end{itemize}<Enter><Enter><++><Esc>3kA\item<Space>
autocmd FileType tex inoremap ;li <Enter>\item<Space>
autocmd FileType tex inoremap ;ref \ref{}<Space><++><Esc>T{i
autocmd FileType tex inoremap ;tab \begin{tabular}<Enter><++><Enter>\end{tabular}<Enter><Enter><++><Esc>4kA{}<Esc>i
autocmd FileType tex inoremap ;ot \begin{tableau}<Enter>\inp{<++>}<Tab>\const{<++>}<Tab><++><Enter><++><Enter>\end{tableau}<Enter><Enter><++><Esc>5kA{}<Esc>i
autocmd FileType tex inoremap ;can \cand{}<Tab><++><Esc>T{i
autocmd FileType tex inoremap ;con \const{}<Tab><++><Esc>T{i
autocmd FileType tex inoremap ;v \vio{}<Tab><++><Esc>T{i
autocmd FileType tex inoremap ;a \href{}{<++>}<Space><++><Esc>2T{i
autocmd FileType tex inoremap ;sc \textsc{}<Space><++><Esc>T{i
autocmd FileType tex inoremap ;sec \section{}<Enter><Enter><++><Esc>2kf}i
autocmd FileType tex inoremap ;ssec \subsection{}<Enter><Enter><++><Esc>2kf}i
autocmd FileType tex inoremap ;sssec \subsubsection{}<Enter><Enter><++><Esc>2kf}i
autocmd FileType tex inoremap ;st <Esc>F{i*<Esc>f}i
autocmd FileType tex inoremap ;beg \begin{%DELRN%}<Enter><++><Enter>\end{%DELRN%}<Enter><Enter><++><Esc>4kfR:MultipleCursorsFind<Space>%DELRN%<Enter>c
"autocmd FileType tex inoremap ;up \usepackage{}<Esc>i
"autocmd FileType tex inoremap ;up <Esc>/usepackage<Enter>o\usepackage{}<Esc>i
autocmd FileType tex nnoremap ;up /usepackage<Enter>o\usepackage{}<Esc>i
autocmd FileType tex inoremap ;tt \texttt{}<Space><++><Esc>T{i
autocmd FileType tex inoremap ;bt {\blindtext}
autocmd FileType tex inoremap ;nu $\varnothing$
autocmd FileType tex inoremap ;col \begin{columns}[T]<Enter>\begin{column}{.5\textwidth}<Enter><Enter>\end{column}<Enter>\begin{column}{.5\textwidth}<Enter><++><Enter>\end{column}<Enter>\end{columns}<Esc>5kA
"""END

"""Logical Symbols
autocmd FileType tex inoremap ;m $$<Space><++><Esc>2T$i
autocmd FileType tex inoremap ;M $$$$<Enter><Enter><++><Esc>2k$hi
autocmd FileType tex inoremap ;neg {\neg}
autocmd FileType tex inoremap ;V {\vee}
autocmd FileType tex inoremap ;or {\vee}
autocmd FileType tex inoremap ;L {\wedge}
autocmd FileType tex inoremap ;and {\wedge}
autocmd FileType tex inoremap ;ra {\rightarrow}
autocmd FileType tex inoremap ;la {\leftarrow}
autocmd FileType tex inoremap ;lra {\leftrightarrow}
autocmd FileType tex inoremap ;fa {\forall}
autocmd FileType tex inoremap ;ex {\exists}
autocmd FileType tex inoremap ;dia {\Diamond}
autocmd FileType tex inoremap ;box {\Box}

autocmd Filetype tex inoremap ;nom {\textsc{nom}}
autocmd FileType tex inoremap ;acc {\textsc{acc}}
autocmd FileType tex inoremap ;dat {\textsc{dat}}
autocmd FileType tex inoremap ;gen {\textsc{gen}}
autocmd FileType tex inoremap ;abl {\textsc{abl}}
autocmd FileType tex inoremap ;voc {\textsc{voc}}
autocmd FileType tex inoremap ;loc {\textsc{loc}}
autocmd Filetype tex inoremap ;inst {\textsc{inst}}
"autocmd FileType tex inoremap ;
"""IPA
autocmd FileType tex inoremap ;tipa \textipa{}<Space><Esc>T{i
autocmd FileType tex inoremap ;ae {\ae}
autocmd FileType tex inoremap ;A {\textscripta}
autocmd FileType tex inoremap ;dh {\dh}
autocmd FileType tex inoremap ;yogh {\textyogh}
autocmd FileType tex inoremap ;j {\textdyoghlig}
autocmd FileType tex inoremap ;uh {\textschwa}
autocmd FileType tex inoremap ;eps {\textepsilon}
autocmd FileType tex inoremap ;gam {\textgamma}
autocmd FileType tex inoremap ;I {\textsci}
autocmd FileType tex inoremap ;sh {\textesh}
autocmd FileType tex inoremap ;th {\texttheta}
autocmd FileType tex inoremap ;Th {\textthorn}
autocmd FileType tex inoremap ;TH {\textthorn}
autocmd FileType tex inoremap ;ups {\textupsilon}
autocmd FileType tex inoremap ;ph {\textphi}
autocmd FileType tex inoremap ;om {\textomega}
autocmd FileType tex inoremap ;sig {\textsigma}
autocmd FileType tex inoremap ;oe {\oe}
autocmd FileType tex inoremap ;ng {\ng}
autocmd FileType tex inoremap ;au {\textopeno}
autocmd FileType tex inoremap ;O {\textopeno}
autocmd FileType tex inoremap ;glot {\textglotstop}
autocmd FileType tex inoremap ;ch {\textteshlig}
"""END

"""HTML
autocmd FileType html inoremap ;b <b></b><Space><++><Esc>FbT>i
autocmd FileType html inoremap ;i <em></em><Space><Esc>FeT>i
autocmd FileType html inoremap ;1 <h1></h1><Enter><Enter><++><Esc>2kf<i
autocmd FileType html inoremap ;2 <h2></h2><Enter><Enter><++><Esc>2kf<i
autocmd FileType html inoremap ;3 <h3></h3><Enter><Enter><++><Esc>2kf<i
autocmd FileType html inoremap ;p <p></p><Enter><Enter><++><Esc>02kf>a
autocmd FileType html inoremap ;a <a<Space>href=""><++></a><Space><++><Esc>F"i
autocmd FileType html inoremap ;ul <ul><Enter><li></li><Enter></ul><Enter><Enter><++><Esc>03kf<i
autocmd FileType html inoremap ;li <Esc>o<li></li><Esc>F>a
autocmd FileType html inoremap ;ol <ol><Enter><li></li><Enter></ol><Enter><Enter><++><Esc>03kf<i

"""END

""".bib
autocmd FileType bib inoremap ;a @article{<Enter><Tab>author<Space>=<Space>"<++>",<Enter><Tab>year<Space>=<Space>"<++>",<Enter><Tab>title<Space>=<Space>"<++>",<Enter><Tab>journal<Space>=<Space>"<++>",<Enter><Tab>volume<Space>=<Space>"<++>",<Enter><Tab>pages<Space>=<Space>"<++>",<Enter><Tab>}<Enter><++><Esc>8kA,<Esc>i
autocmd FileType bib inoremap ;b @book{<Enter><Tab>author<Space>=<Space>"<++>",<Enter><Tab>year<Space>=<Space>"<++>",<Enter><Tab>title<Space>=<Space>"<++>",<Enter><Tab>publisher<Space>=<Space>"<++>",<Enter><Tab>}<Enter><++><Esc>6kA,<Esc>i
autocmd FileType bib inoremap ;c @incollection{<Enter><Tab>author<Space>=<Space>"<++>",<Enter><Tab>title<Space>=<Space>"<++>",<Enter><Tab>booktitle<Space>=<Space>"<++>",<Enter><Tab>editor<Space>=<Space>"<++>",<Enter><Tab>year<Space>=<Space>"<++>",<Enter><Tab>publisher<Space>=<Space>"<++>",<Enter><Tab>}<Enter><++><Esc>8kA,<Esc>i
"""END

autocmd Filetype markdown inoremap ;b ****<Space><++><Esc>F*hi
autocmd Filetype markdown inoremap ;s ~~~~<Space><++><Esc>F~hi
autocmd Filetype markdown inoremap ;e **<Space><++><Esc>F*i
autocmd Filetype markdown inoremap ;h ====<Space><++><Esc>F=hi
autocmd Filetype markdown inoremap ;i ![](<++>)<Space><++><Esc>F[a
autocmd Filetype markdown inoremap ;a [](<++>)<Space><++><Esc>F[a
autocmd Filetype markdown inoremap ;1 #<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap ;2 ##<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap ;3 ###<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap ;l --------<Enter>
""END

set number
"gui settings
"set t_8f=\[[38;2;%lu;%lu;%lum
"set t_8b=\[[48;2;%lu;%lu;%lum
let g:solarized_termcolors=256
let g:solarized_termtrans=1
let g:lucius_termtrans=1
"let g:lucius_style "black_high_contrast"
"set -ga terminal-overrides ',xterm-256color:Tc'
"set -g default-terminal "screen-256color"
"set termguicolors
set background=dark
"end gui settings
syntax enable "enable syntax processing
highlight ExtraWhitespace ctermbg=4
match ExtraWhitespace /\s\+$/
"vim-spell checker set to f6
map <F6> :setlocal spell! spelllang=en_us<CR>
"map <F10> :Goyo<CR>
colorscheme slate " NeoSolarized slate koehler, I previousley used slate and hate the yellow comments and numbers


" Bull shit

