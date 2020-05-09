<!-- -*- mode: markdown; coding: utf-8 -*- -->
# Pelican

> eevee テーマのcssのパスがルートからになるし全体的にイマイチ(2020/05/09)

## Install

pip

    $ pip install pelican Markdown typogrify

## Quick start

create a project

    $ mkdir blog-pelican
    $ cd blog-pelican
    $ pelican-quickstart
    > Where do you want to create your new web site? [.] 
    > What will be the title of this web site? Blog Pelican
    > Who will be the author of this web site? higebobo
    > What will be the default language of this web site? [ja]  
    > Do you want to specify a URL prefix? e.g., http://example.com   (Y/n) y
    > What is your URL prefix? (see above example; no trailing slash) https://higebobo.github.io/blog-pelican
    > Do you want to enable article pagination? (Y/n) y
    > How many articles per page do you want? [10] 
    > What is your time zone? [Europe/Paris] Asia/Tokyo
    > Do you want to generate a Fabfile/Makefile to automate generation and publishing? (Y/n) n
    > Do you want an auto-reload & simpleHTTP script to assist with theme and site development? (Y/n) n
    > Do you want to upload your website using FTP? (y/N) n
    > Do you want to upload your website using SSH? (y/N) n
    > Do you want to upload your website using Dropbox? (y/N) n
    > Do you want to upload your website using S3? (y/N) n
    > Do you want to upload your website using Rackspace Cloud Files? (y/N) n
    > Do you want to upload your website using GitHub Pages? (y/N) n
    Done. Your new project is available at /home/higebobo/work/web/pelican/blog-pelican

modify output directory for github pages

    $ vi pelicanconf.py
    ...
    OUTPUT_PATH = 'docs/'

    $ vi fabfile.py
    ...
    env.deploy_path = 'docs'

create an article

    $ vi content/helloworld.md
    Title: Hello World
    Date: 2017-04-23 15:23
    Category: Life

    Hello World

generate site

    $ make html
    
or

    $ pelican content

preview site

    $ make serve
    
or

    $ cd docs
    $ python -m pelican.server
    $ w3m http://localhost:8000

## Deploy

create " blog-pelican" repository in github

initialize repository

    $ cd blog-pelican
    $ echo "*~" >> .gitignore
    $ echo "*.bak" >> .gitignore
    $ echo "*.pyc" >> .gitignore
    $ echo "__pycache__" >> .gitignore
    $ pelican content
    $ git init
    $ git add .
    $ git commit -m 'First commit'
    $ git remote add origin git@github.com:higebobo/blog-pelican.git
    $ git remote -v
    $ git push -u origin master
    
set github pages master/docs
    
## Change theme

show list

    $ pelican-themes --list

install

    $ pelican-themes --install ../themes/eevee --verbose



## Link

* [Python製 Pelican を使ってサクッとブログを公開する \- Qiita](https://qiita.com/saira/items/71faa202efb4320cb41d)
* [kura/eevee at a7b708192462387b5087ff200df5b4c768ddb192](https://github.com/kura/eevee/tree/a7b708192462387b5087ff200df5b4c768ddb192)
