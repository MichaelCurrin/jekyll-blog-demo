# About


## Purpose

This project serves as a starting point or a reference for building a statically-generated website using [Jekyll](https://jekyllrb.com/) and includes enough content and styling to demonstrate what a themed multi-page blog looks like, while the structure is easy to understand by keeping the number of files and lines of code low.

Run this project as a local web server or remotely such as on [GitHub Pages](https://pages.github.com/) or Netlify.

Only a simple repo configuration change is needed after you use this template - see the [GitHub Pages tutorial](https://help.github.com/en/github/working-with-github-pages/configuring-a-publishing-source-for-your-github-pages-site) in GitHub's docs.

_Note: This project's are instructions intended for a Linux or macOS environment._

Beginner tip for [Gemfile](/Gemfile) - this Gemfile is only used when running Jekyll locally i.e. it is **ignored** by GitHub Pages. It is useful when doing a GH Actions or Netlify build though.

Versions should match GH Pages versions - [pages.github.com/versions/](https://pages.github.com/versions/).


## Demo site

Through setting GitHub Pages section of the Github repo's settings, this site is available at:

- [michaelcurrin.github.io/jekyll-blog-demo](https://michaelcurrin.github.io/jekyll-blog-demo/)

Since this is a _project_ site and note a _user_ site, the subpath of `jekyll-blog-demo` is automatically set using the repo's name. In order to keep navigation and asset URLs in line with this and prevent errors, the `baseurl` in the [config](/_config.yml) file is also set to that subpath.


# Project structure

This project follows the typical structure of a Jekyll-based site.

- The main content pages are markdown and HTML files at the top-level directory. See [index.md](/index.md) and [about.md](./about.md). Blog posts are in the [_posts](/_posts) directory.
- The pages use "layout" fields to point to template files for styling and structure. There are no layouts in this project as the  theme's layouts are referenced though.
- The [minima](https://github.com/jekyll/minima) Jekyll theme is used for styling. This means that little or HTML is need in the content files from the first point above.
- Jekyll builds to a `_site` directory both locally and on Github Pages. That directory contains public content that is served from the site's root URL. Certain files are not copied there based on Jekyll's rules and you can also added to the `excludes` field in the config. This prevents templates, the license and other private files from being served on the site.
- This tutorial on Jekyll docs covers a few pages and posts. I've extended to include a collection too.
