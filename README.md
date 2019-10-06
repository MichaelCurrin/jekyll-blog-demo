# Jekyll Blog Demo
> Minimal base for a static site blog - built on Jekyll.

This project demonstrates how to build a static site with a few pieces of content template files which are built into full webpages with more structure and style. The content files are markdown and HTML files at the top-level and some markdown post files in a subdirectory.

This repo was based on an example provided by Jekyll as the [jekyll/example](https://github.com/jekyll/example) repo. One way to get that example is to run the command from a [Jekyll](https://jekyllrb.com/) tutorial:

```bash
$ jekyll new jekyll-blog-demo
```


## Usage

This project can be run both locally and on Github Pages.

### Setup and run

Follow this [setup and run](https://github.com/MichaelCurrin/static-sites-generator-resources/blob/master/Jekyll/setup_and_run.md) guide. In particular, see the _With a Gemfile_ section's _Installation_ and _Run_ sections.

### Customization

Create a project from this template or fork it. Then update it to suit your own needs.

- Replace the `baseurl` value in the [config](/_config.yml) with your own project's name.
- To change the theme, set one in both the [config](/_config.yml) and [Gemfile](/Gemfile). Both are needed for a local builds, while only the config needs to be set for Github Pages builds, at least for the builtin themes on Github Pages.


## Gems

This project uses the following gems, which came with the sample blog:

- [jekyll](https://github.com/jekyll/jekyll) - This builds the site locally or in the cloud. _"Jekyll is a blog-aware static site generator in Ruby"_
- [minima](https://github.com/jekyll/minima) - This is a theme to add styling to built pages. _"Minima is a one-size-fits-all Jekyll theme for writers."_
- [jekyll-feed](https://github.com/jekyll/jekyll-feed) - Produce RSS feed. _"A Jekyll plugin to generate an Atom (RSS-like) feed of your Jekyll posts."_
