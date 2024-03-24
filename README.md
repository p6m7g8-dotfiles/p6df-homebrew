# p6df-homebrew

## Table of Contents


### p6df-homebrew
- [p6df-homebrew](#p6df-homebrew)
  - [Badges](#badges)
  - [Distributions](#distributions)
  - [Summary](#summary)
  - [Contributing](#contributing)
  - [Code of Conduct](#code-of-conduct)
  - [Usage](#usage)
  - [Author](#author)

### Badges

[![License](https://img.shields.io/badge/License-Apache%202.0-yellowgreen.svg)](https://opensource.org/licenses/Apache-2.0)
[![Gitpod ready-to-code](https://img.shields.io/badge/Gitpod-ready--to--code-blue?logo=gitpod)](https://gitpod.io/#https://github.com/p6m7g8/p6df-homebrew)
[![Mergify](https://img.shields.io/endpoint.svg?url=https://gh.mergify.io/badges/p6m7g8/p6df-homebrew/&style=flat)](https://mergify.io)
[![codecov](https://codecov.io/gh/p6m7g8/p6df-homebrew/branch/master/graph/badge.svg?token=14Yj1fZbew)](https://codecov.io/gh/p6m7g8/p6df-homebrew)
[![Known Vulnerabilities](https://snyk.io/test/github/p6m7g8/p6df-homebrew/badge.svg?targetFile=package.json)](https://snyk.io/test/github/p6m7g8/p6df-homebrew?targetFile=package.json)
[![Gihub repo dependents](https://badgen.net/github/dependents-repo/p6m7g8/p6df-homebrew)](https://github.com/p6m7g8/p6df-homebrew/network/dependents?dependent_type=REPOSITORY)
[![Gihub package dependents](https://badgen.net/github/dependents-pkg/p6m7g8/p6df-homebrew)](https://github.com/p6m7g8/p6df-homebrew/network/dependents?dependent_type=PACKAGE)

## Summary

## Contributing

- [How to Contribute](CONTRIBUTING.md)

## Code of Conduct

- [Code of Conduct](https://github.com/p6m7g8/.github/blob/master/CODE_OF_CONDUCT.md)

## Usage


### Aliases

- p6_hbbr -> p6df::modules::homebrew::util::brew::remove
- p6_hbcr -> p6df::modules::homebrew::util::casks::remove
- p6_hbr -> p6df::modules::homebrew::util::remove

### Functions

### p6df-homebrew:

#### p6df-homebrew/init.zsh:

- p6df::modules::homebrew::aliases::init()
- p6df::modules::homebrew::deps()
- p6df::modules::homebrew::init(_module, dir)


### p6df-homebrew/lib:

#### p6df-homebrew/lib/cli.sh:

- p6df::modules::homebrew::cli::brew::install(...)
- p6df::modules::homebrew::cli::brew::services::start(...)
- p6df::modules::homebrew::cli::brew::services::stop(...)

#### p6df-homebrew/lib/cmd.sh:

- p6df::modules::homebrew::cmd::brew(...)

#### p6df-homebrew/lib/util.sh:

- p6df::modules::homebrew::brews::remove()
- p6df::modules::homebrew::util::casks::remove()
- p6df::modules::homebrew::util::install()
- p6df::modules::homebrew::util::nuke()
- p6df::modules::homebrew::util::remove()



## Hier
```text
.
├── cli.sh
├── cmd.sh
└── util.sh

1 directory, 3 files
```
## Author

Philip M . Gollucci <pgollucci@p6m7g8.com>
