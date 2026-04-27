function fnode
    set -l tag latest
    if set -q argv[1]
        set tag $argv[1]
        set -e argv[1]
    end
    docker run --rm -it -v ./:/root/nodestuff/ $argv ghcr.io/andygeorge/fnode:$tag
end
