# Install the following packages:
packages=( 'build-essential' 'vim' 'git' 'curl' 'tmux' 'irssi' 'tig' 'zsh' 'haskell-platform' );

sudo apt-get -y update
sudo apt-get -y safe-upgrade
sudo apt-get -y install aptitude
sudo aptitude -y update
sudo aptitude -y safe-upgrade

for package in "${packages[@]}"
do
  echo -e "\e[0;32mInstalling $package...\e[0m"
  sudo aptitude install -y "$package"
done
