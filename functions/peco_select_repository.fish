function peco_select_repository
	ghq list | peco --query "$LBUFFER" --select-1 | xargs ghq look
end
