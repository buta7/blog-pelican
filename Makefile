BUILD_DIR=docs
PYTHON=`which python`
PELICAN=`which pelican`

server:
	cd ${BUILD_DIR};$(PYTHON) -m pelican.server

gen:
	$(PELICAN) content

deploy: gen commit push

status:
	git status

add:
	git add .

commit: add
	git commit -m 'modify'

pull:
	git pull

push:
	git push -u origin master

commit-push: commit push
