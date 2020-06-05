# Documentation Template

![Docker Pulls](https://img.shields.io/docker/pulls/arash7/sphinx-html?style=flat-square)

This repository contain based system for developing/compiling document based on `rst` and `sphinx`.

## Dependencies

* Sphinx
* sphinx\_rtd\_theme

###  Install build dependencies on Debian

``` bash
sudo apt-get install python-pip plantuml sphinx
sudo pip install sphinx_rtd_theme
```



## Building

``` bash
    cd docs/
    make html
```
You can find html files in `docs/build/html`


