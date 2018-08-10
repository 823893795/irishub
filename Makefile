all: get_vendor_deps install

get_vendor_deps:
	@rm -rf vendor/
	@echo "--> Running dep ensure"
	@dep ensure -v

install:
	go install ./cmd/iris
	go install ./cmd/iriscli

build_linux:
	CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o build/iris ./cmd/iris && \
    CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o build/iriscli ./cmd/iriscli

build_cur:
	go build -o build/iris ./cmd/iris  && \
	go build -o build/iriscli ./cmd/iriscli

build_example:
	go build  -o build/iris1 ./examples/irishub1/cmd/iris1
	go build  -o build/iriscli1 ./examples/irishub1/cmd/iriscli1
	go build  -o build/iris2 ./examples/irishub2/cmd/iris2
	go build  -o build/iriscli2 ./examples/irishub2/cmd/iriscli2

install_examples:
	go install ./examples/irishub1/cmd/iris1
	go install ./examples/irishub1/cmd/iriscli1
	go install ./examples/irishub2/cmd/iris2
	go install ./examples/irishub2/cmd/iriscli2