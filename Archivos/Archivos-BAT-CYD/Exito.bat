@echo off
mode con:cols=92 lines=21
color %color10%
echo.               
echo  EEEEEEEEEEEEEEEEEEEEEE                      iiii          tttt                           
echo  E::::::::::::::::::::E                     i::::i      ttt:::t                           
echo  E::::::::::::::::::::E                      iiii       t:::::t                           
echo  EE::::::EEEEEEEEE::::E                                 t:::::t                           
echo    E:::::E       EEEEEExxxxxxx      xxxxxxxiiiiiiittttttt:::::ttttttt       ooooooooooo   
echo    E:::::E              x:::::x    x:::::x i:::::it:::::::::::::::::t     oo:::::::::::oo 
echo    E::::::EEEEEEEEEE     x:::::x  x:::::x   i::::it:::::::::::::::::t    o:::::::::::::::o
echo    E:::::::::::::::E      x:::::xx:::::x    i::::itttttt:::::::tttttt    o:::::ooooo:::::o
echo    E:::::::::::::::E       x::::::::::x     i::::i      t:::::t          o::::o     o::::o
echo    E::::::EEEEEEEEEE        x::::::::x      i::::i      t:::::t          o::::o     o::::o
echo    E:::::E                  x::::::::x      i::::i      t:::::t          o::::o     o::::o
echo    E:::::E       EEEEEE    x::::::::::x     i::::i      t:::::t    tttttto::::o     o::::o
echo  EE::::::EEEEEEEE:::::E   x:::::xx:::::x   i::::::i     t::::::tttt:::::to:::::ooooo:::::o
echo  E::::::::::::::::::::E  x:::::x  x:::::x  i::::::i     tt::::::::::::::to:::::::::::::::o
echo  E::::::::::::::::::::E x:::::x    x:::::x i::::::i       tt:::::::::::tt oo:::::::::::oo 
echo  EEEEEEEEEEEEEEEEEEEEEExxxxxxx      xxxxxxxiiiiiiii         ttttttttttt     ooooooooooo  
echo.
echo. >> "Log.txt"
echo %mensaje0% >> "Log.txt"
if "%mensaje1%" NEQ "Nada" echo %mensaje1%
if "%mensaje2%" NEQ "Nada" echo %mensaje2%
if "%mensaje3%" NEQ "Nada" echo %mensaje3%
echo Presiona cualquier tecla para continuar.
pause>nul
exit