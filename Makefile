build:
	docker build -t shelly-sandbox:latest .

sh:
	docker run -it --rm shelly-sandbox:latest /bin/bash