```
    ____        __  _____ __
   / __ \____  / /_/ __(_) /__  _____
  / / / / __ \/ __/ /_/ / / _ \/ ___/
 / /_/ / /_/ / /_/ __/ / /  __(__  )
/_____/\____/\__/_/ /_/_/\___/____/
```

My dotfiles to configure a dev environment on a **MacOS** machine. Configuration files are managed using GNU Stow.

## Custom Scripts

Underlying scripts used configure the machine include the following:

- `scripts/brew.sh`: to download `homebrew`; install applications
- `scripts/osx.sh`: to configure **MacOS** settings
- `scripts/stow.sh`: to create desired symulinks

## Preliminaries

This configuration manages packages using `homebrew`. The default instructions on [brew.sh](https://brew.sh) installs the package manager in `/opt/hombrew`, which requires `sudo` privileges (local admin rights, LAR). We are not provided local admin rights.

Rights are temporarily granted by submitting a request in the _Admin By Request_ app. Use LanchPad to determine if the app is installed. If not, go to IT Support (first aid icon in MenuBar) >> Self-Service >> Search "Admin By Request". Contact IT if it is not available. **Note:** IT may require you to complete Local Admin Rights before you can install the app.

It is possible to install `homebrew` without LAR by installing it in a location that does not require LAR (see [docs.brew.sh](https://docs.brew.sh/Installation#untar-anywhere-unsupported)), as is done below.

```
mkdir homebrew && curl -L https://github.com/Homebrew/brew/tarball/main | tar xz --strip-components 1 -C homebrew
eval "$(homebrew/bin/brew shellenv)"
brew update --force --quiet
chmod -R go-w "$(brew --prefix)/share/zsh"
```

Nevertheless, LAR is still required to download applications which is the case for this configuration.

## Setup Development Environment

