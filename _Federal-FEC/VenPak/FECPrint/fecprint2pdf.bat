@echo off
%~d0
cd "%~p0"
javaw -Xmx1024m -splash:./fecprintsplash.jpg -cp .\;.\fecprint.jar;.\lib\commons-io-1.4.jar;.\lib\commons-lang-2.4.jar;.\lib\commons-logging.jar;.\lib\iText-2.1.4.jar;.\lib\jxbrowser-2.7.jar;.\lib\license.jar;.\lib\log4j-1.2.15.jar;.\lib\slf4j-api-1.5.8.jar;.\lib\slf4j-log4j12-1.5.8.jar;.\lib\engine-ie.jar;.\lib\mshtml.jar;.\lib\winpack-3.8.jar; com.nictusa.fecprint.FECPrint silent %1
start "Opening the pdf" "%TEMP%\%~n1\%~n1_allpages.pdf"
exit
