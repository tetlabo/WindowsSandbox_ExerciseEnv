# Windows Sandboxを使い、プログラミング研修でありがちな環境を整える設定ファイル

Set-WinSystemLocale -SystemLocale ja-JP
Set-WinHomeLocation -GeoId 0x7A
Set-WinUserLanguageList ja-JP -Force
Set-TimeZone -Id "Tokyo Standard Time"
Set-WinUILanguageOverride -Language ja-JP
Set-WinCultureFromLanguageListOptOut -OptOut $False
Set-WinDefaultInputMethodOverride -InputTip "0411:00000411"

Set-ExecutionPolicy Bypass -Scope Process -Force

$progressPreference = 'silentlyContinue'
Write-Information "Downloading WinGet and its dependencies..."
Invoke-WebRequest -Uri https://aka.ms/getwinget -OutFile Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle
Invoke-WebRequest -Uri https://aka.ms/Microsoft.VCLibs.x64.14.00.Desktop.appx -OutFile Microsoft.VCLibs.x64.14.00.Desktop.appx
Invoke-WebRequest -Uri https://github.com/microsoft/microsoft-ui-xaml/releases/download/v2.7.3/Microsoft.UI.Xaml.2.7.x64.appx -OutFile Microsoft.UI.Xaml.2.7.x64.appx
Add-AppxPackage Microsoft.VCLibs.x64.14.00.Desktop.appx
Add-AppxPackage Microsoft.UI.Xaml.2.7.x64.appx
Add-AppxPackage Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle

# Add-AppxPackage -Path https://aka.ms/Microsoft.VCLibs.x64.14.00.Desktop.appx
# Add-AppxPackage -Path https://raw.githubusercontent.com/tetlabo/WindowsSandbox_ExerciseEnv/main/winget/Microsoft.UI.Xaml.2.7.appx
# Add-AppxPackage -Path https://github.com/microsoft/winget-cli/releases/download/v1.6.3482-preview/Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle -Confirm:$false

#Invoke-Expression -Command "echo Y | winget install \`"App Installer\`" -s msstore"

#Invoke-Expression -Command "echo Y | winget install --id Google.Chrome"

$program = "winget"
$argument = "install --id Google.Chrome --accept-package-agreements --accept-source-agreements"

Start-Process -FilePath $program -ArgumentList $argument -NoNewWindow -Wait


$program = "winget"
$argument = "install --id RProject.R --accept-package-agreements --accept-source-agreements"

Start-Process -FilePath $program -ArgumentList $argument -NoNewWindow -Wait

$program = "winget"
$argument = "install --id RProject.Rtools --accept-package-agreements --accept-source-agreements"

Start-Process -FilePath $program -ArgumentList $argument -NoNewWindow -Wait


$program = "winget"
$argument = "install --id posit.rstudio --accept-package-agreements --accept-source-agreements"

Start-Process -FilePath $program -ArgumentList $argument -NoNewWindow -Wait


$program = "winget"
$argument = "install --id Microsoft.Git --accept-package-agreements --accept-source-agreements"

Start-Process -FilePath $program -ArgumentList $argument -NoNewWindow -Wait

$env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User")


$program = "winget"
$argument = "install --id GitHub.GitLFS --accept-package-agreements --accept-source-agreements"

Start-Process -FilePath $program -ArgumentList $argument -NoNewWindow -Wait


$program = "winget"
$argument = "install --id Microsoft.VisualStudioCode --accept-package-agreements --accept-source-agreements"

Start-Process -FilePath $program -ArgumentList $argument -NoNewWindow -Wait
