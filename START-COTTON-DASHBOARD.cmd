@echo off
setlocal
cd /d "%~dp0"

where node >nul 2>nul
if errorlevel 1 (
  echo Node.js is required to run this dashboard.
  echo.
  echo Install Node.js LTS from:
  echo https://nodejs.org/
  echo.
  pause
  exit /b 1
)

set PORT=4895
echo Starting Cotton Dashboard API on http://localhost:%PORT%
start "" http://localhost:%PORT%
node server.js

echo.
echo Dashboard stopped.
pause
