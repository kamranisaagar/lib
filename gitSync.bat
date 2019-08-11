cd C:/merchantpulse/lib

net stop MpulseJob

echo "Syncing with Git"
git reset --hard origin/master
git clean -f
git pull

net start MpulseJob