function pup
  go mod tidy && go fmt *.go && pulumi up -s prod -rfy
end
