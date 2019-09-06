sudo apt-get update 
sudo apt-get -y upgrade.
sudo apt-get install -y libcurl4-openssl-dev
sudo apt-get install -y libssl-dev
sudo apt-get install -y jq
sudo apt-get install -y ruby-full
sudo apt-get install -y libcurl4-openssl-dev libxml2 libxml2-dev libxslt1-dev ruby-dev build-essential libgmp-dev zlib1g-dev
sudo apt-get install -y build-essential libssl-dev libffi-dev python-dev
sudo apt-get install -y python-setuptools
sudo apt-get install -y libldns-dev
sudo apt-get install -y python-dnspython
sudo apt-get install -y rename
sudo apt-get install -y xargs
sudo apt install -y python-pip
sudo apt install -y python3-pip

wget https://dl.google.com/go/go1.12.7.linux-amd64.tar.gz.
sudo tar -xvf go1.12.7.linux-amd64.tar.gz 
sudo mv go /usr/local.
export GOROOT=/usr/local/go.
export GOPATH=$HOME/Projects/Proj1.
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH.
echo 'export GOROOT=/usr/local/go' >> ~/.bash_profile
echo 'export GOPATH=$HOME/go'	>> ~/.bash_profile			
echo 'export PATH=$GOPATH/bin:$GOROOT/bin:$PATH' >> ~/.bash_profile
source ~/.bash_profile
sleep 1
					
sudo apt-get install -y gccgo-go
sudo apt-get install -y nmap

mkdir ~/tools
cd ~/tools
git clone https://github.com/aboul3la/Sublist3r.git
cd Sublist3r
p
sudo pip install -r requirements.txt

cd ~/tools
git clone https://github.com/v0re/dirb.git
cd ~/tools/dirb
./configure
make
make install

cd ~/tools
git clone https://github.com/vysecurity/DomLink.git
git clone https://github.com/blechschmidt/massdns.git
git clone https://github.com/pentester-io/commonspeak.git
git clone https://github.com/jhaddix/tbhm.git
git clone --depth 1 https://github.com/sqlmapproject/sqlmap.git sqlmap-dev
git clone https://github.com/guelfoweb/knock.git
git clone https://github.com/nahamsec/lazyrecon.git
git clone https://github.com/tomdev/teh_s3_bucketeers.git
go get github.com/tomnomnom/waybackurls
git clone https://github.com/maurosoria/dirsearch.git
git clone https://github.com/nahamsec/lazys3.git
git clone https://github.com/jhaddix/scripts.git
git clone https://github.com/danielmiessler/SecLists.git
curl https://gist.githubusercontent.com/jhaddix/f64c97d0863a78454e44c2f7119c2a6a/raw/96f4e51d96b2203f19f6381c8c545b278eaa0837/all.txt > all.txt
git clone https://github.com/GerbenJavado/LinkFinder.git
curl https://gist.githubusercontent.com/jhaddix/b80ea67d85c13206125806f0828f4d10/raw/c81a34fe84731430741e0463eb6076129c20c4c0/content_discovery_all.txt > content_discovery_all.txt
curl https://gist.githubusercontent.com/jhaddix/6b777fb004768b388fefadf9175982ab/raw/c9bb46af0ed31bdabac3dda1dd0fafddfd8f329e/WAHH_Task_Checklist.md > wahh_task_checklist.md

sudo pip3 install wfuzz
sudo pip3 install wafw00f

sudo snap install amass
sudo pip install requests
sudo pip install argparse
sudo pip install jsbeautifier
sudo pip install requests-file
sudo apt-get install -y git gcc make libpcap-dev

cd ~/tools/LinkFinder
python setup.py install

cd ~/tools/massdns
make
make install

cd ~
git clone https://github.com/marcusdjohnson/dotfiles.git
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

cp ~/dotfiles/vimrc ~/.vimrc
cp ~/dotfiles/tmux.conf ~/.tmux.conf
cp ~/dotfiles/.bashrc ~/.bashrc

source ~/.bashrc

sudo apt intall -y masscan
go get github.com/OJ/gobuster
go get github.com/michenriksen/aquatone

cd ~
# open vim run :plugininstall
# wakatime apikey : 2077dd05-f247-4215-a05b-edeb66293c19
