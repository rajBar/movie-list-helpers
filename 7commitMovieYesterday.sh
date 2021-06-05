movieFile=_data/movie-ratings.csv;

cd ~/code/movies/;
git reset --hard;
git pull;

thisDate=$(date -d "yesterday" '+%d-%m-%Y');

echo '\n'\"$1\", $2, $thisDate, $3 >> $movieFile;

sed -i '/^$/d' $movieFile;

git commit -am "adding $1 to movie list";
git push;
