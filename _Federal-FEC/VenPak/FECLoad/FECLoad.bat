@echo off
%~d0
cd "%~p0"
java -jar FECload.jar -vb
pause
java -Xmx1024m -jar FECload.jar %*
echo The Exit Status Code is %ERRORLEVEL%
pause

@echo on 