Set-WinSystemLocale -SystemLocale ja-JP
Set-WinHomeLocation -GeoId 0x7A
Set-WinUserLanguageList ja-JP -Force
Set-TimeZone -Id "Tokyo Standard Time"
Set-WinUILanguageOverride -Language ja-JP
Set-WinCultureFromLanguageListOptOut -OptOut $False
Set-WinDefaultInputMethodOverride -InputTip "0411:00000411"

#$program = "curl"
#$argument = "-L https://www.jamovi.org/downloads/jamovi-2.2.2.0-win64.exe --output C:\users\WDAGUtilityAccount\Downloads\jamovi-2.2.2.0-win64.exe"

#Start-Process -FilePath $program -ArgumentList $argument -NoNewWindow -Wait


$ProgressPreference = "SilentlyContinue"
Invoke-WebRequest -Uri "https://www.jamovi.org/downloads/jamovi-1.6.23.0-win64.exe" -OutFile "C:\users\WDAGUtilityAccount\Downloads\jamovi-1.6.23.0-win64.exe"


$program = "C:\users\WDAGUtilityAccount\Downloads\jamovi-1.6.23.0-win64.exe"
$argument = "/S"

Start-Process -FilePath $program -ArgumentList $argument -NoNewWindow
