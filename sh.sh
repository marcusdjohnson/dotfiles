sudo apt udate
sudo apt upgrade 
sudo apt-get install libcurl4-gnutls-dev
sudo add-apt-repository ppa:gophers/archive
sudo apt-get update
sudo apt-get install golang-1.10-go
sudo apt install python3-pip
mkdir ~/tools
cd tools
git clone https://github.com/aboul3la/Sublist3r.git
cd Sublist3r
sudo apt install python-pip
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
sudo apt-get install git gcc make libpcap-dev
sudo apt intall masscan
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
apt install golang-go
go get github.com/OJ/gobuster
cd ~
# open vim run :plugininstall
# wakatime apikey : 2077dd05-f247-4215-a05b-edeb66293c19
