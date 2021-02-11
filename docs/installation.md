# Installation

Setup this project locally - instructions are for Unix-like (_Linux_ or _macOS_) systems.


## Requirements

- _Ruby_ - To install the project-scoped gems, including Jekyll.
- _Bundler_ - Used to manage Ruby gem dependencies in an isolated directory, to preserve your global gems.
- _Make_  - The docs here use the _make_ command, which comes with your macOS or Linux machine but not on Windows. If you go to [Makefile](/Makefile), you can look up the appropriate shell commands to run without `make`.


## Clone

Optionally this to your own repo - either fork this repo or click _Use this Template_.

Then clone your repo or this one.

Navigate to the repo root directory locally.

You can view the commands available in the [Makefile](/Makefile) or skip to the next step. Note that `make` only works in macOS or Linux. Thought, it is optional, as you can run commands directly

```bash
$ make help
```


## Install system dependencies

Install Ruby and Bundler globally - follow this [gist](https://gist.github.com/fb758aea4d35e03b9ed093afddf4e7ec).


## Install project dependencies

Install local gems.

```sh
$ make install
```

Run this command in future to upgrade to the latest gems.

```sh
$ bundle update
```

When you upgrade, the `Gemfile.lock` file will be updated, if there are any changes. You can commit this to your own repo. This file is optional for _GitHub Pages_.
