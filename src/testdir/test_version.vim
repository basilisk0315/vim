" Test :version Ex command

func Test_version()
  " version should always return the same string.
  let v1 = execute('version')
  let v2 = execute('version')
  call assert_equal(v1, v2)

  call assert_match("^\n\nVIM - Vi IMproved .*", v1)
endfunc

func Test_version_redirect()
  CheckNotGui
  CheckCanRunGui
  CheckUnix

  call RunVim([], [], '--clean -g --version >Xversion 2>&1')
  call assert_match('Features included', readfile('Xversion')->join())

  call delete('Xversion')
endfunc

" vim: shiftwidth=2 sts=2 expandtab
