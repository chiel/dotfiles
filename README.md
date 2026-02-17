# dotfiles

## Setup

### Bash (macOS)

macOS ships with bash 3.2. Install a modern version via Homebrew:

```
brew install bash
echo /opt/homebrew/bin/bash | sudo tee -a /etc/shells
chsh -s /opt/homebrew/bin/bash
```

Restart your terminal (or reboot) for the change to take effect.
