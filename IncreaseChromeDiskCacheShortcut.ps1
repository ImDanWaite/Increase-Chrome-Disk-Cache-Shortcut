$WshShell = New-Object -ComObject 'WScript.Shell'
$Shortcut = $WshShell.CreateShortcut("$env:public\desktop\Chrome.lnk")
#The below can be amended based on the location of Chrome in program files - e.g. c:\program files\google\chrome\application\chrome.exe
$Shortcut.TargetPath = "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"
#The below --disk-cache-size command increases the disk cache size.
#The below --new-window opens Chrome in a new window with it's default start-up page as www.google.co.uk
$Shortcut.Arguments = "--disk-cache-size=1073741824 --new-window https://www.google.co.uk/"
$Shortcut.WorkingDirectory = "C:\Program Files\Google\Chrome\Application\chrome.exe"
$Shortcut.Save()