######################################################################
#<
#
# Function: p6df::modules::homebrew::deps()
#
#>
######################################################################
p6df::modules::homebrew::deps() {
  ModuleDeps=(
    p6m7g8-dotfiles/p6common
  )
}

# Warning: Using vim because no editor was set in the environment.
# This may change in the future, so we recommend setting EDITOR,
# or HOMEBREW_EDITOR to your preferred text editor.
######################################################################
#<
#
# Function: p6df::modules::homebrew::init()
#
#  Environment:	 HOMEBREW_EDITOR HOMEBREW_PREFIX PREFIX
#>
######################################################################
p6df::modules::homebrew::init() {

  local homebrew_prefix=$(brew --config | awk -F: '/PREFIX/ { print $2 }' | sed -e 's, ,,g')

  p6_env_export "HOMEBREW_EDITOR" "vim"
  p6_env_export "HOMEBREW_PREFIX" "$homebrew_prefix"

  alias p6_hbr=p6df::modules::homebrew::remove
  alias p6_hbcr=p6df::modules::homebrew::casks::remove
  alias p6_hbbr=p6df::modules::homebrew::brew::remove
}

######################################################################
#<
#
# Function: p6df::modules::homebrew::remove()
#
#>
######################################################################
p6df::modules::homebrew::remove() {

  p6df::modules::homebrew::casks::remove
  p6df::modules::homebrew::brews::remove
}

######################################################################
#<
#
# Function: p6df::modules::homebrew::casks::remove()
#
#>
######################################################################
p6df::modules::homebrew::casks::remove() {

  local formuli=$(brew list --cask)

  local formula
  for formula in $(echo $formuli); do
    brew uninstall --cask $formula
  done
}

######################################################################
#<
#
# Function: p6df::modules::homebrew::brews::remove()
#
#>
######################################################################
p6df::modules::homebrew::brews::remove() {

  local formuli=$(brew list --formula)

  local formula
  for formula in $(echo $formuli); do
    brew uninstall --ignore-dependencies --force $formula
  done
}

######################################################################
#<
#
# Function: p6df::modules::homebrew::nuke()
#
#  Environment:	 HOMEBREW_PREFIX
#>
######################################################################
p6df::modules::homebrew::nuke() {

  rm -rf $HOMEBREW_PREFIX
  mkdir -p $HOMEBREW_PREFIX
}

######################################################################
#<
#
# Function: p6df::modules::homebrew::install()
#
#  Environment:	 HEAD
#>
######################################################################
p6df::modules::homebrew::install() {

  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
}
