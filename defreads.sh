#!/usr/bin/env bash

#defaults read /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName

# Menu bar: hide the Time Machine, Volume, and User icons
#defaults read com.apple.systemuiserver menuExtras

# Set sidebar icon size to medium
#defaults read NSGlobalDomain NSTableViewDefaultSizeMode

# Disable Resume system-wide
#defaults read com.apple.systempreferences NSQuitAlwaysKeepsWindows

# Disable automatic capitalization as it’s annoying when typing code
defaults read NSGlobalDomain NSAutomaticCapitalizationEnabled

# Disable smart dashes as they’re annoying when typing code
defaults read NSGlobalDomain NSAutomaticDashSubstitutionEnabled

# Disable automatic period substitution as it’s annoying when typing code
defaults read NSGlobalDomain NSAutomaticPeriodSubstitutionEnabled

# Disable smart quotes as they’re annoying when typing code
defaults read NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled

# Disable auto-correct
defaults read NSGlobalDomain NSAutomaticSpellingCorrectionEnabled

# Trackpad: enable tap to click for this user and for the login screen
defaults read com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking

# Trackpad: map bottom right corner to right-click
defaults read com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadCornerSecondaryClick
defaults read com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadRightClick

# Set language and text formats
# Note: if you’re in the US, replace `EUR` with `USD`, `Centimeters` with
# `Inches`, `en_GB` with `en_US`, and `true` with `false`.
defaults read NSGlobalDomain AppleLanguages
defaults read NSGlobalDomain AppleLocale
defaults read NSGlobalDomain AppleMeasurementUnits
defaults read NSGlobalDomain AppleMetricUnits

###############################################################################
# Screen                                                                      #
###############################################################################

# Require password immediately after sleep or screen saver begins
defaults read com.apple.screensaver askForPassword
defaults read com.apple.screensaver askForPasswordDelay

###############################################################################
# Finder                                                                      #
###############################################################################

# Show icons for hard drives, servers, and removable media on the desktop
defaults read com.apple.finder ShowExternalHardDrivesOnDesktop
defaults read com.apple.finder ShowHardDrivesOnDesktop
defaults read com.apple.finder ShowRemovableMediaOnDesktop

# Enable spring loading for directories
#defaults read NSGlobalDomain com.apple.springing.enabled

# Remove the spring loading delay for directories
defaults read NSGlobalDomain com.apple.springing.delay

# Use list view in all Finder windows by default
# Four-letter codes for the other view modes: `icnv`, `clmv`, `Flwv`
defaults read com.apple.finder FXPreferredViewStyle

###############################################################################
# Dock, Dashboard, and hot corners                                            #
###############################################################################

# Set the icon size of Dock items to 36 pixels
defaults read com.apple.dock tilesize

# Wipe all (default) app icons from the Dock
# This is only really useful when setting up a new Mac, or if you don’t use
# the Dock to launch apps.
#defaults read com.apple.dock persistent-apps

# Add a spacer to the left side of the Dock (where the applications are)
#defaults read com.apple.dock persistent-apps
# Add a spacer to the right side of the Dock (where the Trash is)
#defaults read com.apple.dock persistent-others

###############################################################################
# Safari & WebKit                                                             #
###############################################################################

# Hide Safari’s sidebar in Top Sites
defaults read com.apple.Safari ShowSidebarInTopSites

###############################################################################
# Terminal & iTerm 2                                                          #
###############################################################################

# Enable Secure Keyboard Entry in Terminal.app
# See: https://security.stackexchange.com/a/47786/8918
defaults read com.apple.terminal SecureKeyboardEntry
