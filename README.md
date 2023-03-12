# RemoveLenovoVantageService
Searches the uninstall string and runs the uninstall command.

The code is so simple that there is little to describe.

- The script searches for the uninstall string of Lenovo Vantage. 
I found Vantage only in 32bit, therefore the script searches only in HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall
- It runs the uninstall command. I use cmd /c ... here because it seems quite tricky to use Start-Process with blanks in the path (c:\program files (x86))
- The script creates a 2-lines-log in c:\windows\logs


