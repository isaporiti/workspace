#!/bin/bash

curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh
curl -s "https://get.sdkman.io" | bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash

brew install --cask alacritty
brew install --cask docker
brew install --cask rectangle
brew install --cask brave-browser
# brew install --cask insomnia
# brew install --cask visual-studio-code
# brew install --cask intellij-idea

sdk install java 11.0.10.j9-adpt

nvm install --lts
