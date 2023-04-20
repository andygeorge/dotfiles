function aah
  ansible -i inventory/ -m command -a "$argv" 'all' --ask-vault-pass
end
