@echo off
set n=^&echo.
setx Path "C:\Program Files\CodeBlocks\MinGW\bin; %USERPROFILE%\AppData\Local\Microsoft\WindowsApps; C:\Program Files\Microsoft VS Code\Code.exe"
set command=setx Path "C:\Program Files\CodeBlocks\MinGW\bin; %USERPROFILE%\AppData\Local\Microsoft\WindowsApps"
echo %command% > "Z:\Start Menu\Programs\Startup\vsc_c.bat"
Z:
cd \
cd Desktop
mkdir VSC_C
cd VSC_C
echo #include ^<stdlib.h^>> main.c
echo #include ^<stdio.h^>>> main.c
echo %n%>>main.c
echo int main(){>> main.c
echo %n%    >>main.c
echo     return 0;>> main.c
echo }>> main.c
cd ..
echo [InternetShortcut]>VSC_C.url
echo URL="vscode://file/Z:/Desktop/VSC_C/">>VSC_C.url
cd VSC_C
code --goto main.c:5:4 --install-extension ms-vscode.cpptools --force --install-extension danielpinto8zz6.c-cpp-compile-run --force
pause
