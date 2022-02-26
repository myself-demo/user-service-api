gen:
	rm -rf ./pb
	mkdir -p ./pb
	protoc --proto_path=proto --go_out=./pb --go-grpc_out=./pb proto/*.proto \
	--go_opt=paths=source_relative --go-grpc_opt=paths=source_relative \
	--go-grpc_opt=require_unimplemented_servers=false