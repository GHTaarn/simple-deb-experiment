PROJNAME=simple-deb-experiment
TARGET=$(PROJNAME).deb

$(TARGET):
	mkdir -p debian/usr/bin
	mkdir -p debian/usr/share/doc/$(PROJNAME)/
	cp src/$(PROJNAME).sh debian/usr/bin/$(PROJNAME)
	cp LICENSE debian/usr/share/doc/$(PROJNAME)/copyright
	find ./debian -type d | xargs chmod 755
	find ./debian -executable | xargs chmod 755
	find ./debian -perm 0664 | xargs chmod 0644
	fakeroot dpkg -b debian
	mv debian.deb $(TARGET)

clean:
	-rm -r debian/usr $(TARGET)

thoroughclean:
	-rm *.deb
	make clean
