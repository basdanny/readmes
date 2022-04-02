## Windows Terminal - prettify

* install [Windows Terminal](https://www.microsoft.com/en-us/p/windows-terminal/9n0dx20hk701)
* for Powershell - **posh-git** and **oh-my-posh**
  ```powershell
  Install-Module posh-git -Scope CurrentUser
  Install-Module oh-my-posh -Scope CurrentUser
  ```
* install PSReadLine
  ```powershell
  Install-Module -Name PSReadLine -AllowPrerelease -Scope CurrentUser -Force -SkipPublisherCheck
  ```
* run `notepad $PROFILE` and add these lines to the end:
  ```powershell
  Import-Module posh-git
  Import-Module oh-my-posh
  Set-PoshPrompt -Theme Paradox
  ```
* get the font
  ```powershell
  Invoke-WebRequest -Uri https://github.com/microsoft/cascadia-code/releases/download/v1911.21/CascadiaPL.ttf -OutFile .\CascadiaPL.ttf; Start-Process CascadiaPL.ttf -Wait
  ```
  * set the font in the Terminal Settings -> Profiles -> Appearance -> Font Face -> Cascadia Code  PL

<br />
<br />

[ref - Scot Hanselman](https://www.hanselman.com/blog/HowToMakeAPrettyPromptInWindowsTerminalWithPowerlineNerdFontsCascadiaCodeWSLAndOhmyposh.aspx)
