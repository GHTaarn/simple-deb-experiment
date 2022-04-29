PROJNAME=simple-deb-experiment
TARGET=$(PROJNAME).deb

$(TARGET):
	mkdir -p debian/DEBIAN
	mkdir -p debian/usr/bin
	mkdir -p debian/usr/share/doc/$(PROJNAME)/
	cp packaging-files/control debian/DEBIAN/
	cp src/$(PROJNAME).sh debian/usr/bin/$(PROJNAME)
	cp LICENSE debian/usr/share/doc/$(PROJNAME)/copyright
	chmod -R g-w debian
	fakeroot dpkg -b debian
	mv debian.deb $(TARGET)

clean:
	-rm -r debian/ $(TARGET)

thoroughclean:
	-rm *.deb
	make clean
