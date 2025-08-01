function fnode
  podman run --rm -it \
		-v ./:/root/nodestuff/ 
	$argv ghcr.io/andygeorge/fnode:latest
end
