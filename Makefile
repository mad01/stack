
test:
	@go test ./...

build:
	go build -v -o stack cmd/stack/main.go

dep-ensure:
	@dep ensure -v -vendor-only

setup-deps:
	@go get -u github.com/golang/dep/cmd/dep
	@go get -u golang.org/x/tools/cmd/goimports

format:
	@echo "----- running gofmt -----"
	@gofmt -w -s .
	@echo "----- running goimports -----"
	@goimports -w .

.PHONY: test
