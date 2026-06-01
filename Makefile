SHFMT_FILES = $(shell git ls-files '*.sh' ':!vendor/**')

.PHONY: examples fmt lint
examples:
	$(MAKE) -C examples/ -B

fmt:
	shfmt -i 4 -ci -sr -w $(SHFMT_FILES)

lint:
	@if git grep -n '^#!/bin/bash' -- ':!vendor'; then \
		echo >&2 'Use #!/usr/bin/env bash instead of #!/bin/bash.'; \
		exit 1; \
	fi

vendor/%/Makefile:
	bash -c 'source vendor/github.com/reconquest/import.bash/import.bash && \
		import:use "$*"'

include vendor/github.com/reconquest/test-runner.bash/Makefile

DST = /usr/local/bin/
install:
	case $$OSTYPE in \
	darwin*) sed 's/\/usr\/bin\/gawk/\/usr\/bin\/env gawk/' shdoc > $(DST)/shdoc;; \
	*) cp shdoc $(DST);; \
	esac
	chmod +x $(DST)shdoc
