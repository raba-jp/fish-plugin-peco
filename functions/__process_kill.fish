function __process_kill -d "Interactive process kill"
  ps axo rss,time,command | \
  sed -e '1d' | \
  peco --query "$LBUFFER" | \
  awk '{print $1}' | \
  xargs kill
end
