@ECHO OFF
set CLASSPATH=.
set CLASSPATH=%CLASSPATH;
cd C:\merchantpulse\lib
start /B javaw -jar -Dconfig.home="c:/merchantpulse" MpulseUI-1.0-SNAPSHOT.jar

exit
