#!/bin/sh

echo '\n# oh-my-zsh install\n'
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo '\n# brew install\n'
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo '\n# Powerlevel9k Font install\n'
git clone https://github.com/powerline/fonts.git /tmp/powerlevel9k-fonts && cd $_
sh ./install.sh
cd .. && rm -rf /tmp/powerlevel9k-fonts

echo '\nNVM install\n'
sudo curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.1/install.sh | bash
echo 'export NVM_DIR="$HOME/.nvm"' >> ~/.zshrc
echo '[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm' >> ~/.zshrc
zsh

