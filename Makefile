
all: usage 

usage:
	@echo "Usage:                                                   "
	@echo "                                                         "
	@echo "    make  command                                        "
	@echo "                                                         "
	@echo "The commands are:                                        "
	@echo "                                                         "
	@echo "    build       build system                             "
	@echo "    serve       run gitbook serve                        "
	@echo "    clean       clean up                                 "
	@echo "    status      run git status                           "
	@echo "                                                         "

nvm:
	nvm use v10.22.1

build: install
	gitbook build

install:
	yarn install && gitbook install

serve:
	gitbook serve --port 6379 --lrport 6479 --watch

status:
	git status .

.PHONE: distclean clean

clean:
	find . -name \*~ -type f |xargs -I {} rm -f {}

distclean: clean
