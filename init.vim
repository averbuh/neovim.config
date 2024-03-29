let mapleader=";"

autocmd BufRead,BufNewFile Jenkinsfile set filetype=groovy


set encoding=utf-8

set number
set noswapfile
set scrolloff=7
set mouse=a  " enable mouse
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set fileformat=unix
filetype indent on 
set smartindent

tnoremap <Esc> <C-\><C-n>

"let g:SimpylFold_docstring_preview = 1
"let g:SimpylFold_fold_docstring = 1
"let b:SimpylFold_fold_docstring = 1
"let g:SimpylFold_fold_import = 1
"let b:SimpylFold_fold_import = 1
"let g:SimpylFold_fold_blank = 0 
"let b:SimpylFold_fold_blank = 0 

set colorcolumn=79
highlight ColorColumn ctermbg=238


""" Change ESC key
inoremap jk <esc>

""" Unmark found words
nnoremap ,<space> :nohlsearch<CR>

""" Disable arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

call plug#begin()
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-default branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'

" Initialize plugin system
" - Automatically executes `filetype plugin indent on` and `syntax enable`.
call plug#end()
" You can revert the settings after the call like so:
"   filetype indent off   " Disable file-type-specific indentation
"   syntax off            " Disable syntax highlighting

call plug#begin()
"  " main one
"  Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
"  " 9000+ Snippets
"  Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}
"
"  " lua & third party sources -- See https://github.com/ms-jpq/coq.thirdparty
"  " Need to **configure separately**
"
"  Plug 'ms-jpq/coq.thirdparty', {'branch': '3p'}
"  " - shell repl
"  " - nvim lua api
"  " - scientific calculator
"  " - comment banner
"  " - etc

  Plug 'kyazdani42/nvim-web-devicons'
  Plug 'romgrk/barbar.nvim'
  Plug 'neovim/nvim-lspconfig'
  Plug 'hashivim/vim-terraform'
  Plug 'SirVer/ultisnips'
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  Plug 'azabiong/vim-highlighter'
  Plug 'yuezk/vim-js'
  Plug 'HerringtonDarkholme/yats.vim'
  Plug 'maxmellon/vim-jsx-pretty'
  Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': 'python3 -m chadtree deps'}
  Plug 'EdenEast/nightfox.nvim'
  Plug 'lukas-reineke/indent-blankline.nvim'
  Plug 'nvim-lualine/lualine.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'sindrets/diffview.nvim'
  Plug 'potamides/pantran.nvim'
  Plug 'RRethy/nvim-base16' 
  Plug 'deoplete-plugins/deoplete-jedi'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'terrastruct/d2-vim'

""  Plug 'Shougo/echodoc.vim' 
""  let g:echodoc#type = 'echo' " Default value
""  set cmdheight=2
""  let g:echodoc_enable_at_startup = 1
""
""  if has('nvim')
""    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
""  else
""    Plug 'Shougo/deoplete.nvim'
""    Plug 'roxma/nvim-yarp'
""    Plug 'roxma/vim-hug-neovim-rpc'
""  endif
""  let g:deoplete#enable_at_startup = 1
""  let g:deoplete#sources#jedi#show_docstring = 0
""  let g:deoplete#sources#jedi#enable_typeinfo = 0
""  let g:deoplete#sources#jedi#statement_length = 20
""  Plug 'hrsh7th/cmp-nvim-lsp'
""  Plug 'hrsh7th/cmp-buffer'
""  Plug 'hrsh7th/cmp-path'
""  Plug 'hrsh7th/cmp-cmdline'
""  Plug 'hrsh7th/nvim-cmp'
""" For ultisnips users.
""  Plug 'SirVer/ultisnips'
""  Plug 'quangnguyen30192/cmp-nvim-ultisnips'
" Plug 'tmhedberg/SimpylFold'
  Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }

call plug#end()



" ___CMP(COMPLETION)___

""set completeopt=menu,menuone,noselect
""
""lua <<EOF
""  -- Set up nvim-cmp.
""  local cmp = require'cmp'
""
""  cmp.setup({
""    snippet = {
""      -- REQUIRED - you must specify a snippet engine
""      expand = function(args)
""        vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
""        -- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
""        -- require('snippy').expand_snippet(args.body) -- For `snippy` users.
""        -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
""      end,
""    },
""    window = {
""      -- completion = cmp.config.window.bordered(),
""      -- documentation = cmp.config.window.bordered(),
""    },
""    mapping = cmp.mapping.preset.insert({
""      ['<C-k>'] = cmp.mapping.scroll_docs(-4),
""      ['<C-f>'] = cmp.mapping.scroll_docs(4),
""      ['<C-Space>'] = cmp.mapping.complete(),
""      ['<C-e>'] = cmp.mapping.abort(),
""      ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
""    }),
""  
""    sources = cmp.config.sources({
""      { name = 'nvim_lsp' },
""      { name = 'ultisnips' }, -- For vsnip users.
""      -- { name = 'luasnip' }, -- For luasnip users.
""      -- { name = 'ultisnips' }, -- For ultisnips users.
""      -- { name = 'snippy' }, -- For snippy users.
""    }, {
""      { name = 'buffer' },
""    })
""  })
""
""  -- Set configuration for specific filetype.
""  cmp.setup.filetype('gitcommit', {
""    sources = cmp.config.sources({
""      { name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it.
""    }, {
""      { name = 'buffer' },
""    })
""  })
""
""  -- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
""  cmp.setup.cmdline({ '/', '?' }, {
""    mapping = cmp.mapping.preset.cmdline(),
""    sources = {
""      { name = 'buffer' }
""    }
""  })
""
""  -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
""  cmp.setup.cmdline(':', {
""    mapping = cmp.mapping.preset.cmdline(),
""    sources = cmp.config.sources({
""      { name = 'path' }
""    }, {
""      { name = 'cmdline' }
""    })
""  })
""
""  -- Set up lspconfig.
""  local capabilities = require("cmp_nvim_lsp").default_capabilities()
""  -- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
""  require('lspconfig')['bashls'].setup {
""    capabilities = capabilities
""  }
""  require('lspconfig')['pyright'].setup{}
""EOF
""

" ___COLORSCHEME___
colorscheme nightfox

" ___ BARBAR ___

" Move to previous/next
nnoremap <silent>    <A-,> <Cmd>BufferPrevious<CR>
nnoremap <silent>    <A-.> <Cmd>BufferNext<CR>
" Re-order to previous/next
nnoremap <silent>    <A-<> <Cmd>BufferMovePrevious<CR>
nnoremap <silent>    <A->> <Cmd>BufferMoveNext<CR>
" Goto buffer in position...
nnoremap <silent>    <A-1> <Cmd>BufferGoto 1<CR>
nnoremap <silent>    <A-2> <Cmd>BufferGoto 2<CR>
nnoremap <silent>    <A-3> <Cmd>BufferGoto 3<CR>
nnoremap <silent>    <A-4> <Cmd>BufferGoto 4<CR>
nnoremap <silent>    <A-5> <Cmd>BufferGoto 5<CR>
nnoremap <silent>    <A-6> <Cmd>BufferGoto 6<CR>
nnoremap <silent>    <A-7> <Cmd>BufferGoto 7<CR>
nnoremap <silent>    <A-8> <Cmd>BufferGoto 8<CR>
nnoremap <silent>    <A-9> <Cmd>BufferGoto 9<CR>
nnoremap <silent>    <A-0> <Cmd>BufferLast<CR>
" Pin/unpin buffer
nnoremap <silent>    <A-p> <Cmd>BufferPin<CR>
" Close buffer
nnoremap <silent>    <A-x> <Cmd>BufferClose<CR>
" Wipeout buffer
"                          :BufferWipeout
" Close commands
"                          :BufferCloseAllButCurrent
"                          :BufferCloseAllButPinned
"                          :BufferCloseAllButCurrentOrPinned
"                          :BufferCloseBuffersLeft
"                          :BufferCloseBuffersRight
" Magic buffer-picking mode
nnoremap <silent> <C-p>    <Cmd>BufferPick<CR>
" Sort automatically by...
nnoremap <silent> <Space>bb <Cmd>BufferOrderByBufferNumber<CR>
nnoremap <silent> <Space>bd <Cmd>BufferOrderByDirectory<CR>
nnoremap <silent> <Space>bl <Cmd>BufferOrderByLanguage<CR>
nnoremap <silent> <Space>bw <Cmd>BufferOrderByWindowNumber<CR>

" Other:
" :BarbarEnable - enables barbar (enabled by default)
" :BarbarDisable - very bad command, should never be used


" NOTE: If barbar's option dict isn't created yet, create it
let bufferline = get(g:, 'bufferline', {})

" Enable/disable animations
let bufferline.animation = v:true

" Enable/disable auto-hiding the tab bar when there is a single buffer
let bufferline.auto_hide = v:false

" Enable/disable current/total tabpages indicator (top right corner)
let bufferline.tabpages = v:true

" Enable/disable close button
let bufferline.closable = v:true

" Enables/disable clickable tabs
"  - left-click: go to buffer
"  - middle-click: delete buffer
let bufferline.clickable = v:true

" Excludes buffers from the tabline
" let bufferline.exclude_ft = ['javascript']
let bufferline.exclude_name = ['package.json']

" Enable/disable icons
" if set to 'buffer_number', will show buffer number in the tabline
" if set to 'numbers', will show buffer index in the tabline
" if set to 'both', will show buffer index and icons in the tabline
" if set to 'buffer_number_with_icon', will show buffer number and icons in the tabline
let bufferline.icons = v:true

" Sets the icon's highlight group.
" If false, will use nvim-web-devicons colors
let bufferline.icon_custom_colors = v:false

" Configure icons on the bufferline.
let bufferline.icon_separator_active = '▎'
let bufferline.icon_separator_inactive = '▎'
let bufferline.icon_close_tab = ''
let bufferline.icon_close_tab_modified = '●'
let bufferline.icon_pinned = '車'

" If true, new buffers will be inserted at the start/end of the list.
" Default is to insert after current buffer.
let bufferline.insert_at_start = v:false
let bufferline.insert_at_end = v:false

" Sets the maximum padding width with which to surround each tab.
let bufferline.maximum_padding = 4

" Sets the maximum buffer name length.
let bufferline.maximum_length = 30

" If set, the letters for each buffer in buffer-pick mode will be
" assigned based on their name. Otherwise or in case all letters are
" already assigned, the behavior is to assign letters in order of
" usability (see order below)
let bufferline.semantic_letters = v:true

" New buffer letters are assigned in this order. This order is
" optimal for the qwerty keyboard layout but might need adjustement
" for other layouts.
let bufferline.letters =
  \ 'asdfjkl;ghnmxcvbziowerutyqpASDFJKLGHNMXCVBZIOWERUTYQP'

" Sets the name of unnamed buffers. By default format is "[Buffer X]"
" where X is the buffer number. But only a static string is accepted here.
let bufferline.no_name_title = v:null



" ___ LSPCONFIG ___

lua << EOF
 require'lspconfig'.bashls.setup{}
 require'lspconfig'.pyright.setup{flags={ debounce_text_changes = 300,}}
EOF

 " require'lspconfig'.cssmodules_ls.setup{}

autocmd BufWritePre *.tfvars lua vim.lsp.buf.formatting_sync()
autocmd BufWritePre *.tf lua vim.lsp.buf.formatting_sync()

lua << EOF
require'nvim-treesitter.configs'.setup {
}
EOF

" ___ HIGHLIGHT ___

let HiSet   = 'f<CR>'
let HiErase = 'f<BS>'
let HiClear = 'f<C-L>'
let HiFind  = 'f<Tab>'


"local lsp = require "lspconfig"
"local coq = require "coq" -- add this
"
"lsp.<server>.setup(coq.lsp_ensure_capabilities(<stuff...>))

" ___ CHADTree ___

nnoremap <silent>v <cmd>CHADopen<cr>


" ___LANGUAGE TOGGLE___

imap <f2> <c-o>:call ToggleHebrew()<cr>
map <f2> :call ToggleHebrew()<cr>
imap <f3> <c-o>:call ToggleEnglish()<cr>
map <f3> :call ToggleEnglish()<cr>
imap <f4> <c-o>:call ToggleRussian()<cr>
map <f4> :call ToggleRussian()<cr>


func! ToggleHebrew()
  set keymap=hebrew
  inoremap jk חל  
endfunc

func! ToggleEnglish()
  set keymap=
  inoremap jk <esc>
endfunc

func! ToggleRussian()
  set keymap=russian-jcukenwin
  inoremap jk ол
endfunc

" ___LUALINE___
 
lua << END
require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'base16',
    component_separators = { left = '', right = '|'},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}
require('lualine').setup()

END


" ___Telescope___
" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>


"_______________________________________"
" May need for vim (not neovim) since coc.nvim calculate byte offset by count
" utf-8 byte sequence.
set encoding=utf-8
" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Remap keys for refactor code actions.
nmap <silent> <leader>re <Plug>(coc-codeaction-refactor)
xmap <silent> <leader>r  <Plug>(coc-codeaction-refactor-selected)
nmap <silent> <leader>r  <Plug>(coc-codeaction-refactor-selected)

" Run the Code Lens action on the current line.
nmap <leader>cl  <Plug>(coc-codelens-action)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-k> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-k>"
  nnoremap <silent><nowait><expr> <C-l> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-l>"
  inoremap <silent><nowait><expr> <C-k> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-l> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-k> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-k>"
  vnoremap <silent><nowait><expr> <C-l> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-l>"
endif

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocActionAsync('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocActionAsync('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>




