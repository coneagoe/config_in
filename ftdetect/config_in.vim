if exists("did_load_filetypes")
    finish
endif

augroup filetypedetect
    au! BufRead,BufNewFile Config.in config_in 
"    au! BufRead,BufNewFile *.xyzsetfiletype drawing
augroup END
