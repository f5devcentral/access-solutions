
# Minimal makefile for Sphinx documentation
#

# You can set these variables from the command line.
SPHINXOPTS    =
SPHINXBUILD   = sphinx-build
SPHINXPROJ    = F5 Access Solutions
SOURCEDIR     = .
BUILDDIR      = _build

# Put it first so that "make" without argument is like "make help".
help:
	@$(SPHINXBUILD) -M help "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

.PHONY: help Makefile

# Catch-all target: route all unknown targets to Sphinx using the new
# "make mode" option.  $(O) is meant as a shortcut for $(SPHINXOPTS).
%: Makefile
	@$(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

# Custom commands for building and testing project documentation

# build live preview of docs locally
.PHONY: preview
preview:
	@echo "Running autobuild. View live edits at:"
	@echo "  http://0.0.0.0:8000"
	@echo ""
	sphinx-autobuild --host 0.0.0.0 -b html $(SOURCEDIR) $(BUILDDIR)/html

# run docs quality tests locally
.PHONY: test
test:
	make clean
	./script/test-docs.sh

# Build html using containthedocs container
.PHONY: docker-html
docker-html:
	make clean
	./script/containthedocs.sh make html

# Build live preview of docs in a docker container
.PHONY: docker-preview
docker-preview:
	make clean
	DOCKER_RUN_ARGS="-p 127.0.0.1:8000:8000" \
		./script/containthedocs.sh \
		sphinx-autobuild --host 0.0.0.0 -b html $(SOURCEDIR) $(BUILDDIR)/html

# Run docs quality tests in a docker container
.PHONY: docker-test
docker-test:
	make clean
	./script/containthedocs.sh ./script/test-docs.sh
