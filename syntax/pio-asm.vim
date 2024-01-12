if exists("b:current_syntax")
    finish
endif

syntax iskeyword @,48-57,192-255,$,_,.

syntax keyword pio_keyword jmp wait in out push pull mov irq set nop
syntax region pio_comment start=";" end="$"
syntax keyword pio_directive .define \.program .origin .side_set .wrap_target .wrap .lang_opt .word
syntax match pio_number /[0-9]\+/
syntax match pio_number /0x[0-9A-Fa-f]\+/
syntax match pio_number /0b[0-1]\+/
syntax keyword pio_var x y

highlight link pio_keyword Keyword
highlight link pio_comment Comment
highlight link pio_number Number
highlight link pio_var Identifier
highlight link pio_directive PreProc

let b:current_syntax = "pio-asm"
