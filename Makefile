PNPM ?= pnpm
BRANCH ?= main

.PHONY: dep install dev build start deploy

dep:
	$(PNPM) install

install: dep

dev:
	$(PNPM) run dev

build:
	$(PNPM) run build

start:
	$(PNPM) run serve

deploy: build
	git push origin $(BRANCH)
	@echo "Vercel will pick up deployments from branch $(BRANCH)."
