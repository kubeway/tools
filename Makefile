all: image

image:
	@echo "build alpine image"
	./build-image.sh 3.11.5

