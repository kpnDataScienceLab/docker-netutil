
.PHONY: docker_image


image = netutil
version = 0.1.0
latest_tag = $(image):$(version)

docker_image:
	docker build --tag $(latest_tag) .
	docker tag $(latest_tag) $(image):latest

curl:
	git checkout curl
	docker build --tag $(image):curl .

nc:
	git checkout nc
	docker build --tag $(image):nc .

nslookup:
	git checkout nslookup
	docker build --tag $(image):nslookup .
