" Explore
nnoremap <silent> <Leader>ed :Explore<CR>
" Quickly input the directory of the current file on the command line
cnoremap <expr> %% explore#command_dir('%%')
" Need 'recursive' mapping here for %%
nmap <Leader>ew :e %%
nmap <Leader>ev :vs %%
nmap <Leader>es :sp %%
nmap <Leader>et :tabe %%

" Explore
nnoremap <silent> <Leader>ed :Explore<CR>
" Quickly input the directory of the current file on the command line
cnoremap <expr> %% explore#command_dir('%%')
" Need 'recursive' mapping here for %%
nmap <Leader>ew :e %%
nmap <Leader>ev :vs %%
nmap <Leader>es :sp %%
nmap <Leader>et :tabe %%

