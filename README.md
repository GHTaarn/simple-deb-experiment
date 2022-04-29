A simple demonstration of how to build a Debian package based on
https://tldp.org/HOWTO/html_single/Debian-Binary-Package-Building-HOWTO/

# Usage

```
git clone https://github.com/GHTaarn/simple-deb-experiment
cd simple-deb-experiment
make
sudo dpkg -i simple-deb-experiment.deb
simple-deb-experiment
sudo dpkg -r simple-deb-experiment
```

The point of this project is that you can make changes to `src/`,
`debian/DEBIAN/control`, `Makefile` etc to make a Debian package for your own
project.

