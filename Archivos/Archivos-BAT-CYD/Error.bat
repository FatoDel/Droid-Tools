@echo off
mode con:cols=101 lines=22
color %color9%         
echo.                                                                                 
echo  EEEEEEEEEEEEEEEEEEEEEE                                                                             
echo  E::::::::::::::::::::E                                                                             
echo  E::::::::::::::::::::E                                                                             
echo  EE::::::EEEEEEEEE::::E                                                                             
echo    E:::::E       EEEEEErrrrr   rrrrrrrrr   rrrrr   rrrrrrrrr      ooooooooooo   rrrrr   rrrrrrrrr   
echo    E:::::E             r::::rrr:::::::::r  r::::rrr:::::::::r   oo:::::::::::oo r::::rrr:::::::::r  
echo    E::::::EEEEEEEEEE   r:::::::::::::::::r r:::::::::::::::::r o:::::::::::::::or:::::::::::::::::r 
echo    E:::::::::::::::E   rr::::::rrrrr::::::rrr::::::rrrrr::::::ro:::::ooooo:::::orr::::::rrrrr::::::r
echo    E:::::::::::::::E    r:::::r     r:::::r r:::::r     r:::::ro::::o     o::::o r:::::r     r:::::r
echo    E::::::EEEEEEEEEE    r:::::r     rrrrrrr r:::::r     rrrrrrro::::o     o::::o r:::::r     rrrrrrr
echo    E:::::E              r:::::r             r:::::r            o::::o     o::::o r:::::r            
echo    E:::::E       EEEEEE r:::::r             r:::::r            o::::o     o::::o r:::::r            
echo  EE::::::EEEEEEEE:::::E r:::::r             r:::::r            o:::::ooooo:::::o r:::::r            
echo  E::::::::::::::::::::E r:::::r             r:::::r            o:::::::::::::::o r:::::r            
echo  E::::::::::::::::::::E r:::::r             r:::::r             oo:::::::::::oo  r:::::r            
echo  EEEEEEEEEEEEEEEEEEEEEE rrrrrrr             rrrrrrr               ooooooooooo    rrrrrrr 
echo.
echo. >> "Log.txt"
echo %mensaje0% >> "Log.txt"
if "%mensaje1%" NEQ "Nada" echo %mensaje1%
if "%mensaje2%" NEQ "Nada" echo %mensaje2%
if "%mensaje3%" NEQ "Nada" echo %mensaje3%
echo Presiona cualquier tecla para continuar.
pause>nul
exit