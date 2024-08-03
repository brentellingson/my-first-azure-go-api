.DEFAULT_GOAL := build

.PHONY: build run vet tidy fmt clean

build: vet
	go build

run: vet
	go run ./...

test: vet
	go test ./...

vet: tidy
	go vet ./...

tidy: fmt
	go mod tidy

fmt:
	go fmt ./...

clean:
	go clean
