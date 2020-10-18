default: install

h help:
	@egrep '^\S|^$$' Makefile

install:
	bundle config set --local path vendor/bundle
	bundle install

s serve:
	bundle exec jekyll serve --trace --livereload
