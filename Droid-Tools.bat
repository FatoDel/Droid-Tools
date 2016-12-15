@echo off
setlocal enabledelayedexpansion
title Droid-Tools.exe
::Se creo el 21 de Noviembre del 2016 a las ‏‎07:47:18 p.m.

if exist "Archivos/Noiniciado.exe" (goto Bienvenida) else (goto Config)
:Config
::Agrgado de inicio al log
echo -------------------------------------------------------------------------------------- >> Log.txt
echo Fecha: %date%   Hora: %time%    >> Log.txt
echo -------------------------------------------------------------------------------------- >> Log.txt
::Fin
::Variable a usar
set apksel=Ninguna
set frains=No instalado
set ad=Apk no seleccionada
set ae=Apk no seleccionada
::FIn
call :Camtem
echo Checando java
java -version 
if errorlevel 1 goto Javanoins
cls


:Inicio
color %color1%
mode con:cols=85 lines=22
echo.
echo                           ================================
echo                           =        MENU PRINCIPAL        =
echo                           ================================
echo                           =     1.-Ir a menu APK         =
echo                           =     2.-Ir a menu JAR         =
echo                           =     3.-Ir a menu DEX         =
echo                           =     4.-Ir a menu ADB         =
echo                           ================================
echo                           =     5.-Leer log              =
echo                           =     6.-Ajustes               =
echo                           =     7.-Ver cambios           =
echo                           =     8.-Acerca de             =
echo                           =     9.-Salir                 =
echo                           ================================
echo.
Set /p menuse=Inserta una opcion:
cls
if %menuse%==1 goto menuapkvar
if %menuse%==2 goto menujar
if %menuse%==3 goto menudex
if %menuse%==4 goto menuadb
if %menuse%==5 goto llog
if %menuse%==6 goto ajus
if %menuse%==7 goto vc
if %menuse%==8 goto ad
if %menuse%==9 exit
if %menuse%==%menuse% goto Inicio


::Inicio de menus
::Seccion APK
:menuapkvar
if "%apksel%" NEQ "Ninguna" goto menuapk
:menuapk
color %color3%
mode con:cols=85 lines=43
echo -------------------------------------------------------------------------------------
echo   Framework instalado:%frains%        Apk seleccionada:%apksel%
echo -------------------------------------------------------------------------------------
echo             AD:%ad%            AE:%ae%
echo -------------------------------------------------------------------------------------
echo                           =================================
echo                           =           Menu APK            =
echo                           =================================
echo                           =           Framework           =
echo                           =================================
echo                           =0.-Instalar apk como framework =
echo                           =================================
echo                           =         Avanzado              =
echo                           =================================
echo                           =1.-Seleccionar apk             =
echo                           =2.-Descompilar apk             =
echo                           =3.-Compilar apk                =
echo                           =4.-Eliminar proyecto actual    =
echo                           =5.-Firmar apk                  =
echo                           =================================
echo                           =            Simple             =
echo                           =================================
echo                           =6.-Extraer apk                 =
echo                           =7.-Reextraer apk               =
echo                           =8.-Eliminar proyecto actual    =
echo                           =================================
echo                           =           Carpetas            =
echo                           =================================
echo                           =9.-Apks descompiladas          =
echo                           =10.-Apks compiladas            =
echo                           =11.-Apks extraidas             =
echo                           =12.-Apks reextraidas           =
echo                           =13.-Apks firmadas              =
echo                           =================================
echo                           =14.-Leer log                   =
echo                           =15.-Regresar                   =
echo                           =================================
echo.
Set /p menuapksel=Inserta una opcion:
cls
if %menuapksel%==0 goto insframe
if %menuapksel%==1 goto selapk
if %menuapksel%==2 goto descapk
if %menuapksel%==3 goto comapk
if %menuapksel%==4 goto elproact1
if %menuapksel%==5 goto firmapk
if %menuapksel%==6 goto exapk
if %menuapksel%==7 goto reapk
if %menuapksel%==8 goto elproact2
if %menuapksel%==9 start Almacen\Apks\Apks-descompiladas & goto menuapk
if %menuapksel%==10 start Almacen\Apks\Apks-compiladas & goto menuapk
if %menuapksel%==11 start Almacen\Apks\Apks-extraidas & goto menuapk
if %menuapksel%==12 start Almacen\Apks\Apks-reextraidas & goto menuapk
if %menuapksel%==13 start Almacen\Apks\Apks-firmadas & goto menuapk
if %menuapksel%==14 goto llog
if %menuapksel%==15 goto Inicio
if %menuapksel%==%menuapksel% goto menuapk

:insframe
cls
goto menuapk

:selapk
mode con:cols=85 lines=50
set /A count=0
echo ------------------
echo -Selector de Apks-
echo ------------------
echo.
echo 0.-Regresar
FOR %%F IN (Almacen/Apks/Colocar-apks/*.apk) DO (
set /A count+=1
set a!count!=%%F
if /I !count! LEQ 4 (echo^ !count!.-%%F )
if /I !count! GTR 4 (echo^ !count!.-%%F )
)
echo.
set /P INPUT=Inserta el numero de la aplicion: %=%
if %INPUT%==0 goto menuapk
if %INPUT% GTR %count% goto menuapk
set apksel=!a%INPUT%!
cls
goto menuapk

:descapk
if "%apksel%" EQU "Ninguna" msg * "No tienes apk seleccionada, por favor selecciona una apk." & goto menuapk
if exist "Almacen\Apks\Apks-descompiladas\%apksel%" (goto elim) else (goto descapkfinal)
:elim
echo El apk seleccionada ya tiene proyecto, deseas eliminar el proyecto "%apksel%".
echo.
echo (Cualquier tecla)Eliminar
echo (C,c)Cancelar
echo.
Set /p selelim=Inserta una opcion:
if /I "%selelim%"=="c" (msg * No se eliminara nada. & Set selelim= & goto menuapk) else (Set proyectosel=%apksel% & Set rutabor=Almacen\Apks\Apks-descompiladas\%apksel% & call :Borrador)
:descapkfinal
start Archivos\Archivos-BAT-CYD\Descompilar-Apk
goto menuapk

:comapk

:elproact1

:firmapk

:exapk

:reapk

:elproact2

::Seccion JAR
:menujar

::Seccion DEX
:menudex

::Seccion ADB
:menuadb


::Temas
::Seccion cambiar tema
:Camtem
for /L %%i in (1,1,25) do (
if exist "Archivos/tem%%1.exe" goto Tem%%i
)
::Seccion de eleccion
:Tem1
::Menu principal
Set color1=0b
::Menu APK
Set color3=0e
::Menu JAR
Set color4=0c
::Menu DEX
Set color5=09
::Menu ADB
Set color6=0d
::Menu LOG
Set color7=0f
::Menu Ajustes, Ver cambios y Acerca de
Set color8=0a
::Error
Set color9=04
::Exito
Set color10=02
goto :EOF

:Tem2
Set color1=
Set color3=
Set color4=
Set color5=
Set color6=
Set color7=
Set color8=
Set color9=
goto :EOF

:Tem3

:Tem4

:Tem5

:Tem6

:Tem7

:Tem8

:Tem9

:Tem10

:Tem11

:Tem12

:Tem13

:Tem14

:Tem15

:Tem16

:Tem17

:Tem18

:Tem19

:Tem20

:Tem21

:Tem22

:Tem23

:Tem24

:Tem25


::Java no instalado
:Javanoins
color %color9%

echo No tienes instalado java
echo Por favor instalelo y vuelva a intentar

echo Presiona cualquier tecla para salir
pause>nul
cls

exit


::Bienvenida Visual
:Bienvenida
set regind=Bienvenidap1
goto Escogercol
:Bienvenidap1
color %col1%%col2%
mode con:cols=130 lines=35
echo                        _______  _______  _______  _______  ______   _______    _______  _______  _______    
echo                       (  ____ \(  ____ )(  ____ \(  ___  )(  __  \ (  ___  )  (  ____ )(  ___  )(  ____ )   
echo                       1 (    \/1 (    )11 (    \/1 (   ) 11 (  \  )1 (   ) 1  1 (    )11 (   ) 11 (    )1 _ 
echo                       1 1      1 (____)11 (__    1 (___) 11 1   ) 11 1   1 1  1 (____)11 1   1 11 (____)1(_)
echo                       1 1      1     __)1  __)   1  ___  11 1   1 11 1   1 1  1  _____)1 1   1 11     __)   
echo                       1 1      1 (\ (   1 (      1 (   ) 11 1   ) 11 1   1 1  1 (      1 1   1 11 (\ (    _ 
echo                       1 (____/\1 ) \ \__1 (____/\1 )   ( 11 (__/  )1 (___) 1  1 )      1 (___) 11 ) \ \__(_)
echo                       (_______/1/   \__/(_______/1/     \1(______/ (_______)  1/       (_______)1/   \__/   
echo.
echo   _______  _______ _________ _______    ______   _______  _        _______  _______  ______  _________ _        _        _______ 
echo  (  ____ \(  ___  )\__   __/(  ___  )  (  __  \ (  ____ \( \      (  ____ \(  ___  )(  __  \ \__   __/( \      ( \      (  ___  )
echo  1 (    \/1 (   ) 1   ) (   1 (   ) 1  1 (  \  )1 (    \/1 (      1 (    \/1 (   ) 11 (  \  )   ) (   1 (      1 (      1 (   ) 1
echo  1 (__    1 (___) 1   1 1   1 1   1 1  1 1   ) 11 (__    1 1      1 1      1 (___) 11 1   ) 1   1 1   1 1      1 1      1 1   1 1
echo  1  __)   1  ___  1   1 1   1 1   1 1  1 1   1 11  __)   1 1      1 1 ____ 1  ___  11 1   1 1   1 1   1 1      1 1      1 1   1 1
echo  1 (      1 (   ) 1   1 1   1 1   1 1  1 1   ) 11 (      1 1      1 1 \_  )1 (   ) 11 1   ) 1   1 1   1 1      1 1      1 1   1 1
echo  1 )      1 )   ( 1   1 1   1 (___) 1  1 (__/  )1 (____/\1 (____/\1 (___) 11 )   ( 11 (__/  )___) (___1 (____/\1 (____/\1 (___) 1
echo  1/       1/     \1   )_(   (_______)  (______/ (_______/(_______/(_______)1/     \1(______/ \_______/(_______/(_______/(_______)
echo.
echo                                                             1\     /1
echo                                                             ( \   / )
echo                                                              \ (_) / 
echo                                                               \   /  
echo                                                                ) (   
echo                                                                1 1   
echo                                                                \_/   
echo.
echo                                               _________ _______  ______   _______ 
echo                                               \__    _/(  ____ \(  __  \ (       )
echo                                                  )  (  1 (    \/1 (  \  )1 () () 1
echo                                                  1  1  1 (__    1 1   ) 11 11 11 1
echo                                                  1  1  1  __)   1 1   1 11 1(_)1 1
echo                                                  1  1  1 (      1 1   ) 11 1   1 1
echo                                               1\_)  )  1 (____/\1 (__/  )1 )   ( 1
echo                                               (____/   (_______/(______/ 1/     \1
ping localhost -n 7 >nul
cls
set regind=Bienvenidap2
goto Escogercol
:Bienvenidap2
color %col1%%col2%
mode con:cols=94 lines=29
echo   ______  _________ _______  _                 _______  _       _________ ______   _______
echo  (  ___ \ \__   __/(  ____ \( (    /11\     /1(  ____ \( (    /1\__   __/(  __  \ (  ___  )
echo  1 (   ) )   ) (   1 (    \/1  \  ( 11 )   ( 11 (    \/1  \  ( 1   ) (   1 (  \  )1 (   ) 1
echo  1 (__/ /    1 1   1 (__    1   \ 1 11 1   1 11 (__    1   \ 1 1   1 1   1 1   ) 11 1   1 1
echo  1  __ (     1 1   1  __)   1 (\ \) 1( (   ) )1  __)   1 (\ \) 1   1 1   1 1   1 11 1   1 1
echo  1 (  \ \    1 1   1 (      1 1 \   1 \ \_/ / 1 (      1 1 \   1   1 1   1 1   ) 11 1   1 1
echo  1 )___) )___) (___1 (____/\1 )  \  1  \   /  1 (____/\1 )  \  1___) (___1 (__/  )1 (___) 1
echo  1/ \___/ \_______/(_______/1/    )_)   \_/   (_______/1/    )_)\_______/(______/ (_______)
echo.
echo                                             _______ 
echo                                            (  ___  )
echo                                            1 (   ) 1
echo                                            1 (___) 1
echo                                            1  ___  1
echo                                            1 (   ) 1
echo                                            1 )   ( 1
echo                                            1/     \1
echo.
echo   ______   _______  _______ _________ ______     _________ _______  _______  _       _______
echo  (  __  \ (  ____ )(  ___  )\__   __/(  __  \    \__   __/(  ___  )(  ___  )( \     (  ____ \
echo  1 (  \  )1 (    )11 (   ) 1   ) (   1 (  \  )      ) (   1 (   ) 11 (   ) 11 (     1 (    \/
echo  1 1   ) 11 (____)11 1   1 1   1 1   1 1   ) 1      1 1   1 1   1 11 1   1 11 1     1 (_____
echo  1 1   1 11     __)1 1   1 1   1 1   1 1   1 1      1 1   1 1   1 11 1   1 11 1     (_____  )
echo  1 1   ) 11 (\ (   1 1   1 1   1 1   1 1   ) 1      1 1   1 1   1 11 1   1 11 1           ) 1
echo  1 (__/  )1 ) \ \__1 (___) 1___) (___1 (__/  )      1 1   1 (___) 11 (___) 11 (____/Y\____) 1
echo  (______/ 1/   \__/(_______)\_______/(______/       )_(   (_______)(_______)(_______1_______)
echo.
echo Presiona cualquier tecla para empezar
pause>nul
del /S /Q /F "%~dp0Archivos\Noiniciado.exe"
cls
goto Config

::Colores alealtorios
:Escogercol
for /L %%h in (1,1,2000) do (
set /a ran1=%random%
set /a ran2=%random%
)
set col1=0
set col2=0
IF [%ran1%] GEQ [0] IF [%ran1%] LSS [2047] set col1=0
IF [%ran1%] GEQ [2047] IF [%ran1%] LSS [4094] set col1=1
IF [%ran1%] GEQ [4094] IF [%ran1%] LSS [6141] set col1=2
IF [%ran1%] GEQ [6141] IF [%ran1%] LSS [8188] set col1=3
IF [%ran1%] GEQ [8188] IF [%ran1%] LSS [10235] set col1=4
IF [%ran1%] GEQ [10235] IF [%ran1%] LSS [12282] set col1=5
IF [%ran1%] GEQ [12282] IF [%ran1%] LSS [14329] set col1=6
IF [%ran1%] GEQ [14329] IF [%ran1%] LSS [16376] set col1=7
IF [%ran1%] GEQ [16376] IF [%ran1%] LSS [18423] set col1=8
IF [%ran1%] GEQ [18423] IF [%ran1%] LSS [20470] set col1=9
IF [%ran1%] GEQ [20470] IF [%ran1%] LSS [22517] set col1=a
IF [%ran1%] GEQ [22517] IF [%ran1%] LSS [24564] set col1=b
IF [%ran1%] GEQ [24564] IF [%ran1%] LSS [26611] set col1=c
IF [%ran1%] GEQ [26611] IF [%ran1%] LSS [28658] set col1=d
IF [%ran1%] GEQ [28658] IF [%ran1%] LSS [30705] set col1=e
IF [%ran1%] GEQ [30705] IF [%ran1%] LEQ [32767] set col1=f
IF [%ran2%] GEQ [0] IF [%ran2%] LSS [2047] set col2=0
IF [%ran2%] GEQ [2047] IF [%ran2%] LSS [4094] set col2=1
IF [%ran2%] GEQ [4094] IF [%ran2%] LSS [6141] set col2=2
IF [%ran2%] GEQ [6141] IF [%ran2%] LSS [8188] set col2=3
IF [%ran2%] GEQ [8188] IF [%ran2%] LSS [10235] set col2=4
IF [%ran2%] GEQ [10235] IF [%ran2%] LSS [12282] set col2=5
IF [%ran2%] GEQ [12282] IF [%ran2%] LSS [14329] set col2=6
IF [%ran2%] GEQ [14329] IF [%ran2%] LSS [16376] set col2=7
IF [%ran2%] GEQ [16376] IF [%ran2%] LSS [18423] set col2=8
IF [%ran2%] GEQ [18423] IF [%ran2%] LSS [20470] set col2=9
IF [%ran2%] GEQ [20470] IF [%ran2%] LSS [22517] set col2=a
IF [%ran2%] GEQ [22517] IF [%ran2%] LSS [24564] set col2=b
IF [%ran2%] GEQ [24564] IF [%ran2%] LSS [26611] set col2=c
IF [%ran2%] GEQ [26611] IF [%ran2%] LSS [28658] set col2=d
IF [%ran2%] GEQ [28658] IF [%ran2%] LSS [30705] set col2=e
IF [%ran2%] GEQ [30705] IF [%ran2%] LEQ [32767] set col2=f
goto %regind%

:Borrador
cls
echo Eliminando proyecto: %proyectosel%
for /L %%z in (1,1,350) do (
RD /S /Q %rutabor% 2>> "Archivos/Basura.txt"
)
DEL /S /Q /F "Archivos\Basura.txt"
cls
echo El proyecto %proyectosel% se ha eliminado correctamente.
echo.
echo Presiona cualquier tecla para continuar.
pause>nul
cls
::ping localhost -n 3.2 >nul
goto :EOF