Set-WinSystemLocale -SystemLocale ja-JP
Set-WinHomeLocation -GeoId 0x7A
Set-WinUserLanguageList ja-JP -Force
Set-TimeZone -Id "Tokyo Standard Time"
Set-WinUILanguageOverride -Language ja-JP
Set-WinCultureFromLanguageListOptOut -OptOut $False
Set-WinDefaultInputMethodOverride -InputTip "0411:00000411"

@(
  "https://aka.ms/Microsoft.VCLibs.x64.14.00.Desktop.appx",
  "https://github.com/microsoft/winget-cli/releases/latest/download/Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle"
)|foreach-object{
  [System.IO.Path]::GetTempFileName() | Tee  -Variable TempFile
  iwr -useb $_ -OutFile $TempFile
  Add-AppxPackage $TempFile
  del $TempFile
}


Invoke-Expression -Command "echo Y | winget install --id Google.Chrome"


$program = "winget"
$argument = "install --id rproject.r"

Start-Process -FilePath $program -ArgumentList $argument -NoNewWindow -Wait


$program = "winget"
$argument = "install --id rstudio.rstudio.opensource"

Start-Process -FilePath $program -ArgumentList $argument -NoNewWindow -Wait


$program = "winget"
$argument = "install --id Microsoft.Git"

Start-Process -FilePath $program -ArgumentList $argument -NoNewWindow -Wait


$program = "winget"
$argument = "install --id GitHub.GitLFS"

Start-Process -FilePath $program -ArgumentList $argument -NoNewWindow -Wait


$program = "winget"
$argument = "install --id Microsoft.VisualStudioCode"

Start-Process -FilePath $program -ArgumentList $argument -NoNewWindow -Wait
