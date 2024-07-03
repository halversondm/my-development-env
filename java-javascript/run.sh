docker compose up -d


docker run -it -v ~/dev:/development ubuntu:latest

docker run --rm --init -v ~/dev:/development --ulimit memlock=-1:-1 oven/bun
