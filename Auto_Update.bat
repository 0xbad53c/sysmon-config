@echo on
cd C:\ProgramData\sysmon\
@powershell (new-object System.Net.WebClient).DownloadFile('https://raw.githubusercontent.com/0xbad53c/sysmon-config/master/sysmonconfig-export.xml','C:\Windows\sysmon-config.xml')"
C:\Windows\sysmon.exe -c C:\Windows\sysmon-config.xml
exit
