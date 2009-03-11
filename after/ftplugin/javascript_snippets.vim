if !exists('loaded_snippet') || &cp
    finish
endif

let st = g:snip_start_tag
let et = g:snip_end_tag
let cd = g:snip_elem_delim

exec "Snippet proto ".st."className".et.".prototype.".st."methodName".et." = function(".st.et.")<CR>{<CR>".st.et."<CR>};<CR>".st.et
exec "Snippet fun function ".st."functionName".et." (".st.et.")<CR>{<CR><Tab>".st.et."<CR><BS>}<CR>".st.et

exec "Snippet if if(".st.et.")<CR>{<CR>".st.et."<CR>}<CR>".st.et
exec "Snippet for for(var ".st."i".et."=".st."num".et."; ".st."i".et."<".st."var".et.".length; ".st."i".et."++)<CR>{<CR><{}><CR>}"

exec "Snippet try try<CR>{<CR>".st.et."<CR>}<CR>catch(".st."e".et.")<CR>{<CR>".st.et."<CR>}<CR>".st.et

exec "Snippet toinkeys var ".st."keys".et." = ToINKeys(". st."doc". et.");<CR>".st.et
