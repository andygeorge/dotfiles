function jj
  journalctl -o json -f $argv | tspin
end
