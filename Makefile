GITHUB_SHA ?= HEAD

export COMMIT := $(shell git rev-parse --short --verify --quiet '$(GITHUB_SHA)^{commit}')
export VERSION ?= dev

PACK = ImperiumMC.Resource.Pack.zip

.PHONY: clean all
.DELETE_ON_ERROR:

all: $(PACK)

pretty:
	@echo 'Prettying...'
	scripts/pretty
	@echo 'Done.'

pack.mcmeta: pack.mcmeta.template
	@echo 'Writing metadata...'
	envsubst '$${COMMIT},$${VERSION}' <$< >$@
	@echo 'Done.'

$(PACK): clean pack.mcmeta pack.png assets/
	@echo 'Packaging assets...'
	zip -qTX -r $@ $^ -x '*.DS_Store'
	zip -qTX -m $@ pack.mcmeta
	@echo 'Done.'

pack: $(PACK)

clean:
	@echo 'Cleaning...'
	rm -f $(PACK) pack.mcmeta
	@echo 'Done.'
