@echo off
Title Descompilando (%apksel%)
color %color3%

::Agregado de informacion al log
echo -------------------------------------------------------------------------------------- >> "Log.txt"
echo Descompilando: %apksel% "|Fecha: %date%   Hora: %time%|" >> "Log.txt"
echo -------------------------------------------------------------------------------------- >> "Log.txt"

::Descompilacion de apk
echo Descompilando: %apksel%
echo.
call "Archivos/Archivos-BAT-Importantes/apktool" d "Almacen/Apks/Colocar-apks/%apksel%" -o "Almacen/Apks/Apks-descompiladas/%apksel%" >> "Log.txt" 2>&1
if errorlevel 1 (goto error) else (goto exito)

:exito
Set mensaje0=%apksel% se ha descompilado con exito. "|Hora: %time%|"
Set mensaje1=Se ha descompilado con exito %apksel%.
Set mensaje2=Nada
Set mensaje3=Nada
Start Archivos\Archivos-BAT-CYD\Exito
exit

:error
Set mensaje0=%apksel% no se ha descompilado con exito. "|Hora: %time%|"
Set mensaje1=Ha ocurrido un error al descompilar %apksel%.
Set mensaje2=Por favor checa el "Log" para saber que paso exactamente.
Set mensaje3=Nada
Start Archivos\Archivos-BAT-CYD\Error
exit