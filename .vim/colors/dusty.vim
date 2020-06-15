" Yet Another Useless Scheme

set bg=dark
hi clear
if exists("syntax_on")
	syntax reset
endif

let colors_name = "dusty"

hi Normal		guifg=#c0c0c0 guibg=#000040						ctermfg=15 ctermbg=8
hi ErrorMsg		guifg=#ffffff guibg=#287eff						ctermfg=bg ctermbg=red
hi Visual		guifg=#8080ff guibg=fg		gui=reverse				ctermbg=bg cterm=reverse
hi VisualNOS	guifg=#8080ff guibg=fg		gui=reverse,underline	ctermfg=lightblue ctermbg=fg cterm=reverse,underline
hi Todo			guifg=#d14a14 guibg=#1248d1						ctermfg=red	ctermbg=darkblue
hi Search		guifg=#90fff0 guibg=#2050d0						ctermfg=white ctermbg=darkblue cterm=underline term=underline
hi IncSearch	guifg=#b0ffff guibg=#2050d0							ctermbg=bg cterm=reverse

hi SpecialKey		guifg=cyan			ctermfg=darkcyan
hi Directory		guifg=cyan			ctermfg=cyan
hi Title			guifg=magenta gui=none ctermfg=magenta cterm=bold
hi WarningMsg		guifg=red			ctermfg=red
hi WildMenu			guifg=yellow guibg=black ctermfg=yellow ctermbg=black cterm=none term=none
hi ModeMsg			guifg=#22cce2		ctermfg=bg ctermbg=yellow
hi MoreMsg			ctermfg=darkgreen	ctermfg=darkgreen
hi Question			guifg=green gui=none ctermfg=green cterm=none
hi NonText			guifg=#0030ff		ctermfg=darkblue

hi StatusLine	guifg=blue guibg=darkgray gui=none		ctermfg=black ctermbg=blue term=none cterm=none
hi StatusLineNC	guifg=black guibg=darkgray gui=none		ctermfg=black ctermbg=blue term=none cterm=none
hi VertSplit	guifg=black guibg=darkgray gui=none		ctermfg=black ctermbg=blue term=none cterm=none

hi Folded	guifg=#808080 guibg=#000040			ctermfg=darkgrey ctermbg=black cterm=bold term=bold
hi FoldColumn	guifg=#808080 guibg=#000040			ctermfg=darkgrey ctermbg=black cterm=bold term=bold
hi LineNr	guifg=#90f020			ctermfg=15 cterm=none

hi DiffAdd	guibg=darkblue	ctermbg=darkblue term=none cterm=none
hi DiffChange	guibg=darkmagenta ctermbg=magenta cterm=none
hi DiffDelete	ctermfg=blue ctermbg=cyan gui=bold guifg=Blue guibg=DarkCyan
hi DiffText	cterm=bold ctermbg=red gui=bold guibg=Red

hi Cursor	guifg=black guibg=yellow ctermfg=black ctermbg=yellow
hi lCursor	guifg=black guibg=white ctermfg=black ctermbg=white

hi String guifg=#80a0ff ctermfg=13
hi Comment	guifg=#80a0ff ctermfg=7
hi Constant	ctermfg=9 guifg=#ffa0a0 cterm=none
hi Special	ctermfg=6 guifg=Orange cterm=none gui=none
hi Identifier	ctermfg=4 guifg=#40ffff cterm=none
hi Statement	ctermfg=2 cterm=none guifg=#ffff60 gui=none
hi PreProc	ctermfg=13 guifg=#ff80ff gui=none cterm=none
hi type		ctermfg=4 guifg=#60ff60 gui=none cterm=none
hi Underlined	cterm=underline term=underline
hi Ignore	guifg=bg ctermfg=bg

" suggested by tigmoid, 2008 Jul 18
hi Pmenu guifg=#c0c0c0 guibg=#404080
hi PmenuSel guifg=#c0c0c0 guibg=#2050d0
hi PmenuSbar guifg=blue guibg=darkgray
hi PmenuThumb guifg=#c0c0c0
