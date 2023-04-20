function aah
  ansible -i inventory/ -m shell -a "$argv" 'all' --ask-vault-pass
end
