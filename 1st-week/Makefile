.DEFAULT_GOAL=build

build:
	@docker build -t alpine:amd64 --platform linux/amd64 .

run:
	@if docker ps -a | grep -q ctest; then \
		docker start -i ctest; \
	else \
		docker run --platform linux/amd64 --name ctest -v ./srcs:/root/srcs -it alpine:amd64; \
	fi
