movieFile=_data/movie-ratings.csv;

cd code/movie-list/;
git reset --hard;
git pull;

sed -i -e '2i\'"$1, $2"  $movieFile;

git commit -am "added $1 to movie list";
git push;
