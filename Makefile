GITHUB_SHA ?= HEAD

export COMMIT := $(shell git rev-parse --short --verify --quiet '$(GITHUB_SHA)^{commit}')
export VERSION ?= dev

PACK = ImperiumMC.Resource.Pack.zip

.PHONY: all clean pack.mcmeta
.DELETE_ON_ERROR:

all: $(PACK)

pack.mcmeta: pack.mcmeta.template
	envsubst '$${COMMIT},$${VERSION}' <$< >$@

$(PACK): assets/ pack.png pack.mcmeta
	git archive --format=zip --output=$@ --add-file=pack.mcmeta --worktree-attributes $(GITHUB_SHA)
	@rm -f pack.mcmeta

clean:
	@rm -f $(PACK) pack.mcmeta
