set nocompatible
colorscheme desert

" Включение  Юникода
set encoding=utf-8
set termencoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,utf-16le,cp1251,koi-8,cp866

"Also note that UTF8 files often begin with a Byte Order Mark (BOM) which indicates endianness. The BOM is optional but some programs use it exclusively to determine the file encoding. Under certain conditions Vim will write the BOM but sometimes it won't. To explicitly set the BOM do this:
"set bomb



if has("gui_running")
	if has("gui_gtk2")
		set guifont=Inconsolata\ 12
	elseif has("gui_win32")
		" Отображение кириллицы во внутренних сообщениях программы
		lan mes ru_RU.UTF-8

		" Отображение кириллицы в меню
		source $VIMRUNTIME/delmenu.vim
		set langmenu=ru_RU.UTF-8
		source $VIMRUNTIME/menu.vim

		" Установка шрифта
		set guifont=Consolas:h14
		source $VIMRUNTIME/mswin.vim
		behave mswin

		" Убрать верхнее меню и тулбар
		set guioptions-=T
		set guioptions-=m
		endif
endif

" Включение поддержки русского языка
set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0
highlight lCursor guifg=NONE guibg=Cyan

" Формат Файла - от него зависит код завершения строки
":set ff=unix
":set ff=dos

" словари С ё
:setlocal spell spelllang=ru_yo,en_us

" Язык помощи
set helplang=ru

" Включить подсветку синтаксиса
syntax on

"Включение автоматического перечитывания файла при изменении
set autoread

" Автоматически устанавливать текущей, директорию отрытого файла
set autochdir

" История команд
set history=150

" Максимальное количество изменений, которые могут быть отменены
set undolevels=5000

" Показывать номера в начале строки
set number
set relativenumber
"
" Автоотступ
set autoindent
" set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4

" Сворачивание блоков по отступам
set foldenable
set foldmethod=syntax
set foldcolumn=3

 hi User1 guibg=#C2BFA5 guifg=#363636 ctermbg=gray ctermfg=Darkblue
 hi User2 guibg=#C2BFA5 guifg=DarkGreen ctermbg=gray ctermfg=DarkGreen
 hi User3 guibg=#C2BFA5 guifg=red ctermbg=gray ctermfg=red
 hi User4 guibg=#C2BFA5 guifg=#CD6600 ctermbg=gray ctermfg=red
 hi User5 guibg=#C2BFA5 guifg=#8B4500 ctermbg=gray ctermfg=red

 hi LineNr guibg=#2B2B2B guifg=#737373 ctermfg=grey
 
" Last status
set noruler
set laststatus=2 " always show the status line
set statusline=%1*%F%*       "tail of the filename
set statusline+=%2*\ \ [%{strlen(&fenc)?&fenc:'none'}, "file encoding
set statusline+=%{&ff}]%* "file format
set statusline+=%3*\ %h%*      "help file flag
set statusline+=%3*\ %m%*      "modified flag
set statusline+=%3*\ %r%*      "read only flag
set statusline+=\ %=\ col:%4*%c%*,     "cursor column
set statusline+=\ row:%4*%l%*/%4*%L%*   "cursor line/total lines
set statusline+=\ %1*%P%*    "percent through file

" Сохранение
imap <F2>   <ESC> :w<CR>
map <F2>    :w<CR>

" Просмотр структуры директории
imap <F4>    <ESC> :Texplore<CR>
map <F4>    <ESC> :Texplore<CR>

" Включение/отключение орфографии
nmap <F7> :set spell!<CR>i
imap <F7> <Esc>:set spell!<CR>i
vmap <F7> <Esc>:set spell!<CR>i

"Смена индикации ошибок
highlight clear SpellBad
highlight SpellBad ctermfg=Red

highlight clear SpellCap
highlight SpellCap ctermfg=Blue

highlight clear SpellLocal
highlight SpellLocal ctermfg=Green

"set wildmenu
"set smarttab
"Включаем 256 цветов в терминале, мы ведь работаем из иксов?
"Нужно во многих терминалах, например в gnome-terminal
"set t_Co=256
