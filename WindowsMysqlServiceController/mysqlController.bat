@Echo off
title Mysql80 service control
choice /c 12 /m "1 to start, 2 to stop"
IF %errorlevel% == 1 goto startservice
IF %errorlevel% == 2 goto stopservice

:startservice
net start Mysql80
Echo attempted to start
pause
exit


:stopservice
net stop Mysql80
Echo attempted to stop
pause
exit
