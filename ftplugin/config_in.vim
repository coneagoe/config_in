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
    call s:ConfiginFormatting()
augroup END
