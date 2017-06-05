function peco_select_repository
	set -l query (commandline)
	[ -n $query ]; and set query_str "--query $query --select-1"
	ghq list | peco $query_str | read line
	if [ $line ]
		ghq root | read root
		cd $root/$line
	commandline -f repaint
	end
end
