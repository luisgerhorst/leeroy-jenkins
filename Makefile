PROGRAM=main

all: download

download:
	nbc -d -S=usb $(PROGRAM).nxc

.PHONY: download
