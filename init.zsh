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

######################################################################
#<
#
# Function: p6df::modules::homebrew::aliases::init()
#
#>
######################################################################
p6df::modules::homebrew::aliases::init() {

  p6_alias "p6_hbr" "p6df::modules::homebrew::util::remove"
  p6_alias "p6_hbcr" "p6df::modules::homebrew::util::casks::remove"
  p6_alias "p6_hbbr" "p6df::modules::homebrew::util::brew::remove"

  p6_return_void
}

# Warning: Using vim because no editor was set in the environment.
# This may change in the future, so we recommend setting EDITOR,
# or HOMEBREW_EDITOR to your preferred text editor.
######################################################################
#<
#
# Function: p6df::modules::homebrew::init(_module, dir)
#
#  Args:
#	_module -
#	dir -
#
#  Environment:	 HOMEBREW_EDITOR HOMEBREW_PREFIX PREFIX
#>
######################################################################
p6df::modules::homebrew::init() {
  local _module="$1"
  local dir="$2"

  p6_bootstrap "$dir"

  local homebrew_prefix=$(brew --config | awk -F: '/PREFIX/ { print $2 }' | sed -e 's, ,,g')

  p6_env_export "HOMEBREW_EDITOR" "vim"
  p6_env_export "HOMEBREW_PREFIX" "$homebrew_prefix"

  p6_return_void
}
