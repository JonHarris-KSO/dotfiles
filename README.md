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

Local admin rights are required to install `homebrew` and subsequent dev tools. Rights are temporarily granted by submitting a request in the `Admin By Request` app. Use `LanchPad` to determine if the app is installed. If not, go to IT Support (first aid icon in MenuBar) >> Self-Service >> Search "Admin By Request". Contact IT if it is not available. **Note:** IT may require you to complete Local Admin Rights before you can install the app. 

## Setup Development Environment

