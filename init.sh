SCRIPTPATH="$( cd "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"
git submodule update --init --recursive
ln -s vimrc ~/.vimrc
ln -s tmux.conf ~/.tmux.conf
