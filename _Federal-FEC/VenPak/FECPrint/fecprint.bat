@echo off
%~d0
cd "%~p0"
start javaw -splash:./fecprintsplash.jpg -Xms124m -Xmx1024m -cp .\;.\fecprint.jar;.\lib\commons-io-1.4.jar;.\lib\commons-lang-2.4.jar;.\lib\commons-logging.jar;.\lib\iText-2.1.4.jar;.\lib\jxbrowser-2.9.jar;.\lib\license.jar;.\lib\log4j-1.2.15.jar;.\lib\slf4j-api-1.5.8.jar;.\lib\slf4j-log4j12-1.5.8.jar;.\lib\engine-ie.jar;.\lib\winpack-3.8.2.jar;.\lib\engine-gecko.jar;.\lib\MozillaGlue.jar;.\lib\MozillaInterfaces.jar;.\lib\xulrunner-windows.jar com.nictusa.fecprint.FECPrint %*
exit