@echo off
title NetHax V0.2
MODE 1000,1000
color a
cls
:home
MODE 1000,1000
cls
echo -----------------------------
echo Hello, %USERNAME%. 
echo Welcome to NetHax Alpha V0.2
echo -----------------------------
echo.
echo. 
echo.
echo --- WARNING: SOME OF THE INFO FROM THE FOLLOWING TOOLS CAN DISPLAY COMPROMISING INFO AND CAN VOID YOUR PRIVACY BEWARE OF THE INFORMATION YOU SHARE! ---
echo.
set /p menu1="Type "Help" for a list of commands or enter a command: "
if "%menu1%"=="Help" goto :help 
if "%menu1%"=="help" goto :help 
if "%menu1%"=="network" goto :network
if "%menu1%"=="Network" goto :network
if "%menu1%"=="Netinfo" goto :netinfo
if "%menu1%"=="netinfo" goto :netinfo
if "%menu1%"=="Trafview" goto :trafview 
if "%menu1%"=="trafview" goto :trafview 
if "%menu1%"=="Dosping" goto :dosping
if "%menu1%"=="dosping" goto :dosping 
if "%menu1%"=="Macfinder" goto :macfinder
if "%menu1%"=="macfinder" goto :macfinder 
if "%menu1%"=="Nettracer" goto :nettracer
if "%menu1%"=="nettracer" goto :nettracer 
if "%menu1%"=="Cmdusage" goto :cmdusage
if "%menu1%"=="cmdusage" goto :cmdusage
if "%menu1%"=="tacobell" goto :secretlogin
if "%menu1%"=="Customcmd" goto :customcmd
if "%menu1%"=="customcmd" goto :customcmd
goto :error 

:customcmd
cls
echo.
echo.
echo.
echo _____________________________
echo 1. Change text color.
echo _____________________________
echo Sorry for lack of option, more options will be added in future versions. 
echo.
set /p cmdc="Choose an option:"
if "%cmdc%"=="1" goto :colorchg
echo Invalid option returning %USERNAME% to homepage...
pause
goto :home
:colorchg
cls 
echo.
echo.
echo ____________________________________
echo 1. Bright Red
echo 2. Bright Cyan
echo 3. Bright Yellow
echo 4. Bright Green (Default) 
echo 5. Bright Blue
echo 6. Bright Magenta
echo 7. White 
echo 8. Gray
echo 9. Brighter White 
echo 10. Yellow/Brown
echo 11. Magenta 
echo 12. Red 
echo 13. Cyan
echo 14. Green
echo 15. Blue
echo 16. Black (Not Recommened, will most likey make prompt "invisible" beware.) 
echo ______________________________________
echo.
set /p color1="Choose an option or enter "Home" to return home:" 
if "%color1%"=="1" color C
if "%color1%"=="2" color B
if "%color1%"=="3" color E
if "%color1%"=="4" color A
if "%color1%"=="5" color 9
if "%color1%"=="6" color D
if "%color1%"=="7" color 7
if "%color1%"=="8" color 8
if "%color1%"=="9" color F
if "%color1%"=="10" color 6
if "%color1%"=="11" color 5
if "%color1%"=="12" color 4
if "%color1%"=="13" color 3
if "%color1%"=="14" color 2
if "%color1%"=="15" color 1
if "%color1%"=="16" color 0 
goto :home
pause
:network 
cls
echo.
echo.
set /p option1="Do you want to print the outputs of this command to a TXT file? Y/N:"
if "%option1%"=="Y" goto :netprint 
if "%option1%"=="y" goto :netprint
net view
pause
goto :home
:netprint 
cls
echo.
echo.
net view >> NETWORK.txt
net view
pause
goto :home  
:netprint2 
cls
echo.
echo.
ipconfig /all >> NETINFO.txt
ipconfig /all 
pause
goto :home  
:netprint3
cls
echo.
echo.
netstat -a >> TRAFVIEW.txt
netstat -a
pause
goto :home  
:netinfo
cls
set /p option1="Do you want to print the outputs of this command to a TXT file? Y/N:"
if "%option1%"=="Y" goto :netprint2 
if "%option1%"=="y" goto :netprint2
ipconfig /all 
pause
goto :home
:trafview
cls 
set /p option1="Do you want to print the outputs of this command to a TXT file? Y/N:"
if "%option1%"=="Y" goto :netprint3
if "%option1%"=="y" goto :netprint3
netstat -a 
pause
goto :home 
:dosping 
set /p ip="Enter the IP you want to Ping:" 
cls
ping %ip% 
pause
goto :home 
:macfinder
cls
getmac
pause
goto :home 
:nettracer
cls
set /p ip2="Enter the hostname or IP you want trace:" 
tracert %ip2%
pause
goto :home 
:cmdusage 
cls
set /p usage="Type the command you want to the usage of:"
if "%usage%"=="help" echo The "help" or "Help" command displays the help page when typed in on the homepage. 
if "%usage%"=="Help" echo The "help" or "Help" command displays the help page when typed in on the homepage. 
if "%usage%"=="Network" echo The "Network" or "network" command displays all current devices on your network when you run the command.
if "%usage%"=="network" echo The "Network" or "network" command displays all current devices on your network when you run the command.
if "%usage%"=="Netinfo" echo The "Netinfo" or "netinfo" command displays your devices network info when you run the command.
if "%usage%"=="netinfo" echo The "Netinfo" or "netinfo" command displays your devices network info when you run the command.
if "%usage%"=="Trafview" echo Shows your device's network traffic by opening the program.
if "%usage%"=="trafview" echo Shows your device's network traffic by opening the program.  
if "%usage%"=="Dosping" echo Type the IP you want to ping and it will display the ping info. 
if "%usage%"=="dosping" echo Type the IP you want to ping and it will display the ping info. 
if "%usage%"=="Macfinder" echo Type in the command "Macfinder" or "macfinder" to display your local and remote mac address. 
if "%usage%"=="macfinder" echo Type in the command "Macfinder" or "macfinder" to display your local and remote mac address. 
if "%usage%"=="Nettracer" echo Type in the hostname or IP you want to trace after you run the "Nettracer" or "nettracer" command. 
if "%usage%"=="nettracer" echo Type in the hostname or IP you want to trace after you run the "Nettracer" or "nettracer" command.
if "%usage%"=="Cmdusage" echo After running the command "Cmdusage" or "cmdusage" type in the command you do not know the usage of.
if "%usage%"=="cmdusage" echo After running the command "Cmdusage" or "cmdusage" type in the command you do not know the usage of.
if "%usage%"=="Customcmd" echo Running the command "Customcmd" or "customcmd" will run a program that you can use to customize your NetHax prompt. 
if "%usage%"=="customcmd" echo Running the command "Customcmd" or "customcmd" will run a program that you can use to customize your NetHax prompt. 
goto :error
pause
:help
cls
echo.
echo.
echo.
echo.
echo ____________________________________________________________________________________
echo For usage of these commands go back to Home and use the "cmdusage" command. 
echo.
echo 1  -- Help, help            Displays this help page.
echo 2  -- Network, network      Shows current computers connected to your network. 
echo 3  -- Netinfo, netinfo      Shows all your current device LAN network info. 
echo 4  -- Trafview, trafview    Shows all your current device network traffic. 
echo 5  -- Dosping, dosping      Opens our custom Ping Tool. 
echo 6  -- Macfinder, macfinder  Displays LAN and Remote MAC Address of your device.
echo 7  -- Nettracer, nettracer  Trace the Ipv4 address of a custom hostname. 
echo 8  -- Cmdusage, cmdusage    Shows the usage of most or all of the commands above. 
echo 9  -- Customcmd, customcmd  Shows customization options for NetHax Prompt. Changes dont save.  	
echo 10 -- Exit, exit            Will close the NetHax prompt. 		 
echo ____________________________________________________________________________________
pause 
goto :home
 
:error 
echo The command you entered is unknown.. Perhaps you spelled it wrong? Remember the Help page has "all" commands. 
pause
cls 
goto :home 

:secretlogin
cls
set /p pass="Enter Password: " 
if "%pass%"=="coke" goto :secret2
goto :home
pause 
exit 

:secret2 
echo -- Jinxx_Z was here. 12/1/2020 3:02 PM 
pause
goto :home 
