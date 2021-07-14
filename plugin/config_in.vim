"if exists("did_load_filetypes")
"    finish
"endif

function s:ConfiginFormatting()
    setlocal tabstop=8
    setlocal shiftwidth=8
    setlocal softtabstop=8
    setlocal textwidth=72
    setlocal noexpandtab
    " strip tailing whitespace
    autocmd BufWritePre <buffer> %s/\s\+$//e
endfunction


augroup config_in_sty
    au! BufRead,BufNewFile Config.in setfiletype config_in 
    call s:ConfiginFormatting()
augroup END


command! ConfiginCodingStyle call s:ConfiginFormatting()
