function jj
  journalctl -o json -f $argv | hl -P
end
