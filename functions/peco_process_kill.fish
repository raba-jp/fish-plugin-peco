function peco_process_kill
	ps axo pid,rss,time,command | peco --query "$LBUFFER" | awk '{print $1}' | xargs kill
end
