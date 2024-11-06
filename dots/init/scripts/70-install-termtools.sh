# starship
brew install starship nvim
cp ../../etc/starship.toml ~/.config/starship.toml

# tms
# . ~/.cargo/env
# cargo install tmux-sessionizer
mkdir -p ~/bin
cp ../../bin/tmx ~/bin/tmx

mkdir -p ~/work
tms config --full-path true -p ~/work

