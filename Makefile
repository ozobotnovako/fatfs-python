all:
	CYTHONIZE=1 python setup.py build_ext

dist:
	CYTHONIZE=1 python setup.py build_ext
	CYTHONIZE=0 python setup.py sdist

clean:
	rm fatfs.cpython-38-x86_64-linux-gnu.so

test:	all
	tox

.PHONY: dist all clean test
