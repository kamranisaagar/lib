start /min runas /savecred /user:administrator mpulseStop.bat
timeout /t 5 /nobreak

echo "Syncing with Git"
git reset --hard origin/master
git clean -f
git pull

start /min runas /savecred /user:administrator mpulseStart.bat

@ECHO OFF
set CLASSPATH=.
set CLASSPATH=%CLASSPATH;
cd C:\merchantpulse\lib
start /B javaw -jar -Dconfig.home="c:/merchantpulse" MpulseUI-1.0-SNAPSHOT.jar
