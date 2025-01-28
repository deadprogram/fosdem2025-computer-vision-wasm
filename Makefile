.ONESHELL:

build/showvideo:
	go build -o ./build/showvideo ./demo/showvideo/main.go

showvideo: builddir build/showvideo
	./build/showvideo 2

clean:
	rm -rf build

builddir:
	mkdir -p build

build/videodrone:
	go build -o ./build/videodrone ./demo/videodrone/

videodrone: builddir build/videodrone
	./build/videodrone

blur:
	wasmvision run -p blur

asciify:
	wasmvision run -p asciify

mosaic:
	wasmvision run -p mosaic

ollama:
	wasmvision run -p ollama -c model= -logging=error

dronestream:
	wasmvision run -p facedetectyn --capture ffmpeg --source udp://127.0.0.1:6789
