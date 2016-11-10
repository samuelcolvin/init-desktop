# Setup Desktop Environment

```bash
cd ~
export repo=https://raw.githubusercontent.com/samuelcolvin/init-desktop/master
wget $repo/setup.sh
sudo bash setup.sh

wget $repo/.gitconfig
wget $repo/.editorconfig
wget $repo/.vimrc
wget $repo/bash_extra
echo ". ~/bash_extra" >> .bashrc
. .bashrc

mkdir -p bin
cd bin
wget $repo/helpmanual.py && chmod a+x helpmanual.py
wget $repo/clean_terminal.sh && chmod a+x clean_terminal.sh

mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
```

## best installed manually:

* chrome - https://www.google.co.uk/chrome/browser/desktop/
* dropbox - https://www.dropbox.com/install
* ripgrep - https://github.com/BurntSushi/ripgrep/releases
