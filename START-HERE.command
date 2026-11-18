#!/bin/bash
# Let's Go Shopping — start a tiny local server, then open the game.
cd "$(dirname "$0")"
PORT=8000
(sleep 1; open "http://localhost:$PORT" 2>/dev/null || xdg-open "http://localhost:$PORT" 2>/dev/null) &
echo "Let's Go Shopping is running at http://localhost:$PORT"
echo "Press Ctrl+C to stop."
python3 -m http.server "$PORT"
