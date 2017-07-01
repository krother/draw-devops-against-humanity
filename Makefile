.PHONY: tests coverage devinstall

help:
	@echo "tests - run tests"
	@echo "coverage - run tests with coverage enabled"
	@echo "clean-build - Clean build-related files"

tests:
	py.test ${OPTS}

coverage:
	py.test ${OPTS} --cov

devinstall:
	pip install -e .
	pip install -e .[tests]