apt-get update
apt-get upgrade

apt-get install -y git zsh unzip
apt-get install -y wget stow make cmake
apt-get install -y python3.4-venv
apt-get install -y silversearcher-ag tig
apt-get install -y autojump
apt-get install -y vim
apt-get install -y python2.7-dev
apt-get install -y g++

# ActiveMQ
apt-get install -y default-jdk
tar xf /vagrant/artifacts/apache-activemq-5.15.4-bin.tar.gz -C /opt

# Oh-my-zsh
git clone git://github.com/robbyrussell/oh-my-zsh.git /home/vagrant/.oh-my-zsh
cp /home/vagrant/.oh-my-zsh/templates/zshrc.zsh-template /home/vagrant/.zshrc
chsh -s /usr/bin/zsh vagrant

# Change oh-my-zsh default theme to kardan
sed -i -e 's/robbyrussell/kardan/g' /home/vagrant/.zshrc

# cd into /vagrant
echo "cd /vagrant" >> /home/vagrant/.zshrc
