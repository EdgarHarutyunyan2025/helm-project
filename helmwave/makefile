USER=edo1997edo
IMAGE=api_front
TAG=v7

docker-build:
	docker build -t "${USER}/${IMAGE}:${TAG}" .

deploy:
	helmwave yml
	helmwave build
	helmwave up
