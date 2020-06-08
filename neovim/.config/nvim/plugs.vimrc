" Sgorblex's NeoVim config "
" ~/.config/nvim/plugs.vimrc "
" Vim-Plug plugins "



" Install plugin manager if not present "
if ! filereadable(system('echo -n "$HOME/.local/share/nvim/site/autoload/plug.vim"'))
	echo "Installing vim-plug..."
	silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	echo "Installing plugins..."
	autocmd VimEnter * PlugInstall
endif



" Vim-Plug Plugins
call plug#begin('~/.local/share/nvim/plugged')

" Vim Plug entry 						Plugin Name 				Description

" General "
Plug 'neoclide/coc.nvim', {'branch': 'release'} 		" Conquer of Completion  		Completion engine (extensions: coc-go coc-snippets coc-vimtex coc-explorer coc-calc coc-json)
Plug 'preservim/nerdcommenter' 					" Nerd Commenter 			Auto line commenter
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } 		" Fuzzy Finder 				Quickly find files
Plug 'christoomey/vim-tmux-navigator' 				" Tmux Navigator 			Fast tmux bindings
Plug 'danmann/vim-razer' 					" Vim Razer 				Razer keyboards interactive RGB lightning
Plug 'lilydjwg/colorizer' 					" Colorizer 				Colorize RGB hex codes
Plug 'tpope/vim-surround' 					" Surround 				Fast handling of quotes & similar
Plug 'vim-airline/vim-airline' 					" Airline 				Status bar
Plug 'vim-airline/vim-airline-themes' 				" Airline themes 			Related themes
Plug 'kevinhwang91/rnvimr', {'do': 'make sync'} 		" Ranger on nvim 			CLI file manager directly from vim
Plug 'luochen1990/rainbow' 					" Rainbow 				Parenthesis highlighter
Plug 'unblevable/quick-scope' 					" Quick scope 				Highlight when using f and t
Plug 'mhinz/vim-startify' 					" Startify 				Start screen
Plug 'mhinz/vim-signify' 					" Signify 				Git wrapper

" (Non) Languages support "
Plug 'lervag/vimtex' 						" VimTex 				LaTeX integration
Plug 'suan/vim-instant-markdown', {'for': 'markdown'} 		" Markdown 				Markdown in-browser preview
Plug 'dag/vim-fish' 						" Vim-Fish 				Fish shell scripting support
Plug 'cespare/vim-toml' 					" Vim-Toml 				Tom Language support

" Themes "
" Plug 'dikiaap/minimalist' 					" Minimalist 				Theme
Plug 'morhetz/gruvbox' 						" Gruvbox 				Theme

" Plug 'voldikss/vim-floaterm' 					" Floaterm 				Floating terminal
" Plug 'floobits/floobits-neovim' 				" Floobits 				Real time co-editing
" Plug 'metakirby5/codi.vim' 					" Codi 					Interactive scratchpad
" Plug 'honza/vim-snippets' 					" Honza's snippets 			Collection of snippets
" Plug 'tpope/vim-fugitive' 					" Fugitive				Git wrapper

call plug#end()
