@echo off
if "%PATH_BASE4%" == "" set PATH_BASE4=%PATH%
set PATH=%CD%;%PATH_BASE4%;
java -jar -Duser.language=en "%~dp0\..\Archivos-JAR-Importantes\sign.jar" %*