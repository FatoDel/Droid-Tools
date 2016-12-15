@echo off
if "%PATH_BASE3%" == "" set PATH_BASE3=%PATH%
set PATH=%CD%;%PATH_BASE3%;
java -jar -Duser.language=en "%~dp0\..\Archivos-JAR-Importantes\smali.jar" %*