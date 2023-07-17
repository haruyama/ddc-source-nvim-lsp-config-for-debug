autocmd!

let g:dein#lazy_rplugins = v:true
let g:dein#install_progress_type = 'title'
let g:dein#enable_notification = v:true

let s:dein_dir = expand('~/.cache/dein-nvim-debug')
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

if &runtimepath !~# '/dein.vim'
  if !isdirectory(s:dein_repo_dir)
    execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
  endif
  execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')
endif

call dein#begin(s:dein_dir)

call dein#load_toml('~/.config/nvim/dein.toml', {'lazy': 0})
call dein#load_toml('~/.config/nvim/dein_lazy.toml', {'lazy': 1})

call dein#end()
call dein#save_state()

if dein#check_install()
  call dein#install()
endif
