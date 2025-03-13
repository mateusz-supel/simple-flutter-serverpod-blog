#!/bin/bash

# Install Xcode CLI tools
xcode-select --install

# Install Homebrew if it's not already installed
if ! command -v brew &> /dev/null; then
    echo "Homebrew not found, installing..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo "Homebrew is already installed"
fi

# Install required Homebrew packages
brew install git cocoapods

# Install FVM (Flutter Version Manager) using the official tap
brew tap leoafarias/fvm
brew install fvm
fvm use 3.29.0

# Add FLUTTER_ROOT path to the zshrc file. This is required for the scripts that deploy for iOS.
if ! grep -q 'export FLUTTER_ROOT=' ~/.zshrc; then
  echo 'export FLUTTER_ROOT="$HOME/fvm/default"' >> ~/.zshrc
  source ~/.zshrc
  echo "FLUTTER_ROOT added to ~/.zshrc"
else
  echo "FLUTTER_ROOT already exists in ~/.zshrc"
fi

# Install fastlane
brew install fastlane

# Initialize CocoaPods (this may take a while the first time)
pod setup

echo "Flutter version 3.29.0 is now installed and set as the global version."