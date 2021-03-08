# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

function include_script_to_profile() {
    if [ -f $1 ]; then
	    . $1
    fi
}

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    include_script_to_profile "$HOME/.bashrc"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

export DEV_WORKSPACE=$HOME/development
export BASH_SCRIPTS_PATH=$DEV_WORKSPACE/bash_scripts

include_script_to_profile "$BASH_SCRIPTS_PATH/desktop/environments/golang"
include_script_to_profile "$BASH_SCRIPTS_PATH/desktop/environments/java"
include_script_to_profile "$BASH_SCRIPTS_PATH/desktop/environments/git_global"
include_script_to_profile "$BASH_SCRIPTS_PATH/desktop/environments/flutter"
include_script_to_profile "$BASH_SCRIPTS_PATH/desktop/environments/android/sdk"

