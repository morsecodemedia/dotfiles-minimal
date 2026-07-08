.PHONY: lint check

lint:
	shellcheck -x bin/* lib/* heuristics/**/*.sh

check:
	bash -n bin/*
	bash -n lib/*
	$(MAKE) lint
