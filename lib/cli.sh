# shellcheck shell=bash
######################################################################
#<
#
# Function: p6df::modules::homebrew::cli::brew::install(...)
#
#  Args:
#	... - 
#
#>
######################################################################
p6df::modules::homebrew::cli::brew::install() {
    shift 0

    p6df::modules::homebrew::cmd::brew install "$@"

    p6_return_void
}

######################################################################
#<
#
# Function: p6df::modules::homebrew::cli::brew::services::start(...)
#
#  Args:
#	... - 
#
#>
######################################################################
p6df::modules::homebrew::cli::brew::services::start() {
    shift 0

    p6df::modules::homebrew::cmd::brew services start "$@"

    p6_return_void
}

######################################################################
#<
#
# Function: p6df::modules::homebrew::cli::brew::services::stop(...)
#
#  Args:
#	... - 
#
#>
######################################################################
p6df::modules::homebrew::cli::brew::services::stop() {
    shift 0

    p6df::modules::homebrew::cmd::brew services stop "$@"

    p6_return_void
}
