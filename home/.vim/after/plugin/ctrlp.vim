" let g:ctrlp_custom_ignore = {
"   \ 'dir':  '\.git$\|\.hg$\|\.svn\|\.git5_specs$\|review$',
"   \ 'file': '\.exe$\|\.so$\|\.dll$',
"   \ 'link': 'blaze-bin\|blaze-genfiles\|blaze-google3\|blaze-out\|blaze-testlogs\|READONLY$',
"   \ }
let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --hidden
      \ --ignore .git
      \ --ignore .svn
      \ --ignore .hg
      \ --ignore .DS_Store
      \ --ignore "**/*.pyc"
      \ --ignore .git5_specs
      \ --ignore review
      \ --ignore blaze-bin
      \ --ignore blaze-genfiles
      \ --ignore blaze-google3
      \ --ignore blaze-out
      \ --ignore blaze-testlogs
      \ --ignore READONLY
      \ -g ""'
