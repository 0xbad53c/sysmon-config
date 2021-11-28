@echo on
cd C:\ProgramData\sysmon\
@powershell (new-object System.Net.WebClient).DownloadFile('https://raw.githubusercontent.com/0xbad53c/sysmon-config/master/sysmonconfig-export.xml','C:\Windows\sysmon-config.xml')"
sysmon64 -c sysmonconfig-export.xml
exit
