shopt -s cdspell
shopt -s histappend
shopt -s globstar 2> /dev/null # Bash 4 only
PROMPT_COMMAND='history -a' 

# Moraje fix
export LIBCLANG_SYSTEM_INCLUDE_DIR="/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include"

export ARCHFLAGS='-arch x86_64'
export PATH="/usr/local/sbin:/usr/local/bin:/usr/local/share/python:/usr/local/share/npm/bin/:$PATH:$HOME/.rvm/bin:$HOME/.githelpers"

export HISTIGNORE="&:[ ]*"
export EDITOR='nano'
export BUNDLER_EDITOR='mate'

[[ -f ~/.ssh/gem-private_key.pem ]] && export GEM_PRIVATE_KEY='~/.ssh/gem-private_key.pem'
[[ -f ~/.ssh/gem-public_cert.pem ]] && export GEM_CERTIFICATE_CHAIN='~/.ssh/gem-public_cert.pem'

[[ -s ~/.rvm/scripts/rvm ]] && . ~/.rvm/scripts/rvm

[[ -f ~/.bash_prompt ]] && . ~/.bash_prompt
[[ -f ~/.bash_helpers ]] && . ~/.bash_helpers
[[ -f ~/.bash_aliases ]] && . ~/.bash_aliases

PREFIX=`brew --prefix 2> /dev/null`
if [ -f $PREFIX/etc/bash_completion ]; then
    . $PREFIX/etc/bash_completion
fi

# Default OSX .bash_profile
if [ "$TERM_PROGRAM" == "Apple_Terminal" ] && [ -z "$INSIDE_EMACS" ]; then
    update_terminal_cwd() {
        # Identify the directory using a "file:" scheme URL,
        # including the host name to disambiguate local vs.
        # remote connections. Percent-escape spaces.
      local SEARCH=' '
      local REPLACE='%20'
      local PWD_URL="file://$HOSTNAME${PWD//$SEARCH/$REPLACE}"
      printf '\e]7;%s\a' "$PWD_URL"
    }
    PROMPT_COMMAND="update_terminal_cwd; $PROMPT_COMMAND"
fi

[[ -f ~/.bash_local ]] && . ~/.bash_local
