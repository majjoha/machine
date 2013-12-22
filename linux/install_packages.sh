# Install the following packages:
packages=( 'update' 'safe-upgrade' 'build-essential' 'vim' 'git' 'curl' 'tmux' 'irssi' 'tig' 'zsh' 'haskell-platform' );

# Update system packages with apt-get.
sudo apt-get -y update
sudo apt-get -y safe-upgrade

# Install aptitude (a better package manager).
sudo apt-get -y install aptitude

# Install packages
for package in "${packages[@]}"
do
  echo "###########"
  echo "Installing $package"
  echo "##########"
  sudo aptitude -y "$package"
done

# Install oh-my-zsh.
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

# Change default shell from bash to zsh.
chsh -s /bin/zsh

# Install RVM and get the latest stable Ruby release.
curl -L https://get.rvm.io | bash -s stable --ruby
