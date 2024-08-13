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
echo        Configurando Rede para DHCP      
echo ========================================
netsh interface ip set address name="Ethernet" source=dhcp
netsh interface ip set dns name="Ethernet" source=dhcp
echo ========================================
echo        Configuração Concluída           
echo ========================================
pause
