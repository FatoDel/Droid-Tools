@echo off
if "%PATH_BASE2%" == "" set PATH_BASE2=%PATH%
set PATH=%CD%;%PATH_BASE2%;
java -jar -Duser.language=en "%~dp0\..\Archivos-JAR-Importantes\baksmali.jar" %*