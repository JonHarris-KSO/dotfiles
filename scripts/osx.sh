#!/usr/bin/env bash
#
# Script Name: osx.sh
#
# Description: Configure osx settings
#
# Note: Inspired by 
# - https://github.com/michaelx/dotfiles/blob/master/.macos
# - https://github.com/mathiasbynens/dotfiles/blob/main/.macos

# Close System Preferences to prevent overriding settings we intend to change
osascript -e 'tell application "System Preferences" to quit'

# Disable Apple Intelligence
defaults write com.apple.CloudSubscriptionFeatures.optIn "545129924" -bool "false"


###############################################################################
# General UI/UX                                                               #
###############################################################################

# Disable automatic capitalization as it’s annoying when typing code
defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool false

# Save screenshots to custom screenshots directory
SCREENSHOTS_PATH="$HOME/screenshots"
if [ ! -d "$SCREENSHOTS_PATH" ]; then
    mkdir "$SCREENSHOTS_PATH"
fi
defaults write com.apple.screencapture location -string "${SCREENSHOTS_PATH}"

# Save screenshots in PNG format (other options: BMP, GIF, JPG, PDF, TIFF)
defaults write com.apple.screencapture type -string "png"


###############################################################################
# Mouse, keyboard, Bluetooth accessories, and input                           #
###############################################################################

# Increase sound quality for Bluetooth headphones/headsets
defaults write com.apple.BluetoothAudioAgent "Apple Bitpool Min (editable)" -int 40

# Disable press-and-hold for keys in favor of key repeat
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false

# Set language and text formats
defaults write NSGlobalDomain AppleLanguages -array "en" "nl"
defaults write NSGlobalDomain AppleLocale -string "en_US@currency=EUR"
defaults write NSGlobalDomain AppleMeasurementUnits -string "Centimeters"
defaults write NSGlobalDomain AppleMetricUnits -bool true

# TODO: disable default keybindings by replacing plist
# See ~/Library/Preferences/com.apple.symbolichotkeys.plist


###############################################################################
# Touchpad                                                                    #
###############################################################################

# Disable “natural” (Lion-style) scrolling
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false

# Enable tap to click for this user and for the login screen
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

# Hot corners
# Possible values:
#  0: no-op
#  2: Mission Control
#  3: Show application windows
#  4: Desktop
#  5: Start screen saver
#  6: Disable screen saver
#  7: Dashboard
# 10: Put display to sleep
# 11: Launchpad
# 12: Notification Center
# 13: Lock Screen

# Top left screen corner → no-op
defaults write com.apple.dock wvous-tl-corner -int 0
defaults write com.apple.dock wvous-tl-modifier -int 0

# Top right screen corner → no-op
defaults write com.apple.dock wvous-tr-corner -int 0
defaults write com.apple.dock wvous-tr-modifier -int 0

# Top left screen corner → no-op
defaults write com.apple.dock wvous-bt-corner -int 0
defaults write com.apple.dock wvous-bt-modifier -int 0

# Bottom left screen corner → no-op
defaults write com.apple.dock wvous-bl-corner -int 0
defaults write com.apple.dock wvous-bl-modifier -int 0

# Move window using `ctrl+cmd` + dragging on any part of window
# See https://github.com/nikitabobko/AeroSpace
defaults write -g NSWindowShouldDragOnGesture -bool true


###############################################################################
# Menu-Bar / Dock                                                             #
###############################################################################

# # Automatically hide and show the Menu Bar
# # https://discussions.apple.com/thread/255637558?sortBy=rank
# defaults write NSGlobalDomain _HIHideMenuBar -bool true
# defaults write NSGlobalDomain AppleMenuBarVisibleInFullscreen -bool false 

# Show battery at %
defaults write com.apple.controlcenter BatteryShowPercentage -bool true

# Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true

# Only show active applications in dock
defaults write com.apple.dock static-only -bool true

# Reduce size of icons
defaults write com.apple.dock tilesize -int 45

# Disable magnification animation when hovering over dock
defaults write com.apple.dock magnification -bool false

# Show dock at bottom of screen 
defaults write com.apple.dock orientation -string "bottom"

# Wipe all (default) app icons from the Dock
defaults write com.apple.dock persistent-apps -array

# Disable Dashboard
defaults write com.apple.dashboard mcx-disabled -bool true

# Don’t show Dashboard as a Space
defaults write com.apple.dock dashboard-in-overlay -bool true

# Don’t automatically rearrange Spaces based on most recent use
defaults write com.apple.dock mru-spaces -bool false

# Remove the auto-hiding Dock delay and animation
defaults write com.apple.dock autohide-delay -float 0
defaults write com.apple.dock autohide-time-modifier -float 0

# Make Dock icons of hidden applications translucent
defaults write com.apple.dock showhidden -bool true

# Don’t show recent applications in Dock
defaults write com.apple.dock show-recents -bool false

# Group windows by application. 
# See: https://nikitabobko.github.io/AeroSpace/guide#a-note-on-mission-control
defaults write com.apple.dock expose-group-apps -bool true

# Kill dock to apply changes
killall Dock

###############################################################################
# Finder                                                                      #
###############################################################################

# Show hidden files in Finder
defaults write com.apple.finder AppleShowAllFiles true

# View items as a list
defaults write com.apple.finder FXPreferredViewStyle -string "nlsv"

# Show path of file
defaults write com.apple.finder ShowPathbar -bool true

# Show status of directory in Finder
defaults write com.apple.finder ShowStatusBar -bool true

# Set $HOME as the default location for new Finder windows
# For other paths, use `PfLo` and `file:///full/path/here/`
# Computer     : `PfCm`
# Volume       : `PfVo`
# $HOME        : `PfHm`
# Desktop      : `PfDe`
# Documents    : `PfDo`
# All My Files : `PfAF`
# Other…       : `PfLo`
defaults write com.apple.finder NewWindowTarget -string "PfHm"
defaults write com.apple.finder NewWindowTargetPath -string "file://${HOME}/"

# Show icons for hard drives, servers, and removable media on the desktop
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowMountedServersOnDesktop -bool true
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true

# Keep folders on top when sorting by name
defaults write com.apple.finder _FXSortFoldersFirst -bool true
defaults write com.apple.finder "_FXSortFoldersFirstOnDesktop" -bool "true"

# Avoid creating .DS_Store files on network or USB volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true

# Show all filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Disable the warning when changing a file extension
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# Show the ~/Library folder
chflags nohidden ~/Library

# Kill finder to apply changes
killall Finder