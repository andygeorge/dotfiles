function jj
  journalctl -o json -f $argv | fspin
end
