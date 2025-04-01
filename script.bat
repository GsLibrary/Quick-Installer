:: Beginning Setup
@echo off
Title Quick Installer by GsLibrary (Newfies)
setlocal enabledelayedexpansion

:: Options Setup
:: 0 - None
:: 1 - Primary URL
:: 2 - Backup URL
set "aA=0"
set "aB=0"
set "aC=0"
set "aD=0"
set "aE=0"
set "aF=0"
set "aG=0"
set "aH=0"
set "aI=0"
set "aJ=0"
set "aK=0"
set "aL=0"
set "aM=0"
set "aN=0"
set "aO=0"
set "aP=0"
set "aQ=0"
set "aR=0"
set "dl=%USERPROFILE%\Downloads\QuickInstaller"
if not exist "%dl%" mkdir "%dl%"

:: Menu
:Menu
cls
:: Adding Title Later
echo ===== Quick Installer v1.0.2 =====
echo.
echo 0 - None
echo 1 - Primary URL
echo 2 - Backup URL
echo.
echo Download Path - "%dl%"
echo.
echo ===== Browsers =====
echo [A] Brave Browser [%aA%]
echo [B] WaterFox [%aB%]
echo.
echo ===== Utilities =====
echo [D] Peazip [%aD%]
echo [E] Everything [%aE%]
echo [F] Closeall [%aF%]
echo [G] ShareX [%aG%]
echo [H] NoIP [%aH%]
echo [I] VeraCrypt [%aI%]
echo [J] HWMonitor [%aJ%]
echo.
echo ===== Git =====
echo [K] Git [%aK%]
echo [L] Git LFS  [%aL%]
echo [M] GitHub Desktop [%aM%]
echo.
echo ===== Programming =====
echo [N] Node [%aN%]
echo [O] Python 3 [%aO%]
echo [P] VSCodium [%aP%]
echo.
echo ===== Virus Protection =====
echo [Q] Malwarebytes [%aQ%]
echo [R] BitDefender [%aR%]
echo.
echo ===== Gaming =====
echo [S] Steam [%aS%]
echo.

:: Input
echo Change values by entering the corresponding letter. Press Y to begin installing the applications.
echo.
choice /c ABCDEFGHIJKLMNOPQRSY /m "" >nul

:: Input Handler
if errorlevel 20 goto :download
if errorlevel 19 call :toggle aS
if errorlevel 18 call :toggle aR
if errorlevel 17 call :toggle aQ
if errorlevel 16 call :toggle aP
if errorlevel 15 call :toggle aO
if errorlevel 14 call :toggle aN
if errorlevel 13 call :toggle aM
if errorlevel 12 call :toggle aL
if errorlevel 11 call :toggle aK
if errorlevel 10 call :toggle aJ
if errorlevel 9 call :toggle aI
if errorlevel 8 call :toggle aH
if errorlevel 7 call :toggle aG
if errorlevel 6 call :toggle aF
if errorlevel 5 call :toggle aE
if errorlevel 4 call :toggle aD
if errorlevel 3 call :toggle aC
if errorlevel 2 call :toggle aB
if errorlevel 1 call :toggle aA

:: Input Handler - Toggle
:toggle
if "!%1!"=="0" set "%1=1" & goto :Menu
if "!%1!"=="1" set "%1=2" & goto :Menu
if "!%1!"=="2" set "%1=0" & goto :Menu

:: Input Handler - Install
:download
cls
echo ===== Quick Installer v1.0.2 =====
echo.
echo [Status] Installing Selected Apps!
echo.

:: Applications
if not "%aA%"=="0" (
    if "%aA%"=="1" (
        echo Downloading Brave Browser [Primary URL]
        curl -L -o "%dl%\BraveBrowser.exe" https://example.com/example.exe
    ) else if "%aA%"=="2" (
        echo Downloading Brave Browser [Backup URL]
        curl -L -o "%dl%\BraveBrowser.exe" https://gslibrary.github.io/Quick-Installer/dl/BraveBrowser.exe
    )
)

if not "%aB%"=="0" (
    if "%aB%"=="1" (
        echo Downloading WaterFox [Primary URL]
        curl -L -o "%dl%\WaterFox.exe" https://example.com/example.exe
    ) else if "%aB%"=="2" (
        echo Downloading WaterFox [Backup URL]
        curl -L -o "%dl%\WaterFox.exe" https://gslibrary.github.io/Quick-Installer/dl/WaterFox.exe
    )
)

if not "%aD%"=="0" (
    if "%aD%"=="1" (
        echo Downloading Peazip [Primary URL]
        curl -L -o "%dl%\Peazip.exe" https://example.com/example.exe
    ) else if "%aD%"=="2" (
        echo Downloading Peazip [Backup URL]
        curl -L -o "%dl%\Peazip.exe" https://gslibrary.github.io/Quick-Installer/dl/Peazip.exe
    )
)

if not "%aE%"=="0" (
    if "%aE%"=="1" (
        echo Downloading Everything [Primary URL]
        curl -L -o "%dl%\Everything.exe" https://example.com/example.exe
    ) else if "%aE%"=="2" (
        echo Downloading Everything [Backup URL]
        curl -L -o "%dl%\Everything.exe" https://gslibrary.github.io/Quick-Installer/dl/Everything.exe
    )
)

if not "%aF%"=="0" (
    if "%aF%"=="1" (
        echo Downloading Closeall [Primary URL]
        curl -L -o "%dl%\Closeall.exe" https://example.com/example.exe
    ) else if "%aF%"=="2" (
        echo Downloading Closeall [Backup URL]
        curl -L -o "%dl%\Closeall.exe" https://gslibrary.github.io/Quick-Installer/dl/Closeall.exe
    )
)

if not "%aG%"=="0" (
    if "%aG%"=="1" (
        echo Downloading ShareX [Primary URL]
        curl -L -o "%dl%\ShareX.exe" https://example.com/example.exe
    ) else if "%aG%"=="2" (
        echo Downloading ShareX [Backup URL]
        curl -L -o "%dl%\ShareX.exe" https://gslibrary.github.io/Quick-Installer/dl/ShareX.exe
    )
)

if not "%aH%"=="0" (
    if "%aH%"=="1" (
        echo Downloading NoIP [Primary URL]
        curl -L -o "%dl%\NoIP.exe" https://example.com/example.exe
    ) else if "%aH%"=="2" (
        echo Downloading NoIP [Backup URL]
        curl -L -o "%dl%\NoIP.exe" https://gslibrary.github.io/Quick-Installer/dl/NoIP.exe
    )
)

if not "%aI%"=="0" (
    if "%aI%"=="1" (
        echo Downloading VeraCrypt [Primary URL]
        curl -L -o "%dl%\VeraCrypt.exe" https://example.com/example.exe
    ) else if "%aI%"=="2" (
        echo Downloading VeraCrypt [Backup URL]
        curl -L -o "%dl%\VeraCrypt.exe" https://gslibrary.github.io/Quick-Installer/dl/VeraCrypt.exe
    )
)

if not "%aJ%"=="0" (
    if "%aJ%"=="1" (
        echo Downloading HWMonitor [Primary URL]
        curl -L -o "%dl%\HWMonitor.exe" https://example.com/example.exe
    ) else if "%aJ%"=="2" (
        echo Downloading HWMonitor [Backup URL]
        curl -L -o "%dl%\HWMonitor.exe" https://gslibrary.github.io/Quick-Installer/dl/HWMonitor.exe
    )
)

if not "%aK%"=="0" (
    if "%aK%"=="1" (
        echo Downloading Git [Primary URL]
        curl -L -o "%dl%\Git.exe" https://example.com/example.exe
    ) else if "%aK%"=="2" (
        echo Downloading Git [Backup URL]
        curl -L -o "%dl%\Git.exe" https://gslibrary.github.io/Quick-Installer/dl/Git.exe
    )
)

if not "%aL%"=="0" (
    if "%aL%"=="1" (
        echo Downloading Git LFS [Primary URL]
        curl -L -o "%dl%\GitLFS.exe" https://example.com/example.exe
    ) else if "%aL%"=="2" (
        echo Downloading Git LFS [Backup URL]
        curl -L -o "%dl%\GitLFS.exe" https://gslibrary.github.io/Quick-Installer/dl/GitLFS.exe
    )
)

if not "%aM%"=="0" (
    if "%aM%"=="1" (
        echo Downloading GitHub Desktop [Primary URL]
        curl -L -o "%dl%\GitHubDesktop.exe" https://example.com/example.exe
    ) else if "%aM%"=="2" (
        echo Downloading GitHub Desktop [Backup URL]
        curl -L -o "%dl%\GitHubDesktop.exe" https://gslibrary.github.io/Quick-Installer/dl/GitHubDesktop.exe
    )
)

if not "%aN%"=="0" (
    if "%aN%"=="1" (
        echo Downloading Node [Primary URL]
        curl -L -o "%dl%\Node.exe" https://example.com/example.exe
    ) else if "%aN%"=="2" (
        echo Downloading Node [Backup URL]
        curl -L -o "%dl%\Node.msi" https://gslibrary.github.io/Quick-Installer/dl/Node.msi
    )
)

if not "%aO%"=="0" (
    if "%aO%"=="1" (
        echo Downloading Python 3 [Primary URL]
        curl -L -o "%dl%\Python3.exe" https://example.com/example.exe
    ) else if "%aO%"=="2" (
        echo Downloading Python 3 [Backup URL]
        curl -L -o "%dl%\Python3.exe" https://gslibrary.github.io/Quick-Installer/dl/Python3.exe
    )
)

if not "%aP%"=="0" (
    if "%aP%"=="1" (
        echo Downloading VSCodium [Primary URL]
        curl -L -o "%dl%\VSCodium.exe" https://example.com/example.exe
    ) else if "%aP%"=="2" (
        echo Downloading VSCodium [Backup URL]
        curl -L -o "%dl%\VSCodium.exe" https://gslibrary.github.io/Quick-Installer/dl/VSCodium.exe
    )
)

if not "%aQ%"=="0" (
    if "%aQ%"=="1" (
        echo Downloading Malwarebytes [Primary URL]
        curl -L -o "%dl%\Malwarebytes.exe" https://example.com/example.exe
    ) else if "%aQ%"=="2" (
        echo Downloading Malwarebytes [Backup URL]
        curl -L -o "%dl%\Malwarebytes.exe" https://gslibrary.github.io/Quick-Installer/dl/Malwarebytes.exe
    )
)

if not "%aR%"=="0" (
    if "%aR%"=="1" (
        echo Downloading BitDefender [Primary URL]
        curl -L -o "%dl%\BitDefender.exe" https://example.com/example.exe
    ) else if "%aR%"=="2" (
        echo Downloading BitDefender [Backup URL]
        curl -L -o "%dl%\BitDefender.exe" https://gslibrary.github.io/Quick-Installer/dl/BitDefender.exe
    )
)

if not "%aS%"=="0" (
    if "%aS%"=="1" (
        echo Downloading Steam [Primary URL]
        curl -L -o "%dl%\Steam.exe" https://example.com/example.exe
    ) else if "%aS%"=="2" (
        echo Downloading Steam [Backup URL]
        curl -L -o "%dl%\Steam.exe" https://gslibrary.github.io/Quick-Installer/dl/Steam.exe
    )
)

:: After Downloading Everything
:install
cls
echo ===== Quick Installer v1.0.2 =====
echo.
echo [Status] Downloading Complete!
echo.
echo Installing with Quick Installer will be added soon.
pause
exit