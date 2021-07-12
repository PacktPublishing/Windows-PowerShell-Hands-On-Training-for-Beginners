Start-Process calc

Start-Process calc -PassThru

Start-Process -FilePath "C:\Practice\sample.bat"

Start-Process -FilePath 'C:\Program Files\VideoLAN\VLC\vlc.exe'



#Get-Process returns a point-in-time snapshot of a system’s running process information.



Get-Process




Get-Process -Name chrome




Get-Process -Id 10852



Get-Process -Name Calculator  | Select-Object *


Get-Process -Name chrome | Out-GridView



Get-Process -Name chrome | Select-Object * | Out-GridView


Get-Process -Name 'c*' | select -First 1 | select *



Get-Process -Name 'c*' | Select-Object -Property Name, Company, WorkingSet, Handles, Path | Format-Table




Get-Process -Name 'c*' | Select-Object -Property Name, Company, WorkingSet, Handles, Path | Format-Table -AutoSize


Get-Process -Name 'c*' | Select-Object -Property Name, Company, WorkingSet, Handles, Path | Format-List



Get-Process -Name 'c*' | Select-Object -Property Name, Company, WorkingSet, Handles, Path | Format-Table -AutoSize




Get-Process -Name 'c*' | Where-Object { ($_.Company -like 'Google*')  -and ($_.Handles -gt 500) }  | select *




Get-Process -name chrome | Stop-Process