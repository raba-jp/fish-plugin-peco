function peco_select_history
	set -l default_options "--select-1"
	set -l peco_args "--select-1"
	[ (count $argv) -ne 0 ]; and set -l peco_args --query "$argv"
	history | peco $peco_args | read result
	[ -n $result ]; and commandline $result; or commandline ""
end
