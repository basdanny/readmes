
# wsl (ubuntu)

* install the distro 
	`wsl --install -d <Distribution Name>.`
* Update 
	`sudo apt update && sudo apt upgrade`
* add *wget*
	`sudo apt-get install wget ca-certificates`
* vscode in wsl: https://learn.microsoft.com/en-us/windows/wsl/tutorials/wsl-vscode

* git
```bash 
	sudo apt-get install git`
	git config --global user.name <user name>
	git config --global user.email <email>
	git config --global credential.helper "/mnt/c/Program\ Files/Git/mingw64/bin/git-credential-manager.exe"
	git config --global pull.rebase true
	git config --global rebase.autoStash true
```

* gpg
	
* zsh + oh-my-zsh
```bash
	sudo apt-get install zsh
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```	
`code ~/.bashrc` and add
```
	if test -t 1; then
	exec zsh
	fi
```
edit ~/.zshrc and select a theme name (e.g., agnoster)

* define default user: `export DEFAULT_USER='<user name goes here>'`
	
* brew:
```
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
	echo "export PATH=/home/linuxbrew/.linuxbrew/bin:\$PATH" >> ~/.zshrc
```
	
* better shell history: [fzf](https://github.com/junegunn/fzf)

* make `sudo apt install make`

* c linker `sudo apt install build-essential`

* install zip `sudo apt install zip`
