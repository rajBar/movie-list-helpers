tvFile=_data/tv-ratings.csv;

cd ~/code/movie-list/;
git reset --hard;
git pull;

echo '\n'$1, $2 >> $tvFile;

sed -i '/^$/d' $tvFile;

git commit -am "adding $1 to tv list";
git push;
