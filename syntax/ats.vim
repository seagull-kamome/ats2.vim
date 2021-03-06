" Vim syntax file
" Language: ATS
" Maintainer: Calvin Rose
" Latest Revision: 02/07/2018

if exists("b:current_syntax")
    finish
endif

" ATS-Postiats is case sensitive.
syn case match

" Comments
syn region atsComment start="(\*" end="\*)" contains=atsComment
syn region atsCComment start="/\*" end="\*/"
syn match atsCComment "//.*$"
syn region atsEofComment start="////" end="882b654d-264f-4203-9a5d-d3d1f4a3a219"
highlight link atsComment Comment
highlight link atsCComment Comment
highlight link atsEofComment Comment

" Keywords
" Keywords covered on https://github.com/githwxi/ATS-Postiats/wiki/keywords
syntax keyword atsKeyword absprop abstype absview absviewtype absvtype addr@ assertloc 
syntax keyword atsKeyword castfn dataprop datatype dataview dataviewtype datavtype dynload
syntax keyword atsKeyword extern fn fun infix infixr infixl implement of overload postfix prefix
syntax keyword atsKeyword primplement primplmnt propdef sif sta stadef val staload symintr 
syntax keyword atsKeyword tkindef typedef val val- val+ var view@ viewdef viewtypedef with withtype
syntax keyword atsKeyword datasort stacst praxi prfn prfun and macdef
syntax keyword atsKeyword $extype $extval

" Other keywords or otherwise common tokens
syntax keyword atsKeyword in let val
syntax keyword atsKeyword fix fnx
syntax keyword atsKeyword extern implement
syntax keyword atsKeyword end
syntax keyword atsKeyword exception
syntax keyword atsKeyword where lam local
highlight link atsKeyword Keyword

syntax keyword atsConditional case case+ case- if else then
highlight link atsConditional Conditional

" very common type and sorts
syntax keyword atsTypes void bool Bool int Int uint uInt nat Nat
syntax keyword atsTypes uchar uChar ucharNZ schar sChar scharNZ
syntax keyword atsTypes byte int8 Int8 uint8 uInt8 int16 Int16 uint16 uInt16
syntax keyword atsTypes int32 Int32 uint32 uInt32 int64 Int64 uint64 uInt64
syntax keyword atsTypes lint ulint llint ullint
syntax keyword atsTypes intptr uintptr sint usint
syntax keyword atsTypes size_t Size ssize_t SSize
syntax keyword atsTypes list list_vt string ptr addr type t@ype
highlight link atsTypes Type

syn match atsModPath "\u\(\w\|'\)*\."he=e-1

syn match atsCharacter +#"\\""\|#"."\|#"\\\d\d\d"+
syn match atsCharErr +#"\\\d\d"\|#"\\\d"+
syn region atsString start=+"+ skip=+\\\\\|\\"+ end=+"+
highlight link atsString String

syn match atsFunDef "=>"
syn match atsRefAssign ":="
syn match atsTopStop ";;"
syn match atsOperator "\^"
syn match atsOperator "::"
syn match atsAnyVar "\<_\>"
syn match atsKeyChar "!"
syn match atsKeyChar ";"
syn match atsKeyChar "\*"
syn match atsKeyChar "="

syn match atsNumber "\<-\=\d\+\>"
syn match atsNumber "\<-\=0[x|X]\x\+\>"

let b:current_syntax = "ats"
