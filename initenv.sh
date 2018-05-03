export RPM=$1
if [ "$RPM" = "" ]; then
	echo "Not get rpm!"
	exit
else
	echo "get rpm=" $RPM
fi

# rpm
# I_PKG="tmux vim-common vim-enhanced wget tree python3-pip python3-dev"
I_PKG="tmux vim-common wget tree python3-pip python3-dev"
sudo $RPM install -y $I_PKG

# python3env
if command -v "python3" >/dev/null 2>&1; then
	if command -v "virtualenv" >/dev/null 2>&1; then
		echo "Found virtualenv!"
	else
		pip3 install virtualenv
		virtualenv -p python3 ~/pyenv
		source ~/pyenv/bin/activate
		pip install numpy pillow requests beautifulsoup4 lxml opencv-python ipython
	fi
else
	echo "Not found Python3!!"
fi
