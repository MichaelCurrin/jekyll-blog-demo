# Jekyll Blog Demo
> Demo to show off a minimal Jekyll blog using Github Pages

This repo was created using Jekyll's base template for a blog. It uses the `minima` theme.

```bash
$ jekyll new jekyll-blog-demo
```

Since this is a Project Page and not a User page, the assets are relative to the root domain by default and that gives `404` errors. Therefore the empty `baseurl` in [config file](_config.yml) had to be replaced with a value.

For instructions on how to setup and run this project, see my [gist](https://gist.github.com/MichaelCurrin/1085ab164550b31272699920b5549d4b).
