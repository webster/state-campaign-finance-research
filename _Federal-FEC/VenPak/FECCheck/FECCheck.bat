@echo off
%~d0
cd "%~p0"
echo This FECCheck version is: 
java -jar .\FECCheck.jar -vb
pause
start java -jar .\FECCheck.jar -h
echo.
echo.
echo.
pause
java -Xmx1024m -jar .\FECCheck.jar -mut %1 
echo The Exit Status Code is %ERRORLEVEL% 
pause
@echo on 