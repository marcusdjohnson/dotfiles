{\rtf1\ansi\ansicpg1252\cocoartf1561\cocoasubrtf600
{\fonttbl\f0\fswiss\fcharset0 Helvetica;\f1\fnil\fcharset0 Consolas;}
{\colortbl;\red255\green255\blue255;\red27\green31\blue34;\red21\green23\blue26;\red244\green246\blue249;
\red6\green33\blue79;\red36\green38\blue41;\red235\green236\blue237;\red43\green39\blue19;\red27\green31\blue34;
\red244\green246\blue249;\red16\green60\blue192;}
{\*\expandedcolortbl;;\cssrgb\c14118\c16078\c18039;\cssrgb\c10588\c12157\c13725\c4706;\cssrgb\c96471\c97255\c98039;
\cssrgb\c1176\c18431\c38431;\cssrgb\c18824\c20000\c21176;\cssrgb\c93725\c94118\c94510;\cssrgb\c22353\c20000\c9412;\cssrgb\c14118\c16078\c18039;
\cssrgb\c96471\c97255\c98039;\cssrgb\c6667\c33333\c80000;}
\margl1440\margr1440\vieww33400\viewh19580\viewkind0
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f0\fs24 \cf0 apt update\
apt upgrade\
apt install golang\
go get github.com/subfinder/subfinder\
sudo snap install amass\
mkdir ./bounty\
apt install python\
apt install python3\
apt install python-pip\
pip install wafw00f\
cd ~\
mkdir tools\
cd tools\
git clone https://github.com/join?return_to=%2Fvysecurity%2FDomLink\
git clone https://github.com/vysecurity/DomLink.git\
git clone https://github.com/blechschmidt/massdns.git\
cd massdns/\
make\
make install\
cd ..\
git clone https://github.com/pentester-io/commonspeak.git\
git clone https://github.com/jhaddix/tbhm.git\
git clone https://github.com/jhaddix/scripts.git\
git clone https://github.com/danielmiessler/SecLists.git\
curl https://gist.githubusercontent.com/jhaddix/f64c97d0863a78454e44c2f7119c2a6a/raw/96f4e51d96b2203f19f6381c8c545b278eaa0837/all.txt > all.txt\
git clone https://github.com/GerbenJavado/LinkFinder.git\
cd LinkFinder\
python setup.py install\
pip install requests\
pip install argparse\
pip install jsbeautifier\
pip install requests-file\
cd ..\
curl https://gist.githubusercontent.com/jhaddix/b80ea67d85c13206125806f0828f4d10/raw/c81a34fe84731430741e0463eb6076129c20c4c0/content_discovery_all.txt > content_discovery_all.txt\
curl https://gist.githubusercontent.com/jhaddix/6b777fb004768b388fefadf9175982ab/raw/c9bb46af0ed31bdabac3dda1dd0fafddfd8f329e/WAHH_Task_Checklist.md > wahh_task_checklist.md\
ls\
\pard\pardeftab720\sl320\partightenfactor0

\f1\fs27\fsmilli13600 \cf2 \cb3 \expnd0\expndtw0\kerning0
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim\
git clone https://github.com/marcusdjohnson/dotfiles.git\
cp ~/dotfiles/vimrc ~/.vimrc\
cp ~/dotfiles/tmux.conf ~/tmux.conf\
\pard\pardeftab720\sl380\partightenfactor0
\cf2 \cb4 sh -c \cf5 "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"\cf2 \
\pard\pardeftab720\sl300\partightenfactor0

\fs26 \cf6 \cb7 \outl0\strokewidth0 \strokec6 sudo apt install libcurl4-openssl-dev libssl-dev\cf8 \strokec8 \
\cf6 \strokec6 apt install python3-pip\
\pard\pardeftab720\sl380\partightenfactor0

\fs27\fsmilli13600 \cf9 \cb10 \strokec9 git clone {\field{\*\fldinst{HYPERLINK "https://github.com/j3ssie/Osmedeus"}}{\fldrslt \cf11 \ul \ulc11 \strokec11 https://github.com/j3ssie/Osmedeus}}\
cd Osmedeus\
./install.sh
\f0\fs24 \cf0 \cb1 \kerning1\expnd0\expndtw0 \outl0\strokewidth0 \
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 history > log.txt\
\
\
}