function __select_history -d "Interactive select shell history"
  set --local peco_args "--select-1"
  [ (count $argv) -ne 0 ]; and set --local peco_args --query "$argv"
  history | peco $peco_args | read result
  [ -n $result ]; and commandline $result; or commandline ""
end
