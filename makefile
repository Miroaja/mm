SUBDIRS := mm-ecs mm-rational mm-timed

.PHONY: install uninstall $(SUBDIRS)

install:
	@for dir in $(SUBDIRS); do \
		$(MAKE) -C $$dir install || exit $$?; \
	done

uninstall:
	@for dir in $(SUBDIRS); do \
		$(MAKE) -C $$dir uninstall || exit $$?; \
	done
