module github.com/irisnet/irishub

go 1.14

require (
	github.com/cosmos/cosmos-sdk v0.34.4-0.20200708220056-f8df05f6f15e
	github.com/gogo/protobuf v1.3.1
	github.com/golang/protobuf v1.4.2
	github.com/gorilla/mux v1.7.4
	github.com/onsi/ginkgo v1.8.0 // indirect
	github.com/onsi/gomega v1.5.0 // indirect
	github.com/otiai10/copy v1.2.0
	github.com/rakyll/statik v0.1.7
	github.com/regen-network/cosmos-proto v0.3.0
	github.com/snikch/goodman v0.0.0-20171125024755-10e37e294daa
	github.com/spf13/cast v1.3.1
	github.com/spf13/cobra v1.0.0
	github.com/stretchr/testify v1.6.1
	github.com/tendermint/tendermint v0.33.6
	github.com/tendermint/tm-db v0.5.1
	golang.org/x/net v0.0.0-20200324143707-d3edc9973b7e
	gopkg.in/yaml.v2 v2.3.0
)

replace github.com/gogo/protobuf => github.com/regen-network/protobuf v1.3.2-alpha.regen.4
