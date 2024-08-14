@echo off
REM ========================================================
REM  Script desenvolvido para uso exclusivo e controlado 
REM   por pessoal técnico da COTIC/INPE 
REM  Proibido o uso ou replicação desse script de forma não autorizada
REM  
REM Date: 08/08/2024
REM Created: Walter Gargarela Junior walter.garagrela@gmail.com
REM
REM ========================================================
:MENU
echo ========================================
echo         Selecione a Opcao Desejada      
echo ========================================
echo 1. Configurar Rede para DHCP
echo 2. Configurar Rede para IP Fixo
echo 3. Sair
echo ========================================
set /p option="Escolha uma opcao (1-3): "

if %option%==1 goto DHCP
if %option%==2 goto IPFIXO
if %option%==3 goto EXIT
echo Opcao invalida, tente novamente.
goto MENU

:DHCP
echo ========================================
echo        Configurando Rede para DHCP      
echo ========================================
netsh interface ip set address name="Ethernet" source=dhcp
netsh interface ip set dns name="Ethernet" source=dhcp
echo ========================================
echo        Configuracao Concluida           
echo ========================================
pause
goto MENU

:IPFIXO
echo ========================================
echo        Configurando Rede para IP Fixo   
echo ========================================
netsh interface ip set address name="Ethernet" static 150.163.62.59 255.255.255.0 150.163.62.254
netsh interface ipv4 set dns name="Ethernet" static 150.163.73.154
netsh interface ipv4 add dnsservers "Ethernet" 150.163.105.9 index=2
netsh interface set interface name="Ethernet" admin=disable

netsh interface set interface name="Ethernet" admin=enable
echo ========================================
echo        Configuracao Concluida           
echo ========================================
pause
goto MENU

:EXIT
exit
