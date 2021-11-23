nnoremap <leader>ca :!conda activate 
nnoremap <leader>cf :!conda list -e > requirements.txt<cr>
nnoremap <leader>cfp :!conda list -e > 
nnoremap <leader>ci :!pip install 
nnoremap <leader>cel :!conda env list<cr>
nnoremap <leader>cr :!conda run -n $(fetch-conda-env.sh) python 

