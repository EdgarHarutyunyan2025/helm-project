USER=edo1997edo
IMAGE=api_front
TAG=v7

docker-build:
	docker build -t "${USER}/${IMAGE}:${TAG}" .

git-config:
	git config --global user.name "EdgarHarutyunyan2025"
	git config --global user.email "edgar_harutyunyan_2025@mail.ru"
	git config --list

deploy:
	helmwave yml
	helmwave build
	helmwave up
