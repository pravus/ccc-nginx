.FAKE: help

help:
	@echo "The following commands are available:"
	@echo "  make build    - Build the Docker container"
	@echo "  make restart  - Restart the system service"

build:
	sudo docker build -t www-carbon-cc:latest .

restart:
	sudo systemctl restart docker-www-carbon-cc
