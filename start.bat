@echo off
set PATH=C:\Program Files\nodejs;%PATH%
cd /d "%~dp0"

echo ========================================
echo   Atomix AI - Installing and Starting
echo ========================================
echo.

where node >nul 2>&1
if errorlevel 1 (
  echo ERROR: Node.js is not installed.
  echo Install from https://nodejs.org then run this file again.
  pause
  exit /b 1
)

echo Node version:
node --version
echo.

if not exist "node_modules\next" (
  echo Installing dependencies... This may take a few minutes.
  call npm install
  if errorlevel 1 (
    echo npm install failed.
    pause
    exit /b 1
  )
) else (
  echo Dependencies already installed.
)

echo.
echo Starting Atomix AI at http://localhost:3000
echo Press Ctrl+C to stop the server.
echo.

start http://localhost:3000
call npm run dev

pause
