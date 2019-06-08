@echo off

::dir /on/b/s .\data.src\picture\event\*.webm > webm.txt
dir /on/b/s .\movie\*.webm > webm.txt

del movie.csv

for /f "delims=" %%i in (webm.txt) do (
webminfo %%i >> movie.csv
)
