apt install update
apt install upgrade
apt install python
apt install python-pip
apt install python3-pip
apt install cmake
mkdir ~/tools
cd ~/tools
git clone https://github.com/join?return_to=%2Fvysecurity%2FDomLink
git clone https://github.com/vysecurity/DomLink.git
git clone https://github.com/blechschmidt/massdns.git
cd ~/tools/massdns/
make
make install
cd ~/tools
git clone https://github.com/pentester-io/commonspeak.git
git clone https://github.com/jhaddix/tbhm.git
git clone https://github.com/jhaddix/scripts.git
git clone https://github.com/danielmiessler/SecLists.git
curl https://gist.githubusercontent.com/jhaddix/f64c97d0863a78454e44c2f7119c2a6a/raw/96f4e51d96b2203f19f6381c8c545b278eaa0837/all.txt > all.txt
git clone https://github.com/GerbenJavado/LinkFinder.git
cd ~/tools/LinkFinder
python setup.py install
pip install requests
pip install argparse
pip install jsbeautifier
pip install requests-file
cd ~/tools
curl https://gist.githubusercontent.com/jhaddix/b80ea67d85c13206125806f0828f4d10/raw/c81a34fe84731430741e0463eb6076129c20c4c0/content_discovery_all.txt > content_discovery_all.txt
curl https://gist.githubusercontent.com/jhaddix/6b777fb004768b388fefadf9175982ab/raw/c9bb46af0ed31bdabac3dda1dd0fafddfd8f329e/WAHH_Task_Checklist.md > wahh_task_checklist.md
ls

