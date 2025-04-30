set -g fish_greeting
if status is-interactive
    starship init fish | source
end
#set -x PATH $PATH /Applications/CMake.app/Contents/bin/
# Handy change dir shortcuts
abbr .. 'cd ..'
abbr ... 'cd ../..'
abbr .3 'cd ../../..'
abbr .4 'cd ../../../..'
abbr .5 'cd ../../../../..'
abbr mkdir 'mkdir -p'
abbr ya "yazi"
# Set environment variables
set -x EDITOR nvim
set -x CMAKE_3_28_6 /Applications/CMake.app/Contents/bin/
set -x LOCALBIN /Users/bbhatnagar/.local/bin/
set -x MONO /Library/Frameworks/Mono.framework/Versions/Current/bin/
# set -x MVN /Users/bbhatnagar/apache-maven-3.9.9/bin/
set -x GRADL /Users/bbhatnagar/gradle-8.13/bin/
# Update PATH
set -x PATH $CMAKE_3_28_6 $LOCALBIN $PATH $MONO $MVN $GRADL

# Aliases
alias vim="nvim"
alias vi="nvim"
alias :q="exit"
alias la="ls -la"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias code="/Applications/Visual\ Studio\ Code.app/Contents/MacOS/Electron"
