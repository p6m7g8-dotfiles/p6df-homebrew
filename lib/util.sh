# shellcheck shell=bash
######################################################################
#<
#
# Function: p6df::modules::homebrew::util::install()
#
#  Environment:	 HEAD
#>
######################################################################
p6df::modules::homebrew::util::install() {

    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
}

######################################################################
#<
#
# Function: p6df::modules::homebrew::util::nuke()
#
#  Environment:	 HOMEBREW_PREFIX
#>
######################################################################
p6df::modules::homebrew::util::nuke() {

    p6_dir_rmrf "$HOMEBREW_PREFIX"
    p6_dir_mk "$HOMEBREW_PREFIX"
}

# shellcheck shell=bash
######################################################################
#<
#
# Function: p6df::modules::homebrew::util::remove()
#
#>
######################################################################
p6df::modules::homebrew::util::remove() {

    p6df::modules::homebrew::util::casks::remove
    p6df::modules::homebrew::util::brews::remove
}

######################################################################
#<
#
# Function: p6df::modules::homebrew::util::casks::remove()
#
#>
######################################################################
p6df::modules::homebrew::util::casks::remove() {

    local formuli
    formuli=$(p6df::modules::homebrew::cmd::brew list --cask)

    local formula
    for formula in $formuli; do
        p6df::modules::homebrew::cmd::brew uninstall --cask "$formula"
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

    local formuli
    formuli=$(brew list --formula)

    local formula
    for formula in $formuli; do
        p6df::modules::homebrew::cmd::brew uninstall --ignore-dependencies --force "$formula"
    done
}
