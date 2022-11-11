@if (@CodeSection == @Batch) @then

@echo off

set SendKeys=CScript //nologo //E:JScript "%~F0"
START CHROME --restore-last-session --start-fullscreen "https://demo.guru99.com/V4/"

timeout /t 5
FOR /L %%G IN (1,1,20) DO %SendKeys% "{TAB}"
%SendKeys% "mngr454177"
%SendKeys% "{TAB}"
::timeout /t 2
%SendKeys% "mUgumut"
%SendKeys% "{TAB}"
%SendKeys% "{ENTER}"
timeout /t 6
FOR /L %%G IN (1,1,34) DO %SendKeys% "{TAB}"
%SendKeys% "{ENTER}"
timeout /t 4

:: ------------------- Edit user -----------------------

START CHROME --restore-last-session --start-fullscreen "https://demo.guru99.com/V4/"
timeout /t 5
FOR /L %%G IN (1,1,20) DO %SendKeys% "{TAB}"
%SendKeys% "mngr454177"
%SendKeys% "{TAB}"
::timeout /t 2
%SendKeys% "mUgumut"
%SendKeys% "{TAB}"
%SendKeys% "{ENTER}"
timeout /t 5
FOR /L %%G IN (1,1,22) DO %SendKeys% "{TAB}"
%SendKeys% "{ENTER}"
timeout /t 5
FOR /L %%G IN (1,1,35) DO %SendKeys% "{TAB}"
%SendKeys% "23011"
%SendKeys% "{TAB}"
%SendKeys% "{ENTER}"
timeout /t 5
FOR /L %%G IN (1,1,39) DO %SendKeys% "{TAB}"
timeout /t 5
%SendKeys% "416855600"
timeout /t 5
FOR /L %%G IN (1,1,2) DO %SendKeys% "{TAB}"
%SendKeys% "{ENTER}"
timeout /t 1
%SendKeys% "{ENTER}"
timeout /t 3
FOR /L %%G IN (1,1,34) DO %SendKeys% "{TAB}"
%SendKeys% "{ENTER}"
timeout /t 1
%SendKeys% "{ENTER}"

goto :EOF

@end

var WshShell = WScript.CreateObject("WScript.Shell");
WshShell.SendKeys(WScript.Arguments(0));