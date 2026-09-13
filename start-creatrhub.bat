@echo off
setlocal
cd /d "%~dp0"
title CreatrHub Launcher

echo.
echo ========================================
echo          CreatrHub - Starting...
echo ========================================
echo.

where node >nul 2>nul
if errorlevel 1 (
  echo Node.js was not found on this PC.
  echo Please install Node.js LTS and try again.
  echo.
  pause
  exit /b 1
)

if not exist "node_modules\express" (
  echo Installing CreatrHub dependencies for the first run...
  call npm.cmd install
  if errorlevel 1 (
    echo.
    echo Dependency installation failed.
    echo.
    pause
    exit /b 1
  )
  echo.
)

rem Stop an older CreatrHub Node server on port 3000, if one is still running.
powershell -NoProfile -ExecutionPolicy Bypass -Command "$c=Get-NetTCPConnection -LocalPort 3000 -State Listen -ErrorAction SilentlyContinue; foreach($x in $c){$p=Get-Process -Id $x.OwningProcess -ErrorAction SilentlyContinue; if($p -and $p.ProcessName -eq 'node'){Stop-Process -Id $p.Id -Force -ErrorAction SilentlyContinue}}" >nul 2>nul

rem Start the server in its own persistent Command Prompt window.
start "CreatrHub Server" cmd /k "cd /d ""%~dp0"" && node server.js"

rem Give Node a moment to start, then open the site.
timeout /t 3 /nobreak >nul
start "" "http://localhost:3000"

echo CreatrHub has been started.
echo The server window will remain open while the website is running.
echo.
endlocal
exit /b 0
