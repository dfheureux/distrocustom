" Paquetes Vundle
" ==================================================================================================
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
    Plugin 'gmarik/Vundle.vim'
    Plugin 'flazz/vim-colorschemes'
    Bundle 'Yggdroot/indentLine'
    Bundle 'jiangmiao/auto-pairs'
call vundle#end()
filetype plugin indent on

" Mis configuraciones
" ==================================================================================================
    syntax on                       " Activa el resaltado de sintaxis
    set cursorline                  " Resalta la linea actual
    set expandtab                   " Convierte <TAB> a espacios
    set hlsearch                    " Resalta las coincidencias de la busqueda
    set nowrap                      " Deshabilita la particion de lineas largas
    set number                      " Muestra los numeros de linea absoluto
    set relativenumber              " Muestra los numeros de linea relativo
    set shiftwidth=4                " Ancho de la indentacion = 4
    set tabstop=4                   " Ancho del <TAB> = 4

    " Esquemas de colores
    " ----------------------------------------------------------------------------------------------
        " colorscheme babymate256
        " colorscheme blackboard
        " colorscheme blazer
        colorscheme Monokai
        " colorscheme ron

    " Configuracion especial para cada lenguaje
    " ----------------------------------------------------------------------------------------------
        " Todos
        highlight Type ctermfg=blue

        " Java
        autocmd BufNewFile,BufRead *.java syn keyword Keyword public
        autocmd BufNewFile,BufRead *.java syn keyword Keyword private
        autocmd BufNewFile,BufRead *.java syn keyword Keyword protected

        " HTML
        autocmd BufNewFile,BufRead *.htm  let g:AutoPairs={'(':')', '[':']', '{':'}',"'":"'",'"':'"', '`':'`', '<':'>'}
        autocmd BufNewFile,BufRead *.html let g:AutoPairs={'(':')', '[':']', '{':'}',"'":"'",'"':'"', '`':'`', '<':'>'}

    " Trucos
    " ----------------------------------------------------------------------------------------------
        " Cambia el color de fondo pasando las 100 columnas
        " http://stackoverflow.com/questions/2447109/
        let &colorcolumn=join(range(101,999),",")

        " Esto es para el plugin indentLine
        " https://github.com/Yggdroot/indentLine
        let g:indentLine_char = "│"
        let g:indentLine_color_term = 240

        " Cambia el estilo de las parejas de () [] {}
        " http://stackoverflow.com/questions/10746750/set-vim-bracket-highlighting-colors
        hi MatchParen cterm=bold ctermbg=none ctermfg=blue

        " Resalta la busqueda de palabras (presiona * en modo normal)
        " http://stackoverflow.com/questions/3431184/highlight-all-occurrence-of-a-selected-word
        " http://stackoverflow.com/questions/7103173/
        hi Search ctermbg=gray ctermfg=black

    " Atajos de Teclado
    " ----------------------------------------------------------------------------------------------
        " Oculta/Muestra los numeros de linea con la combinacion: <Ctrl-N><Ctrl-N>
        " http://vim.wikia.com/wiki/Display_line_numbers
        nmap <C-N><C-N> :set invnumber invrelativenumber<CR>
