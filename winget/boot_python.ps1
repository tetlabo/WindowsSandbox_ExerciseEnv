# Windows Sandboxを使い、プログラミング研修でありがちな環境を整える設定ファイル

Set-WinSystemLocale -SystemLocale ja-JP
Set-WinHomeLocation -GeoId 0x7A
Set-WinUserLanguageList ja-JP -Force
Set-TimeZone -Id "Tokyo Standard Time"
Set-WinUILanguageOverride -Language ja-JP
Set-WinCultureFromLanguageListOptOut -OptOut $False
Set-WinDefaultInputMethodOverride -InputTip "0411:00000411"

Set-ExecutionPolicy Bypass -Scope Process -Force

Add-AppxPackage -Path https://aka.ms/Microsoft.VCLibs.x64.14.00.Desktop.appx
Add-AppxPackage -Path https://raw.githubusercontent.com/tetlabo/WindowsSandbox_ExerciseEnv/main/winget/Microsoft.UI.Xaml.2.7.appx
Add-AppxPackage -Path https://github.com/microsoft/winget-cli/releases/download/v1.4.3132-preview/Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle -Confirm:$false

#Invoke-Expression -Command "echo Y | winget install \`"App Installer\`" -s msstore"

#Invoke-Expression -Command "echo Y | winget install --id Google.Chrome"

$program = "winget"
$argument = "install --id Google.Chrome --accept-package-agreements --accept-source-agreements"

Start-Process -FilePath $program -ArgumentList $argument -NoNewWindow -Wait

#$program = "winget"
#$argument = "install --id Microsoft.VisualStudio.2022.BuildTools --accept-package-agreements --accept-source-agreements"

#Start-Process -FilePath $program -ArgumentList $argument -NoNewWindow -Wait


$program = "winget"
$argument = "install --id Python.Python.3.10 --accept-package-agreements --accept-source-agreements"

Start-Process -FilePath $program -ArgumentList $argument -NoNewWindow -Wait


$env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User")


$program = "pip"
$argument = "install numpy pandas matplotlib seaborn scikit-learn notebook jupyterlab chromedriver-binary-auto selenium imbalanced-learn category-encoders autopep8 jupyter-contrib-nbextensions sweetviz apache-log-parser pycgettb pandastable japanize-matplotlib jaconv openpyxl Flask"

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
