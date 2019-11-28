# Jekyll Blog Demo
> Minimal base for a static website - built with Jekyll.

There is just enough content and styling to show what a website looks like.

- The [minima](https://github.com/jekyll/minima) Jekyll theme is used. 
- The main content pages are markdown and HTML files at the top-level directory.
- Blog posts are in a subdirectory - you can delete this that if you don't need it.
- The pages use "layout" fields to point to template files for tyling and structure. There are no layouts in this project - the  theme's layouts are referenced though.


## Background

The Github Page service lets you build and serve a statically generated site.

The most basic way is to serve some flat HTML files (and other assets) without any logic. This is great for a one page site with custom styling (rather than using a theme).

Another way is to use a Jekyll-based project. This lets you use templating and themes, which makes it easier to avoid code duplication and lets you change out a theme in your config rather than your content files. This project is a base setup for the latter.

This repo is based on an example provided by Jekyll, available as the [jekyll/example](https://github.com/jekyll/example) repo. One way to get that example is to run the command from a [Jekyll](https://jekyllrb.com/) tutorial:

```bash
$ jekyll new jekyll-blog-demo
```


## Usage

Run this project on a local webserver or on Github Pages.

### Setup and run

Follow this [setup and run](https://github.com/MichaelCurrin/static-sites-generator-resources/blob/master/Jekyll/setup_and_run.md) guide. In particular, see the _With a Gemfile_ section's _Installation_ and _Run_ sections.

### Customization

Create a project from this template or fork it. Then update it to suit your own needs.

- Replace the `baseurl` value in the [config](/_config.yml) with your own project's name.
- To change the theme, set one in both the [config](/_config.yml) and [Gemfile](/Gemfile). Both are needed for a local builds, while only the config needs to be set for Github Pages builds, at least for the builtin themes on Github Pages.

You can remove these and add more content pages or blog posts. If you don't need markdown you can convert files from `.md` to `.html` and change the content. 


## Gems

This project uses the following gems, which came with the sample blog:

- [jekyll](https://github.com/jekyll/jekyll) - This builds the site locally or in the cloud. _"Jekyll is a blog-aware static site generator in Ruby"_
- [minima](https://github.com/jekyll/minima) - This is a theme to add styling to built pages. _"Minima is a one-size-fits-all Jekyll theme for writers."_
- [jekyll-feed](https://github.com/jekyll/jekyll-feed) - Produce RSS feed. _"A Jekyll plugin to generate an Atom (RSS-like) feed of your Jekyll posts."_
