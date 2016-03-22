# Makefile
# Author: Pavel Studenik <pstudeni@redhat.com>

SCRIPTS = osad.sh  register.sh
DIRS = fedora-21 fedora-22 fedora-23

# copy files for root to docker directories
build: $(SCRIPTS)

*.sh:
	@for dir in $(DIRS); do\
		cp $@ $$dir; \
	done

