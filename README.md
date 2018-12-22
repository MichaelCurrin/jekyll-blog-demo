# Jekyll Blog Demo
> Demo to show off a minimal Jekyll blog using Github Pages

This repo was created using Jekyll's base template for a blog. It uses the `minima` theme.

```bash
$ jekyll new jekyll-blog-demo
```

Since this is a Project Page and not a User page, the assets are relative to the root domain by default and that gives `404` errors. Therefore the empty `baseurl` in [config file](_config.yml) had to be replaced with a value.

To get started making your own static site, head to the [Jekyll](https://jekyllrb.com) or [Github Pages](https://pages.github.com/) sites.


## Installation


### Clone the repo

```bash
$ git clone https://github.com/MichaelCurrin/jekyll-blog-demo.git
$ cd jekyll-blog-demo
```

### System dependencies

First ensure you have `ruby` and `gem` installed.

Install static page building gems for your user. By default to the `.gems` directory.

```bash
$ gem install --user-install bundler jekyll
```

Note that once `bundler` is installed, the `bundle` command will be available, as used below.


### Project packages

Install project-specific gems into the unversioned `vendor/bundle` project directory.

```bash
$ bundle install --path vendor/bundle
```


## Run

```bash
$ bundle exec jekyll serve
```
