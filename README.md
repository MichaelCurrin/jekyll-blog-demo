# Jekyll Blog Demo
> Minimal base for a static website - built with Jekyll.

This project is serves as a starting point or a reference for creating a statically-generated website using _Jekyll_. It includes enough content and styling to demonstrate what a themed multi-page blog looks like. But the structure is easy to understand by keeping the number of files and lines of code low.

Run this project on a local webserver or on Github Pages.

## Requirements

[Jekyll](https://jekyllrb.com/) is a static site generator written in _Ruby_. It is needed to build compile this project into a folder of static assets, which can be served in a variety of ways.

You can serve the built site on a free _Github Pages_ URL. Only a simple repo configuration change is needed - see [tutorial](https://help.github.com/en/github/working-with-github-pages/configuring-a-publishing-source-for-your-github-pages-site).

## Background

### About static sites and Jekyll

The Github Page service lets you build and serve a statically generated site.

The most basic way is to serve some flat HTML files (and other assets) without any logic. This is great for a one page site with custom styling (rather than using a theme).

This project is more advanced and use the Jekyll-based project, by adding the Jekyll [config](/_config.yml) file. This lets you use templating and themes, which makes it easier to avoid code duplication and lets you change out a theme in your config rather than your content files. Note that the [Gemfile](/Gemfile) is used for local development and not used by Github Pages.

### This project's origin

This repo is based on an example provided by Jekyll, available as the [jekyll/example](https://github.com/jekyll/example) repo. One way to get that example is to run the command from a [Jekyll](https://jekyllrb.com/) tutorial:

```bash
$ jekyll new jekyll-blog-demo
```

## Project structure

This project follows the typical structure of a Jekyll-based site.

- The main content pages are markdown and HTML files at the top-level directory. See [index.md](/index.md) and [about.md](./about.md). Blog posts are in the [_posts](/_posts) directory.
- The pages use "layout" fields to point to template files for styling and structure. There are no layouts in this project as the  theme's layouts are referenced though.
- The [minima](https://github.com/jekyll/minima) Jekyll theme is used for styling. This means that little or HTML is need in the content files from the first point above.
- Jekyll builds to a `_site` directory both locally and on Github Pages. That directory contains public content that is served from the site's root URL. Certain files are not copied there based on Jekyll's rules and you can also added to the `excludes` field in the config. This prevents templates, the license and other private files from being served on the site.


## Customization

Create a project from this template or fork it. Then update it to suit your own needs.

- Replace the `baseurl` value in the [config](/_config.yml) with your own project's name.
- To change the theme, set one in both the [config](/_config.yml) and [Gemfile](/Gemfile). Both are needed for a local builds, while only the config needs to be set for Github Pages builds, at least for the builtin themes on Github Pages.

You can remove these and add more content pages or blog posts. If you don't need markdown you can convert files from `.md` to `.html` and change the content.


## Gems

This project uses the following gems, which came with the sample blog:

- [jekyll](https://github.com/jekyll/jekyll) - This builds the site locally or in the cloud. _"Jekyll is a blog-aware static site generator in Ruby"_
- [minima](https://github.com/jekyll/minima) - This is a theme to add styling to built pages. _"Minima is a one-size-fits-all Jekyll theme for writers."_
- [jekyll-feed](https://github.com/jekyll/jekyll-feed) - Produce RSS feed. _"A Jekyll plugin to generate an Atom (RSS-like) feed of your Jekyll posts."_


## Run on Github Pages

Through setting Github Pages section of the Github repo's settings, this site is available at:

- [michaelcurrin.github.io/jekyll-blog-demo](https://michaelcurrin.github.io/jekyll-blog-demo)

Since this is a project page, the subpath of `jekyll-blog-demo` is automatically set using the repo's name. In order to keep navigation and asset URLs in line with this and prevent errors, the `baseurl` in the [config](_config.yml) file is also set to that subpath.


## Installation

Setup the project locally - instructions are for _Linux_ or _macOS_ systems.

### Clone

Optionally this to your own repo - either fork this repo or click _Use this Template_.

Then clone your repo or this one.

Navigate to the repo root directory locally.

You can view commands in the [Makefile](./Makefile) or continue.

```bash
$ make help
```

### System dependencies

Install [Jekyll](https://jekyllrb.com/) and [Bundler](https://bundler.io/) globally.

```bash
$ gem install jekyll bundler
```

### Project dependencies.

Install gems. If run repeatedly, this command will **not** upgrade gems.

```bash
$ make install
```

Run this command in future to upgrade to the latest gems.

```bash
$ make upgrade
```

The [Gemfile.lock](/Gemfile.lock) file will be updated if there are any changes. You can commit this. That file is optional for Github Pages but required if you want to deploy to Netlify.

## Run

Build to the `_site` directory and start the web server.

### On subpath

Set `baseurl` value in the config - this should be changed to match the repo name. This makes it easy to mirror how sites [run on Github Pages](#run-on-github-pages).

```bash
$ make serve
```

Open the browser at:

- http://localhost:4000/jekyll-blog-demo


### On root path

```bash
$ make serve-root
```

Open the browser at:

- http://localhost:4000/


## Production build

When building site content to deploy to production, replace the default `'development'` value with `production`.

```bash
$ make build-prod
```

This will affect any checks in the files such as `if jekyll.environment == "production"`. This is useful for example to only show Google Analytics tag on Production site.

Then copy the contents of *_site* directory to your server and serve with Apache or a similar web server.
