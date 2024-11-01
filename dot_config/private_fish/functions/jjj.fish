function jjj
  journalctl -o json -f $argv | hl -P
end
