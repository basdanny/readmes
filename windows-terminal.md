## Windows Terminal - prettify
* Install [Nerd Font](https://www.nerdfonts.com/font-downloads), e.g., **Caskaydia Cove Nerd Font Mono**
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
