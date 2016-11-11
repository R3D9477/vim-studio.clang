if exists("g:vimStudio_clang_init")
	if g:vimStudio_clang_init == 1
		finish
	endif
endif

let g:vimStudio_clang_init = 1

"-------------------------------------------------------------------------

let g:vimStudio_clang#plugin_dir = expand("<sfile>:p:h:h")

"-------------------------------------------------------------------------

call vimStudio#integration#register_module("vimStudio_clang")

call add(g:vimStudio#integration#project_template_dir, g:vimStudio_clang#plugin_dir . "/template/project")
call add(g:vimStudio#integration#file_template_dir, g:vimStudio_clang#plugin_dir . "/template/file")
