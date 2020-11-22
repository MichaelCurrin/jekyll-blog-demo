
### Customization

Create a project from this template or fork it. Then update it to suit your own needs.

- Replace the `baseurl` value in the [config](/_config.yml) with your own project's name.
- To change the theme, set one in both the [config](/_config.yml) and [Gemfile](/Gemfile). Both are needed for a local builds, while only the config needs to be set for Github Pages builds, at least for the builtin themes on Github Pages.

You can remove these and add more content pages or blog posts. If you don't need markdown you can convert files from `.md` to `.html` and change the content.

Update the values in the config file to match your project. Such as `url`.

If you want Google Analytics tracking, this is already supported by the Minima theme used here. So just set the ID in the config file.

Example:

- `_config.yml`
    ```yaml
    google_analytics: UA-123467-78
    ```

Note on [.gitignore](/.gitignore) - `.jekyll-metadata` is a file that should be ignored. It is created when running `jekyll new PATH` or more commonly when serving in incremental mode.


### Gems

This project uses the following gems, which came with the sample blog:

- [jekyll](https://github.com/jekyll/jekyll)
    - This builds the site locally or in the cloud. Installed in the project gems rather than globally.
    - > "Jekyll is a blog-aware static site generator in Ruby"
- [minima](https://github.com/jekyll/minima)
    - This is a theme to add styling to built pages.
    - > "Minima is a one-size-fits-all Jekyll theme for writers."
- [jekyll-feed](https://github.com/jekyll/jekyll-feed)
    - Add Atom feed around blog posts.
- [jekyll-sitemap](https://github.com/jekyll/jekyll-sitemap)
    - Add `robots.txt` and `sitemap.xml` files.
- [jekyll-seo-tag](https://github.com/jekyll/jekyll-seo-tag)
    - Add SEO metadata tags to the page.
    - This used by the theme and its template so does not have to be covered directly in this blog's config, unlike the two covered above.

If you are running on Windows, you might want to add these to `Gemfile`, as they came with the quickstart.

```ruby
# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]

# Performance-booster for watching directories on Windows
gem "wdm", "~> 0.1.0" if Gem.win_platform?
```
