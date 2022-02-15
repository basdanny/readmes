## Mac installations

| Description                                                   | Command               |
|---------------------------------------------------------------|-----------------------|
| **brew** - package manager                                    |`/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`  |
| **iTerm2** - replacement for macOS built-in Terminal          |`brew install iterm2 --cask`   |
| **oh-my-zsh** - zsh configuration                              | `sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"` |
| latest **git**                                                | `brew install git`                                                                                       |
| **VSCode**                                                    |  |
| [**fnm**](https://github.com/Schniz/fnm) - switch between multiple node versions | `curl -fsSL https://fnm.vercel.app/install \| bash`        |
| x.x.x version of **Node**                                     | `fnm install <x>`                                                                
| [**Watchman**](https://facebook.github.io/watchman) - watching files using Jest test runner   | `brew install watchman`                       |


### GitHub
- ssh keys - [here](https://help.github.com/articles/generating-ssh-keys)
- user/email configuration:
    ```sh
    git config --global user.name "YOUR-USER-NAME"
    git config --global user.email "YOUR-EMAIL"
    ```
- **pull.rebase** strategy\
    possible values:
    ```sh
    git config pull.rebase false  # merge (the default strategy)
    git config pull.rebase true   # rebase
    git config pull.ff only       # fast-forward only
    ```
    recommended:
    ```git config --global pull.ff only```
- **upstream** for **git push**\
    To avoid upstream message, set git to use current branch by default:\
    `git config --global push.default current`
- git is not case-sensitive by default, which can cause problems when trying to rename files without `git mv`, reconfigure:\
    `git config --global core.ignorecase false`

### Optional tools
- [VSCode](https://code.visualstudio.com/)
- [faster keyboard](https://www.maketecheasier.com/adjust-cursor-speed-in-mac/)
- [git-fork](https://git-fork.com/) - fast and friendly git client
- Chome extensions
    - [Edit This Cookie](https://chrome.google.com/webstore/detail/editthiscookie/fngmhnnpilhplaeedifhccceomclgfbg)
    - [React Developer Tools](https://chrome.google.com/webstore/detail/react-developer-tools/fmkadmapgofadopljbjfkapdkoienihi?hl=en)
    - [Video Speed Controller](https://chrome.google.com/webstore/detail/video-speed-controller/nffaoalbilbmmfgbnbgppjihopabppdk)
    - AdBlock
    - [GitHub Pull Request Tree](https://chrome.google.com/webstore/detail/github-pull-request-tree/nfhdjopbhlggibjlimhdbogflgmbiahc)
- DB
    - [Robo 3T](https://robomongo.org/download)
    - [Sequel Pro](https://sequelpro.com/download)
    - [TablePlus](https://tableplus.com/download)
- [Rectangle](https://rectangleapp.com/) - window manager
- Optimize macOS environment - [here](https://amiryonatan.medium.com/increase-development-productivity-in-macos-c936fce43c17)
