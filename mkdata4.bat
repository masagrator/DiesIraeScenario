
call setting.bat

set TARGET=data4

del %TARGET%.txt
del %TARGET%.dat

dir /b/s .\data.src\system >> %TARGET%.txt
dir /b/s .\data.src\screen >> %TARGET%.txt
dir /b/s .\data.src\extra >> %TARGET%.txt
dir /b/s .\data.src\picture\mask >> %TARGET%.txt
::call :Sub system

.\bin\maliedat -s 2048:1 -k %KEY% -p "%CD%\data.src\\" %TARGET%.txt .\data\%TARGET%.dat

exit /b

::
.\bin\msmd5 -b %TARGET%.dat

call md5.bat

set INIFILE=.\data\system\malie.ini

.\bin\setprivateprofile EXPANSION MAIN "%SIZE%, %MD5%" %INIFILE%

if "%PAUSE%"=="true" pause
exit /b

::
:Sub
dir /b/s .\data.src\%1 >> %TARGET%.txt
exit /b

