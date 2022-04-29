A simple demonstration of how to build a Debian package based on
https://tldp.org/HOWTO/html_single/Debian-Binary-Package-Building-HOWTO/

# Usage

```
git clone https://github.com/GHTaarn/simple-deb-experiment
cd simple-deb-experiment
make
sudo dpkg -i simple-deb-experiment.deb

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
project.

