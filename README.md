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

- `scripts/brew.sh`: to install dev tools
- `scripts/osx.sh`: to configure **MacOS** settings
- `scripts/stow.sh`: to create desired symulinks

## Before Cloning the Repo

We must install the `homebrew` package manager, and install/configure `git`. 

### Install Homebrew

It is possible to install `homebrew` without local admin rights (LAR) using the following (see [docs.brew.sh](https://docs.brew.sh/Installation#untar-anywhere-unsupported)):

**Note:** LAR is required to install _applications_. In the meantime, it is still possible to download packages.

```
mkdir homebrew && curl -L https://github.com/Homebrew/brew/tarball/main | tar xz --strip-components 1 -C homebrew
eval "$(~/homebrew/bin/brew shellenv)"
brew update --force --quiet
chmod -R go-w "$(brew --prefix)/share/zsh"
```

### Install and Configure Git

```
brew install git

# Configure user values logged to each commit
git config --global user.name <user>
git config --global user.email <user_email>
```

### Generate SSH Key

Github requires an SSH key to push to our remote repos. Here, we generate the SSH key and copy the public key to the clipboard.

```
# Generate ssh-key
ssh-keygen -t ed25519 -C <user_email>

# Start ssh-agent process; adds environment vars to shell
eval "$(ssh-agent -s)"

# Load key into ssh-agent
ssh-add ~/.ssh/id_ed25519

# Copy public key to clipboard; must paste in github 
pbcopy < ~/.ssh/id_ed25519.pub
```

## Setup Development Environment

