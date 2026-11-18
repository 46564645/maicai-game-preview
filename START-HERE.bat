@echo off
rem Let's Go Shopping - start a tiny local server, then open the game.
cd /d %~dp0
set PORT=8000
start "" "http://localhost:%PORT%"
echo Let's Go Shopping is running at http://localhost:%PORT%
echo Close this window to stop.
py -m http.server %PORT% 2>nul || python -m http.server %PORT%
