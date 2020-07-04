# Jekyll Blog Demo
> Minimal base for a static website built with Jekyll and a theme

[![Made with Jekyll](https://img.shields.io/badge/Made_with-Jekyll-blue.svg)](https://jekyllrb.com)
[![Theme Minima](https://img.shields.io/badge/Theme-Minima-blue.svg)](https://github.com/jekyll/minima)
[![GitHub tag](https://img.shields.io/github/tag/MichaelCurrin/jekyll-blog-demo.svg)](https://GitHub.com/MichaelCurrin/jekyll-blog-demo/tags/)
[![MIT license](https://img.shields.io/badge/License-MIT-blue.svg)](#license)


## How to use this project

### Make your own

[![Use this template](https://img.shields.io/badge/Use_this_Template-green.svg?style=for-the-badge)](https://github.com/MichaelCurrin/jekyll-blog-demo/generate)

### View site

[![Site link](https://img.shields.io/badge/GH_Pages-Live_demo-green.svg?style=for-the-badge)](https://michaelcurrin.github.io/jekyll-blog-demo/)


## Sample

![sample.png](/sample.png)


## Purpose

This project serves as a starting point or a reference for building a statically-generated website using [Jekyll](https://jekyllrb.com/) and includes enough content and styling to demonstrate what a themed multi-page blog looks like, while the structure is easy to understand by keeping the number of files and lines of code low.

Run this project as a local web server or remotely such as on [Github Pages](https://pages.github.com/) or Netlify.

Only a simple repo configuration change is needed after you use this template - see the [Github Pages tutorial](https://help.github.com/en/github/working-with-github-pages/configuring-a-publishing-source-for-your-github-pages-site) in Github's docs.

_Note: This project's are instructions intended for Linux or macOS environment._


## Demo site

Through setting Github Pages section of the Github repo's settings, this site is available at:

- [michaelcurrin.github.io/jekyll-blog-demo](https://michaelcurrin.github.io/jekyll-blog-demo/)

Since this is a project site and note a user site, the subpath of `jekyll-blog-demo` is automatically set using the repo's name. In order to keep navigation and asset URLs in line with this and prevent errors, the `baseurl` in the [config](/_config.yml) file is also set to that subpath.


## Background

### About static sites and Jekyll

The Github Page service lets you build and serve a statically generated site.

The most basic way is to serve some flat HTML files (and other assets) without any logic. This is great for a one-page site with custom styling (rather than using a theme).

This project is more advanced and runs with Jekyll. This is done by adding a [\_config.yml](/_config.yml) file. This lets you use templating and themes, which makes it easier to avoid code duplication and lets you change out a theme in your config rather than your content files. Read more in this [config guide](https://github.com/MichaelCurrin/code-cookbook/blob/master/recipes/jekyll/project-files/config.md).

Note that the [Gemfile](/Gemfile) is used for local development and not used by Github Pages.

### Simple site

A basic Jekyll site with theme can be made using files as follows:

- **index.md** - The website homepage, including which layout to use and some body content.
    ```markdown
    ---
    layout: home
    ---

    Hello, world!

    More content goes here. Markdown is valid here. Make sure it is not indented otherwise at 4 spaces it becomes a codeblock.

    <b class="foo">HTML</b> is valid in a `.md` file too.

    - Markdown
    - after
    - the
    - HTML works fine.
    ```
- **\_config.yml** - Tell Github Pages to use a certain theme.
    ```yaml
    theme: minima
    ```

We use the the `home` layout above, though this could be `page` or `default` depending on the look we want and what the theme supports. Not all themes will have `home` as a layout.

The `minima` theme we use is supported by Github Pages and it comes with a `home` layout. You do not need a layouts folder, but you can choose to override or create layout files.

As an alternative to setting the theme by hand, you can set this theme by choosing a theme on Github Pages section of your repo's Settings. That view also lets you preview a theme before saving it (which then creates/updates the config for you).

### This project's origin

This repo is based on an example provided by Jekyll, available as the [jekyll/example](https://github.com/jekyll/example) repo. One way to get that example is to run the command from a [Jekyll](https://jekyllrb.com/) tutorial:

```sh
$ jekyll new jekyll-blog-demo
```


## About

### Project structure

This project follows the typical structure of a Jekyll-based site.

- The main content pages are markdown and HTML files at the top-level directory. See [index.md](/index.md) and [about.md](./about.md). Blog posts are in the [_posts](/_posts) directory.
- The pages use "layout" fields to point to template files for styling and structure. There are no layouts in this project as the  theme's layouts are referenced though.
- The [minima](https://github.com/jekyll/minima) Jekyll theme is used for styling. This means that little or HTML is need in the content files from the first point above.
- Jekyll builds to a `_site` directory both locally and on Github Pages. That directory contains public content that is served from the site's root URL. Certain files are not copied there based on Jekyll's rules and you can also added to the `excludes` field in the config. This prevents templates, the license and other private files from being served on the site.


### Customization

Create a project from this template or fork it. Then update it to suit your own needs.

- Replace the `baseurl` value in the [config](/_config.yml) with your own project's name.
- To change the theme, set one in both the [config](/_config.yml) and [Gemfile](/Gemfile). Both are needed for a local builds, while only the config needs to be set for Github Pages builds, at least for the builtin themes on Github Pages.

You can remove these and add more content pages or blog posts. If you don't need markdown you can convert files from `.md` to `.html` and change the content.


### Gems

This project uses the following gems, which came with the sample blog:

- [jekyll](https://github.com/jekyll/jekyll) - This builds the site locally or in the cloud. Installed in the project gems rather than globally. _"Jekyll is a blog-aware static site generator in Ruby"_
- [minima](https://github.com/jekyll/minima) - This is a theme to add styling to built pages. _"Minima is a one-size-fits-all Jekyll theme for writers."_
- [jekyll-feed](https://github.com/jekyll/jekyll-feed)
- [jekyll-seo-tag](https://github.com/jekyll/jekyll-seo-tag)
- [jekyll-sitemap](https://github.com/jekyll/jekyll-sitemap)


## Installation

Setup this project locally - instructions are for Unix-like (_Linux_ or _macOS_) systems.

### Clone

Optionally this to your own repo - either fork this repo or click _Use this Template_.

Then clone your repo or this one.

Navigate to the repo root directory locally.

You can view the commands available in the [Makefile](/Makefile) or skip to the next step. Note that `make` is not needed as you can run commands directly, but it does help as a shortcut especially to execute long commands easily. It is similar to running `npm run COMMAND` except works without a `package.json` file.

```bash
$ make help
```

### Install system dependencies

Follow this [gist](https://gist.github.com/MichaelCurrin/ddbcfb1714c4dbfb3460a3ecf119620f) to install the following:

- _Ruby_ - Install the gems including Jekyll.
- _Bundler_ - Used to manage Ruby gem dependencies in an isolated directory, to preserve your global gems.
- _Jekyll_ - Used to build the static site.


### Install project dependencies.

Install local gems.

```sh
$ make install
```

Run this command in future to upgrade to the latest gems.

```sh
$ make upgrade
```

When you upgrade, the [Gemfile.lock](/Gemfile.lock) file will be updated, if there are any changes. You can commit this to your own repo. This file is optional for _Github Pages_ but required if you want to deploy to _Netlify_.


## Run

Build to the `_site` directory and start the web server.

### On subpath

Set `baseurl` value in the config - this should be changed to match the repo name. This makes it easy to mirror how sites [run on Github Pages](#run-on-github-pages).

```sh
$ make serve
```

Open the browser at:

- http://localhost:4000/jekyll-blog-demo

### On root path

```sh
$ make serve-root
```

Open the browser at:

- http://localhost:4000/


## Production build

When building site content to deploy to production, replace the default `'development'` value with `production`.

```sh
$ make build-prod
```

This will affect any checks in the files such as `if jekyll.environment == "production"`. This is useful for example to only show Google Analytics tag on Production site.

Then copy the contents of *_site* directory to your server and serve with Apache or a similar web server.


## License

Released under [MIT](/LICENSE).
