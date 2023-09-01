#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# wahoo! Fish-touching and crab here
PS1='🐟[\u@\h \W]🦀 '
if [ "$XDG_SESSION_TYPE" == "tty" ]; then
    PS1='[\u@\h \W]$ '
fi

# rust env
if [ -f "$HOME/.cargo/env" ]; then
    . "$HOME/.cargo/env"
fi

# external scripts
for setting in ~/.bashsettings/*; do
    . "$setting"
done

# local binaries
PATH="$HOME/.local/bin:$PATH"
