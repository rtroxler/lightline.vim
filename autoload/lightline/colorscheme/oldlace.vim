" =============================================================================
" Filename: autoload/lightline/colorscheme/oldlace.vim
" Author: Ryan Troxler
" License: MIT License
" Last Change: 2017/11/28 21:53:01.
" =============================================================================

" Common colors
let s:fg      = [ '#abb2bf', 145 ]
let s:blue    = [ '#3f567b', 75 ]
let s:green   = [ '#3f5b32', 76 ]
let s:orange  = [ '#d75f00', 160 ]
let s:red1    = [ '#e06c75', 168 ]
let s:red2    = [ '#be5046', 168 ]
let s:purple  = [ '#634575', 170 ]
let s:magenta = [ '#714355', 170 ]
let s:yellow  = [ '#e5c07b', 180 ]

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}

if lightline#colorscheme#background() ==# 'light'
  " Light variant
  let s:bg     = [ '#fdf5e6', 255 ]
  let s:gray1  = [ '#494b53', 238 ]
  let s:gray2  = [ '#f0f0f0', 255 ]
  let s:gray3  = [ '#d0d0d0', 250 ]
  let s:green  = [ '#98c379', 35 ]

  let s:p.normal.left     = [ [ s:bg, s:blue, 'bold' ], [ s:gray1, s:gray3 ] ]
  let s:p.normal.middle   = [ [ s:gray1, s:gray2 ] ]
  let s:p.inactive.left   = [ [ s:bg,  s:gray3 ], [ s:bg, s:gray3 ] ]
  let s:p.inactive.middle = [ [ s:gray3, s:gray2 ] ]
  let s:p.inactive.right  = [ [ s:bg, s:gray3 ], [ s:bg, s:gray3 ] ]
  let s:p.insert.left     = [ [ s:bg, s:magenta, 'bold' ], [ s:gray1, s:gray3 ] ]
  let s:p.replace.left    = [ [ s:bg, s:purple, 'bold' ], [ s:gray1, s:gray3 ] ]
  let s:p.visual.left     = [ [ s:bg, s:green, 'bold' ], [ s:gray1, s:gray3 ] ]
else
  " Dark variant
  let s:bg     = [ '#282c34', 235 ]
  let s:gray1  = [ '#5c6370', 241 ]
  let s:gray2  = [ '#2c323d', 235 ]
  let s:gray3  = [ '#3e4452', 240 ]

  let s:p.normal.left     = [ [ s:bg, s:blue, 'bold' ], [ s:fg, s:gray3 ] ]
  let s:p.normal.middle   = [ [ s:fg, s:gray2 ] ]
  let s:p.inactive.left   = [ [ s:gray1,  s:bg ], [ s:gray1, s:bg ] ]
  let s:p.inactive.middle = [ [ s:gray1, s:gray2 ] ]
  let s:p.inactive.right  = [ [ s:gray1, s:bg ], [ s:gray1, s:bg ] ]
  let s:p.insert.left     = [ [ s:bg, s:green, 'bold' ], [ s:fg, s:gray3 ] ]
  let s:p.replace.left    = [ [ s:bg, s:red1, 'bold' ], [ s:fg, s:gray3 ] ]
  let s:p.visual.left     = [ [ s:bg, s:orange, 'bold' ], [ s:fg, s:gray3 ] ]
endif

" Common
let s:p.normal.right   = [ [ s:bg, s:blue, 'bold' ], [ s:bg, s:blue, 'bold' ] ]
let s:p.normal.error   = [ [ s:red2,   s:bg ] ]
let s:p.normal.warning = [ [ s:yellow, s:bg ] ]
let s:p.insert.right   = [ [ s:bg, s:magenta, 'bold' ], [ s:bg, s:magenta, 'bold' ] ]
let s:p.replace.right  = [ [ s:bg, s:purple, 'bold' ], [ s:bg, s:purple, 'bold' ] ]
let s:p.visual.right   = [ [ s:bg, s:green, 'bold' ], [ s:bg, s:green, 'bold' ] ]
let s:p.tabline.left   = [ [ s:bg, s:gray3 ] ]
let s:p.tabline.tabsel = [ [ s:bg, s:orange, 'bold' ] ]
let s:p.tabline.middle = [ [ s:gray3, s:gray2 ] ]
let s:p.tabline.right  = copy(s:p.normal.right)

let g:lightline#colorscheme#oldlace#palette = lightline#colorscheme#flatten(s:p)
