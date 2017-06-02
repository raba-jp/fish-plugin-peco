function peco_force_process_kill
	ps axo pid,rss,time,command | peco --query "$LBUFFER" | awk '{print $1}' | xargs kill -9
end
