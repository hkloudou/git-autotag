git:
	git autotag -commit autotag -tag=true -push=true
tag:
	- git add . && git commit -S -m 'auto tag'
	- git autotag && git push origin master -f --tags
	@echo "current version:`git describe`"
install:
	go install .