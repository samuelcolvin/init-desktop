# Setup Desktop Environment

```bash
cd ~
export repo=https://raw.githubusercontent.com/samuelcolvin/init-desktop/master
wget $repo/setup.sh
sudo bash setup.sh

wget $repo/.gitconfig
wget $repo/bash_extra
echo ". bash_extra" >> .bashrc
. .bashrc

wget $repo/helpmanual.py bin/ && chmod a+x bin/helpmanual.py
wget $repo/clean_terminal.sh bin/ && chmod a+x bin/clean_terminal.sh
```

## best installed manually:

* chrome - https://www.google.co.uk/chrome/browser/desktop/
* dropbox - https://www.dropbox.com/install
* ripgrep - https://github.com/BurntSushi/ripgrep/releases
