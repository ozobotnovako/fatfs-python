all:
	python Setup.py build_ext --inplace

test:	all
	python run_check.py
