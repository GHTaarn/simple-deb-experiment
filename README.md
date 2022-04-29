A simple demonstration of how to build a Debian package based on
https://tldp.org/HOWTO/html_single/Debian-Binary-Package-Building-HOWTO/

# Usage

```
git clone https://github.com/GHTaarn/simple-deb-experiment
cd simple-deb-experiment
make
sudo dpkg -i simple-deb-experiment.deb
```

This will build the package and install it. To test if the package works
correctly, you can do the following:

```
# Test that it is correctly installed
dpkg -l simple-deb-experiment
apt show simple-deb-experiment
which simple-deb-experiment
simple-deb-experiment

# Uninstall
sudo dpkg -r simple-deb-experiment

# Test that it is correctly uninstalled
dpkg -l simple-deb-experiment
apt show simple-deb-experiment
which simple-deb-experiment
simple-deb-experiment
```

The point of this project is that you can make changes to `src/`,
`packaging-files/control`, `Makefile` etc to make a Debian package for your own
project. The `Makefile` has some convenient targets so that everything can be
done in one go with the command `make clean installtest` or
`make thoroughclean installtest`.

