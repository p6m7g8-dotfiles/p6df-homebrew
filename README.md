# P6's POSIX.2: p6df-homebrew

## Table of Contents

## Badges

[![License](https://img.shields.io/badge/License-Apache%202.0-yellowgreen.svg)](https://opensource.org/licenses/Apache-2.0)

## Summary

## Contributing

- [How to Contribute](<https://github.com//.github/blob/main/CONTRIBUTING.md>)

## Code of Conduct

- [Code of Conduct](<https://github.com//.github/blob/main/CODE_OF_CONDUCT.md>)

## Usage

### Aliases

- p6_hbbr IS p6df::modules::homebrew::util::brew::remove
- p6_hbcr IS p6df::modules::homebrew::util::casks::remove
- p6_hbr IS p6df::modules::homebrew::util::remove

### Functions

## p6df-homebrew

### p6df-homebrew/init.zsh

- p6df::modules::homebrew::aliases::init()
- p6df::modules::homebrew::deps()
- p6df::modules::homebrew::init(_module, dir)

## p6df-homebrew/lib

### p6df-homebrew/lib/cli.sh

- p6df::modules::homebrew::cli::brew::install(...)
- p6df::modules::homebrew::cli::brew::services::start(...)
- p6df::modules::homebrew::cli::brew::services::stop(...)

### p6df-homebrew/lib/cmd.sh

- p6df::modules::homebrew::cmd::brew(...)

### p6df-homebrew/lib/util.sh

- p6df::modules::homebrew::brews::remove()
- p6df::modules::homebrew::util::casks::remove()
- p6df::modules::homebrew::util::install()
- p6df::modules::homebrew::util::nuke()
- p6df::modules::homebrew::util::remove()

## Hierarchy

```text
.
├── init.zsh
├── lib
│   ├── cli.sh
│   ├── cmd.sh
│   └── util.sh
└── README.md

2 directories, 5 files
```

## Author

Philip M . Gollucci <pgollucci@p6m7g8.com>
