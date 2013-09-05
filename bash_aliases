# Force verbose mode
alias ln='ln -v'
alias cp='cp -v'
alias mv='mv -v'
alias rm='rm -v'

# Utils shortcuts
# alias gti='git'
alias my='mysql -u root'
alias maj='sudo aptitude update && sudo aptitude safe-upgrade && sudo aptitude autoclean'
alias mng='./manage.py'
alias ls='ls -G'
alias la='ls -a -G'
alias l='ls -l -G'

# Geek stufs
alias futurama="curl -Is slashdot.org | egrep '^X-(F|B|L)' | cut -d \- -f 2"
