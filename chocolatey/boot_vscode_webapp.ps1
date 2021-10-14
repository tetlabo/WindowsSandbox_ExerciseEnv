Set-WinSystemLocale -SystemLocale ja-JP
Set-WinHomeLocation -GeoId 0x7A
Set-WinUserLanguageList ja-JP -Force
Set-TimeZone -Id "Tokyo Standard Time"
Set-WinUILanguageOverride -Language ja-JP
Set-WinCultureFromLanguageListOptOut -OptOut $False
Set-WinDefaultInputMethodOverride -InputTip "0411:00000411"

Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

Invoke-Expression -Command "echo A | choco install googlechrome"

$program = "choco"

$argument = "install vscode"

Start-Process -FilePath $program -ArgumentList $argument -NoNewWindow -Wait

$argument = "install git"

Start-Process -FilePath $program -ArgumentList $argument -NoNewWindow -Wait

$argument = "install git-lfs"

Start-Process -FilePath $program -ArgumentList $argument -NoNewWindow -Wait

$argument = "install openjdk"

Start-Process -FilePath $program -ArgumentList $argument -NoNewWindow -Wait

$argument = "install tomcat"

Start-Process -FilePath $program -ArgumentList $argument -NoNewWindow -Wait

$argument = "install apache-httpd"

Start-Process -FilePath $program -ArgumentList $argument -NoNewWindow -Wait

$argument = "install postgresql"

Start-Process -FilePath $program -ArgumentList $argument -NoNewWindow -Wait

$argument = "install pgadmin4"

Start-Process -FilePath $program -ArgumentList $argument -NoNewWindow -Wait
