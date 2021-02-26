@echo off
chcp 65001

:login
cls
color 2
title AIO tool
echo.
echo     █████╗ ██╗ ██████╗     ████████╗ ██████╗  ██████╗ ██╗     
echo    ██╔══██╗██║██╔═══██╗    ╚══██╔══╝██╔═══██╗██╔═══██╗██║     
echo    ███████║██║██║   ██║       ██║   ██║   ██║██║   ██║██║     
echo    ██╔══██║██║██║   ██║       ██║   ██║   ██║██║   ██║██║     
echo    ██║  ██║██║╚██████╔╝       ██║   ╚██████╔╝╚██████╔╝███████╗
echo    ╚═╝  ╚═╝╚═╝ ╚═════╝        ╚═╝    ╚═════╝  ╚═════╝ ╚══════╝
echo. 
set /p user=Nutzername: 
set /p pass=Password: 
if %user% == root if %pass% == root goto main
echo Falsche Anmeldedaten, versuch es nochmal... 
timeout /t 3 /nobreak>nul
goto login

:main
SET tool=0
cls
echo.
echo     █████╗ ██╗ ██████╗     ████████╗ ██████╗  ██████╗ ██╗     
echo    ██╔══██╗██║██╔═══██╗    ╚══██╔══╝██╔═══██╗██╔═══██╗██║     
echo    ███████║██║██║   ██║       ██║   ██║   ██║██║   ██║██║     
echo    ██╔══██║██║██║   ██║       ██║   ██║   ██║██║   ██║██║     
echo    ██║  ██║██║╚██████╔╝       ██║   ╚██████╔╝╚██████╔╝███████╗
echo    ╚═╝  ╚═╝╚═╝ ╚═════╝        ╚═╝    ╚═════╝  ╚═════╝ ╚══════╝
echo.
echo    ╔════════════════════════════════╗
echo    ║  [1] pinger     [2] Downloads  ║
echo    ║  [3] fun tools                 ║
echo    ╚════════════════════════════════╝
echo.
set /p tool=Auswahl: 
if %tool% == 1 goto tool1
if %tool% == 2 goto tool2
if %tool% == 3 goto tool3
echo dieses Tool gibt es nicht, versuche es nochmal...
timeout /t 3 /nobreak>nul
goto main

:tool1
cls
echo.
echo     █████╗ ██╗ ██████╗     ████████╗ ██████╗  ██████╗ ██╗     
echo    ██╔══██╗██║██╔═══██╗    ╚══██╔══╝██╔═══██╗██╔═══██╗██║     
echo    ███████║██║██║   ██║       ██║   ██║   ██║██║   ██║██║     
echo    ██╔══██║██║██║   ██║       ██║   ██║   ██║██║   ██║██║     
echo    ██║  ██║██║╚██████╔╝       ██║   ╚██████╔╝╚██████╔╝███████╗
echo    ╚═╝  ╚═╝╚═╝ ╚═════╝        ╚═╝    ╚═════╝  ╚═════╝ ╚══════╝
echo.
echo Prüfe ob jemand online ist.
echo du benötigst dazu die jeweilige ip adresse des gerätes.
echo.
set /p ip=ip: 
if %ip% == back goto main
cls
color 7
goto ping

:ping

ping -n 1 %ip% | find "TTL=" >nul
cls
if errorlevel 1 (
echo.
echo    ██████╗ ███████╗███████╗██╗     ██╗███╗   ██╗███████╗
echo   ██╔═══██╗██╔════╝██╔════╝██║     ██║████╗  ██║██╔════╝
echo   ██║   ██║█████╗  █████╗  ██║     ██║██╔██╗ ██║█████╗  
echo   ██║   ██║██╔══╝  ██╔══╝  ██║     ██║██║╚██╗██║██╔══╝  
echo   ╚██████╔╝██║     ██║     ███████╗██║██║ ╚████║███████╗
echo    ╚═════╝ ╚═╝     ╚═╝     ╚══════╝╚═╝╚═╝  ╚═══╝╚══════╝                                                      
	
) else (
echo.
echo    ██████╗ ███╗   ██╗██╗     ██╗███╗   ██╗███████╗
echo   ██╔═══██╗████╗  ██║██║     ██║████╗  ██║██╔════╝
echo   ██║   ██║██╔██╗ ██║██║     ██║██╔██╗ ██║█████╗  
echo   ██║   ██║██║╚██╗██║██║     ██║██║╚██╗██║██╔══╝  
echo   ╚██████╔╝██║ ╚████║███████╗██║██║ ╚████║███████╗
echo    ╚═════╝ ╚═╝  ╚═══╝╚══════╝╚═╝╚═╝  ╚═══╝╚══════╝
)
timeout /t 1 /nobreak>nul
goto ping

:tool2
color 7
cls
echo.
echo    ██████╗  ██████╗ ██╗    ██╗███╗   ██╗██╗      ██████╗  █████╗ ██████╗ ███████╗
echo    ██╔══██╗██╔═══██╗██║    ██║████╗  ██║██║     ██╔═══██╗██╔══██╗██╔══██╗██╔════╝
echo    ██║  ██║██║   ██║██║ █╗ ██║██╔██╗ ██║██║     ██║   ██║███████║██║  ██║███████╗
echo    ██║  ██║██║   ██║██║███╗██║██║╚██╗██║██║     ██║   ██║██╔══██║██║  ██║╚════██║
echo    ██████╔╝╚██████╔╝╚███╔███╔╝██║ ╚████║███████╗╚██████╔╝██║  ██║██████╔╝███████║
echo    ╚═════╝  ╚═════╝  ╚══╝╚══╝ ╚═╝  ╚═══╝╚══════╝ ╚═════╝ ╚═╝  ╚═╝╚═════╝ ╚══════╝
echo.
echo    ╔═══════════════════════════════════╗
echo    ║             Downloads             ║
echo    ╠═══════════════════════════════════╣
echo    ║ [1] node         [2] npm          ║
echo    ║ [3] python       [4] Discord.js   ║ 
echo    ║ [5] ytdl-core    [6] ytdl-discord ║
echo    ╠═══════════════════════════════════╣
echo    ║ [7] zurück zum Menue              ║
echo    ╚═══════════════════════════════════╝
echo.
set /p download=Auswahl: 
if %download% == 1 goto download1
if %download% == 2 goto download2
if %download% == 3 goto download3
if %download% == 4 goto download4
if %download% == 5 goto download5
if %download% == 6 goto download6
if %download% == 7 goto main
echo diesen Download gibt es nicht, versuche es nochmal...
timeout /t 3 /nobreak>nul
goto tool2

:download1
cls
echo.
echo    ███╗   ██╗ ██████╗ ██████╗ ███████╗
echo    ████╗  ██║██╔═══██╗██╔══██╗██╔════╝
echo    ██╔██╗ ██║██║   ██║██║  ██║█████╗  
echo    ██║╚██╗██║██║   ██║██║  ██║██╔══╝  
echo    ██║ ╚████║╚██████╔╝██████╔╝███████╗
echo    ╚═╝  ╚═══╝ ╚═════╝ ╚═════╝ ╚══════╝ 
echo.
timeout /t 2 /nobreak>nul
start https://nodejs.org/en/download/
title AIO tool
goto tool2

:download2
cls
echo.
echo    ███╗   ██╗██████╗ ███╗   ███╗
echo    ████╗  ██║██╔══██╗████╗ ████║
echo    ██╔██╗ ██║██████╔╝██╔████╔██║
echo    ██║╚██╗██║██╔═══╝ ██║╚██╔╝██║
echo    ██║ ╚████║██║     ██║ ╚═╝ ██║
echo    ╚═╝  ╚═══╝╚═╝     ╚═╝     ╚═╝
echo.
timeout /t 2 /nobreak>nul
call npm install
title AIO tool
goto tool2

:download3
cls
echo.
echo    ██████╗ ██╗   ██╗████████╗██╗  ██╗ ██████╗ ███╗   ██╗
echo    ██╔══██╗╚██╗ ██╔╝╚══██╔══╝██║  ██║██╔═══██╗████╗  ██║
echo    ██████╔╝ ╚████╔╝    ██║   ███████║██║   ██║██╔██╗ ██║
echo    ██╔═══╝   ╚██╔╝     ██║   ██╔══██║██║   ██║██║╚██╗██║
echo    ██║        ██║      ██║   ██║  ██║╚██████╔╝██║ ╚████║
echo    ╚═╝        ╚═╝      ╚═╝   ╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═══╝
echo.
timeout /t 2 /nobreak>nul
start https://www.python.org/downloads/
title AIO tool
goto tool2

:download4
cls
echo.
echo    ██████╗ ██╗███████╗ ██████╗ ██████╗ ██████╗ ██████╗         ██╗███████╗
echo    ██╔══██╗██║██╔════╝██╔════╝██╔═══██╗██╔══██╗██╔══██╗        ██║██╔════╝
echo    ██║  ██║██║███████╗██║     ██║   ██║██████╔╝██║  ██║        ██║███████╗
echo    ██║  ██║██║╚════██║██║     ██║   ██║██╔══██╗██║  ██║   ██   ██║╚════██║
echo    ██████╔╝██║███████║╚██████╗╚██████╔╝██║  ██║██████╔╝██╗╚█████╔╝███████║
echo    ╚═════╝ ╚═╝╚══════╝ ╚═════╝ ╚═════╝ ╚═╝  ╚═╝╚═════╝ ╚═╝ ╚════╝ ╚══════╝
echo.
set /p folder=Pfad: 



cd /d "%folder%"
call npm -p init
title AIO tool
call npm i discord.js
title AIO tool
echo. >index.js
echo. >config.json
goto tool2

:download5
cls
echo.
echo    ██╗   ██╗████████╗██████╗ ██╗                    ██████╗ ██████╗ ██████╗ ███████╗
echo    ╚██╗ ██╔╝╚══██╔══╝██╔══██╗██║                   ██╔════╝██╔═══██╗██╔══██╗██╔════╝
echo     ╚████╔╝    ██║   ██║  ██║██║         █████╗    ██║     ██║   ██║██████╔╝█████╗  
echo      ╚██╔╝     ██║   ██║  ██║██║         ╚════╝    ██║     ██║   ██║██╔══██╗██╔══╝  
echo       ██║      ██║   ██████╔╝███████╗              ╚██████╗╚██████╔╝██║  ██║███████╗
echo       ╚═╝      ╚═╝   ╚═════╝ ╚══════╝               ╚═════╝ ╚═════╝ ╚═╝  ╚═╝╚══════╝
echo.
set /p folder=Pfad: 
cd /d "%folder%"
call npm i ytdl-core
title AIO tool
goto tool2

:download6
cls
echo.
echo    ██╗   ██╗████████╗██████╗ ██╗                   ██████╗ ██╗███████╗ ██████╗ ██████╗ ██████╗ ██████╗ 
echo    ╚██╗ ██╔╝╚══██╔══╝██╔══██╗██║                   ██╔══██╗██║██╔════╝██╔════╝██╔═══██╗██╔══██╗██╔══██╗
echo     ╚████╔╝    ██║   ██║  ██║██║         █████╗    ██║  ██║██║███████╗██║     ██║   ██║██████╔╝██║  ██║
echo      ╚██╔╝     ██║   ██║  ██║██║         ╚════╝    ██║  ██║██║╚════██║██║     ██║   ██║██╔══██╗██║  ██║
echo       ██║      ██║   ██████╔╝███████╗              ██████╔╝██║███████║╚██████╗╚██████╔╝██║  ██║██████╔╝
echo       ╚═╝      ╚═╝   ╚═════╝ ╚══════╝              ╚═════╝ ╚═╝╚══════╝ ╚═════╝ ╚═════╝ ╚═╝  ╚═╝╚═════╝ 
echo.
set /p folder=Pfad: 



cd /d "%folder%"
call npm i ytdl-core-discord
title AIO tool
goto tool2

:tool3
cls
echo.
echo    ███████╗██╗   ██╗███╗   ██╗    ████████╗ ██████╗  ██████╗ ██╗     ███████╗
echo    ██╔════╝██║   ██║████╗  ██║    ╚══██╔══╝██╔═══██╗██╔═══██╗██║     ██╔════╝
echo    █████╗  ██║   ██║██╔██╗ ██║       ██║   ██║   ██║██║   ██║██║     ███████╗
echo    ██╔══╝  ██║   ██║██║╚██╗██║       ██║   ██║   ██║██║   ██║██║     ╚════██║
echo    ██║     ╚██████╔╝██║ ╚████║       ██║   ╚██████╔╝╚██████╔╝███████╗███████║
echo    ╚═╝      ╚═════╝ ╚═╝  ╚═══╝       ╚═╝    ╚═════╝  ╚═════╝ ╚══════╝╚══════╝
echo.
echo    ╔═══════════════════════════════════════════╗
echo    ║                   Tools                   ║
echo    ╠═══════════════════════════════════════════╣
echo    ║ [1] Vbucks generator [2] Shutdown.bat     ║
echo    ║                                           ║
echo    ╠═══════════════════════════════════════════╣                                           
echo    ║ [3] zurück zum Menue                      ║
echo    ╚═══════════════════════════════════════════╝
echo.
set /p fun-tool=Tool: 
if %fun-tool% == 1 goto vbucks-fun-tool
if %fun-tool% == 2 goto shutdown-fun-tool
echo Das Tool ist nicht verfügbar, versuche es nochmal...
timeout /t 3 /nobreak>nul
goto tool3

:vbucks-fun-tool
cls
echo.
echo    ██╗   ██╗██████╗ ██╗   ██╗ ██████╗██╗  ██╗███████╗    ████████╗██████╗  ██████╗ ██╗     ██╗     
echo    ██║   ██║██╔══██╗██║   ██║██╔════╝██║ ██╔╝██╔════╝    ╚══██╔══╝██╔══██╗██╔═══██╗██║     ██║     
echo    ██║   ██║██████╔╝██║   ██║██║     █████╔╝ ███████╗       ██║   ██████╔╝██║   ██║██║     ██║     
echo    ╚██╗ ██╔╝██╔══██╗██║   ██║██║     ██╔═██╗ ╚════██║       ██║   ██╔══██╗██║   ██║██║     ██║     
echo     ╚████╔╝ ██████╔╝╚██████╔╝╚██████╗██║  ██╗███████║       ██║   ██║  ██║╚██████╔╝███████╗███████╗
echo      ╚═══╝  ╚═════╝  ╚═════╝  ╚═════╝╚═╝  ╚═╝╚══════╝       ╚═╝   ╚═╝  ╚═╝ ╚═════╝ ╚══════╝╚══════╝
echo.
echo der vbucks prank tut so als ob man ganz einfach vbucks generieren könnte. aber in wirklichkeit wird
echo nachdem generieren der pc runtergefahren und zwar 30 sek nach dem generieren aber alles gut es wird
echo nichts schlimmes passieren der pc fährt einfach runter. Es giebt zwei versionen und zwar die version
echo ohnen dem runterfahren also eine exakte kopie die genau so ausieht die dein pc nicht runterfährt z.B.
echo wen er dir es nicht glaubt kannst du ihn das zeigen. und eine version die du deinen freund gibst der 
echo den pc runterfährt.
echo.
echo ╔══════════════════════════════════╗
echo ║               Menu               ║
echo ╠══════════════════════════════════╣ 
echo ║ [1] vbucks.exe ohne runterfahren ║
echo ║ [2] vbucks.exe mit runterfahren  ║ 
echo ║                                  ║
echo ║ [3] zurück zu den fun Tools      ║
echo ╚══════════════════════════════════╝
echo.
set /p vbucks.exe=version: 
if %vbucks.exe% == 1 goto v1
if %vbucks.exe% == 2 goto v2
if %vbucks.exe% == 3 goto tool3
echo Deine auswahl exestiert nicht bitte versuch es nochmal...
timeout /t 3 /nobreak>nul
goto vbucks-fun-tool

:v1
curl "https://download1339.mediafire.com/9pxapu18bg2g/w5tkycsrrhiqhq6/Vbucks+-+nicht+gefeahrlich.exe" --output vbucks-nicht-runterfahren.exe
goto vbucks-fun-tool

:v2
curl "https://download1653.mediafire.com/nqo3dgjawywg/8g2j29aenmonh11/vbucks.exe" --output vbucks-runterfahren.exe
goto vbucks-fun-tool
