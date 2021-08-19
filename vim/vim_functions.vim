" custom vim functions

" move window {{{1 ------------------------------------------------------------
function! WinMove(key) abort
    let t:curwin = winnr()
    exec "wincmd ".a:key
    if (t:curwin == winnr())
        call inputsave()
        let fname = input("File: ", "", "file")
        call inputrestore()

        if (a:key == 'j')
            set splitbelow
            exec "split " . fname
        elseif (a:key == 'k')
            set nosplitbelow
            exec "split " . fname
        elseif (a:key == 'l')
            set splitright
            exec "vsplit " . fname
        else " key is h
            set nosplitright
            exec "vsplit " . fname
        endif
        exec "wincmd ".a:key
    endif
endfunction
" end move window 1}}} --------------------------------------------------------
