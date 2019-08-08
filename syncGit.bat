start /min runas /savecred /user:administrator mpulseStop.bat
timeout /t 5 /nobreak

echo "Syncing with Git"
git reset --hard origin/master
git clean -f
git pull

start /min runas /savecred /user:administrator mpulseStart.bat
