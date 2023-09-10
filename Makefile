build:
	docker image build . -t yuucu/sample-cloudnative:1.0

run:
	docker container run --rm yuucu/sample-cloudnative:1.0

push:
	docker image push yuucu/sample-cloudnative:1.0

ls:
	docker image ls
