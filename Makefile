TARGET=simple-deb-experiment.deb

$(TARGET):
	mkdir -p debian/usr/bin
	cp src/simple-deb-experiment.sh debian/usr/bin/simple-deb-experiment
	dpkg -b debian
	mv debian.deb $(TARGET)

clean:
	-rm -r debian/usr $(TARGET)

thoroughclean:
	-rm *.deb
	make clean

