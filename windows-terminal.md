## Windows Terminal - prettify
* Install [Nerd Font](https://www.nerdfonts.com/font-downloads), e.g., **Caskaydia Cove Nerd**
* set the font in the Terminal Settings -> Profiles -> Appearance -> Font Face -> \{name of the font\}
* Install Oh My Posh for PowerShell
  ```powershell
  winget install oh-my-posh
  ```
  or MS store version
  ```powershell
  winget install XP8K0HKJFRXGCK
  ```
* Choose and apply a PowerShell prompt theme
  ```powershell
  notepad $PROFILE
  ```
  add the following (replace the 'paradox' with desired [theme](https://ohmyposh.dev/docs/themes))
  ```
  oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\paradox.omp.json" | Invoke-Expression
  ```


---

### Older instructions
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
