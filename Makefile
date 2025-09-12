.DEFAULT_GOAL=build

build:
	@docker build -t alpine:i386 --platform linux/386 .

run:
	@if docker ps -a | grep -q ctest; then \
		docker start -i ctest; \
	else \
		docker run --platform linux/386 --name ctest -v ./:/srcs -it alpine:i386; \
	fi
