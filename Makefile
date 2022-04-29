PROJNAME=simple-deb-experiment
TARGET=$(PROJNAME).deb

$(TARGET):
	mkdir -p debian/usr/bin
	cp src/$(PROJNAME).sh debian/usr/bin/$(PROJNAME)
	dpkg -b debian
	mv debian.deb $(TARGET)

clean:
	-rm -r debian/usr $(TARGET)

thoroughclean:
	-rm *.deb
	make clean

