"if exists("did_load_filetypes")
"    finish
"endif

augroup config_in_sty
    au! BufRead,BufNewFile Config.in config_in 
"    au! BufRead,BufNewFile *.xyzsetfiletype drawing
    call s:ConfiginFormatting()
augroup END

function s:ConfiginFormatting()
    setlocal tabstop=8
    setlocal shiftwidth=8
    setlocal softtabstop=8
    setlocal textwidth=72
    setlocal noexpandtab
    " strip tailing whitespace
    autocmd BufWritePre <buffer> %s/\s\+$//e
endfunction

command! ConfiginCodingStyle call s:ConfiginFormatting()
