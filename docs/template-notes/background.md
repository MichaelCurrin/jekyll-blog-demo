# Background


## About static sites and Jekyll

The Github Page service lets you build and serve a statically generated site.

The most basic way is to serve some flat HTML files (and other assets) without any logic. This is great for a one-page site with custom styling (rather than using a theme).

This project is more advanced and runs with Jekyll. This is done by adding a [\_config.yml](/_config.yml) file. This lets you use templating and themes, which makes it easier to avoid code duplication and lets you change out a theme in your config rather than your content files. Read more in this [config guide](https://github.com/MichaelCurrin/code-cookbook/blob/master/recipes/jekyll/project-files/config.md).

Note that the [Gemfile](/Gemfile) is used for local development and not used by Github Pages.


## Simple site

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


## This project's origin

This repo is based on an example provided by Jekyll, available as the [jekyll/example](https://github.com/jekyll/example) repo. One way to get that example is to run the command from a [Jekyll](https://jekyllrb.com/) tutorial:

```sh
$ jekyll new jekyll-blog-demo
```
