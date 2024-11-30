@echo off
setlocal EnableExtensions DisableDelayedExpansion

rem - HIGHLY RECOMMENDED: See readme.md for full instructions and details
rem -
rem - Reliancies are -
rem -     Windows 10
rem -     GitHub Desktop
rem -     7z
rem - Batch file will need modifying if alternatives are used
rem -
rem - Brief overview
rem -     1) Set PROJECT to the project id of your Scratch project - set to RokCoder's Beeb Emulator by default (531881458)
rem -     2) Set UNZIP to point to your 7z.exe file - assuming you have installed 7z then this is probably already pointing to it
rem -     3) Make sure you have GitHub Desktop installed and on the PATH
rem -     4) That's it! Just run this batch file to see the magic happen...

set PROJECT=name
set UNZIP="%PROGRAMFILES%\7-zip\7z.exe"

@echo Clearing files and folders from previous execution

rem This uses black magic to locate the download folder for your Windows 10
call :GetDownloadFolder

rem Ensure we aren't going to save over an existing file as the download would then me called "%PROJECT% (1)" or similar
del "%DOWNLOAD%\%PROJECT%.zip" 1> nul

rem Clean out any existing folders used by this process. We need to do this otherwise files that have been removed will not be removed from the repository
call :clean scripts

@echo Parsing project at rokcoder.com/sb3-to-txt

rem Invokes the extraction and conversion process in a web browser (which downloads a single zip file when done)
start "" "http://www.rokcoder.com/sb3-to-txt"

rem Open an explorer window in the sb3 folder
%SystemRoot%\explorer.exe "..\sb3"

rem Twiddle our thumbs until the sb3 has been drag-n-dropped and the zip file has landed
:wait
if exist "%DOWNLOAD%\%PROJECT%.zip" goto ready
timeout 1 /nobreak > nul
goto wait
:ready

rem Extracts the textified scripts into ../scripts
%UNZIP% x -o"%~dp0.." -bso0 -bd %DOWNLOAD%\%PROJECT%.zip

rem Fire up GitHub Desktop
github %~dp0..

rem And we're done!
exit /b

rem Nice little function to clean folders
:clean
if exist "%~dp0..\%1" rmdir /S /Q "%~dp0..\%1"
mkdir "%~dp0..\%1"
exit /b

rem Useful function found on StackOverflow. Completely full of black magic but successfully locates the download folder
:GetDownloadFolder
set "Reg32=%SystemRoot%\System32\reg.exe"
if not "%ProgramFiles(x86)%" == "" set "Reg32=%SystemRoot%\SysWOW64\reg.exe"
set "DOWNLOAD="
for /F "skip=1 tokens=1,2*" %%T in ('%Reg32% query "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders" /v "{374DE290-123F-4565-9164-39C4925E467B}" 2^>nul') do (
    if /I "%%T" == "{374DE290-123F-4565-9164-39C4925E467B}" (
        set "DOWNLOAD=%%V"
        exit /b
    )
)
exit /b
