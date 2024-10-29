
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

echo ========================================
echo        Configurando Rede para IP Fixo   
echo ========================================
netsh interface ip set address name="Ethernet" static 150.163.XX.XX 255.255.255.0 150.163.XX.254
netsh interface ipv4 set dns name="Ethernet" static 150.163.XX.XXX
netsh interface ipv4 add dnsservers "Ethernet" 150.163.XX.XX index=2
netsh interface set interface name="Ethernet" admin=disable

netsh interface set interface name="Ethernet" admin=enable

echo ========================================
echo        Configuracao Concluida !!          
echo ========================================
pause

REM gabriel.domiciano@inpe.br   fabricio.araujo@inpe.br 
