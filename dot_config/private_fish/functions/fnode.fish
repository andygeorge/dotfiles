function fnode
  set -l tag (test -n "$argv[1]"; and echo $argv[1]; or echo latest)
  podman run --rm -it -v ./:/root/nodestuff/ ghcr.io/andygeorge/fnode:$tag
end
