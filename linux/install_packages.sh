# Install the following packages:
packages=( 'update' 'safe-upgrade' 'build-essential' 'vim' 'git' 'curl' 'tmux' 'irssi' 'tig' 'zsh' 'haskell-platform' );

for package in "${packages[@]}"
do
echo -e "\e[0;32mInstalling $package...\e[0m"
  sudo aptitude install -y "$package"
done

# Install oh-my-zsh.
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

# Change default shell from bash to zsh.
chsh -s /bin/zsh

# Install RVM and get the latest stable Ruby release.
curl -L https://get.rvm.io | bash -s stable --ruby

# Source RVM
source $HOME/.rvm/scripts/rvm
