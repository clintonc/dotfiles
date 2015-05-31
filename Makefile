# Perform some setup after symlinking.

GIT=/usr/bin/git

git:
	@echo -n 'Git name: '; \
	read name; \
	echo -n 'Git email: '; \
	read email; \
	$(GIT) config --global --replace-all user.name "$$name"; \
	$(GIT) config --global --replace-all user.email "$$email";
