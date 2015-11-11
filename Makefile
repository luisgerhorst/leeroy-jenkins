PROGRAM=main

all: download download_tests

download:
	echo "Please restart / unplug and reconnect the NXT if you already downloaded a program to it, otherwise the download may fail. Then press return."; \
	read input; \
	nbc -d -S=usb $(PROGRAM).nxc

download_tests:
	for file in $(wildcard tests/*.nxc); do \
		echo "Please restart / unplug and reconnect the NXT if you already downloaded a program to it, otherwise the download may fail. Then press return."; \
		read input; \
		nbc -d -S=usb $$file; \
	done

.PHONY: download download_tests
