deployWin: rs build compress

build:
	go build "-ldflags=-w -s -H=windowsgui" -o .\bin\anto.exe anto

compress:
	upx -9 .\bin\anto.exe

rs:
	rsrc -manifest anto.manifest -ico favicon.ico -o rsrc.syso

tidy:
	go mod tidy