build: build-mono build-dotnet build-dotnet-runtime

build-mono:
	docker build -t owengr/xenial-mono:latest xenial
build-dotnet:
	docker build -t owengr/xenial-mono:dotnet -t owengr/xenial-mono:dotnet-sdk xenial/dotnet-sdk
build-dotnet-runtime:
	docker build -t owengr/xenial-mono:dotnet-runtime xenial/dotnet-runtime

push:
	docker push owengr/xenial-mono

push-mono:
	docker push owengr/xenial-mono:latest
push-dotnet:
	docker push owengr/xenial-mono:dotnet-sdk
push-dotnet-runtime:
	docker push owengr/xenial-mono:dotnet-runtime
