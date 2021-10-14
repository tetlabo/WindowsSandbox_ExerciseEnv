# Windows Sandboxを使い、プログラミング研修でありがちな環境を整える設定ファイル

Set-WinSystemLocale -SystemLocale ja-JP
Set-WinHomeLocation -GeoId 0x7A
Set-WinUserLanguageList ja-JP -Force
Set-TimeZone -Id "Tokyo Standard Time"
Set-WinUILanguageOverride -Language ja-JP
Set-WinCultureFromLanguageListOptOut -OptOut $False
Set-WinDefaultInputMethodOverride -InputTip "0411:00000411"

Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

$program = "choco"
$argument = "install -y googlechrome"

Start-Process -FilePath $program -ArgumentList $argument -NoNewWindow -Wait

$argument = "install -y vscode"

Start-Process -FilePath $program -ArgumentList $argument -NoNewWindow -Wait

$argument = "install -y git"

Start-Process -FilePath $program -ArgumentList $argument -NoNewWindow -Wait

$argument = "install -y git-lfs"

Start-Process -FilePath $program -ArgumentList $argument -NoNewWindow -Wait

$argument = "install -y openjdk"

Start-Process -FilePath $program -ArgumentList $argument -NoNewWindow -Wait

$argument = "install -y tomcat"

Start-Process -FilePath $program -ArgumentList $argument -NoNewWindow -Wait

$argument = "install -y apache-httpd"

Start-Process -FilePath $program -ArgumentList $argument -NoNewWindow -Wait

$argument = "install -y postgresql"

Start-Process -FilePath $program -ArgumentList $argument -NoNewWindow -Wait

$argument = "install -y pgadmin4"

Start-Process -FilePath $program -ArgumentList $argument -NoNewWindow -Wait
