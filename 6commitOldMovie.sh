myfile=code/movie-list/_data/movie-ratings.csv;

git reset --hard;
git pull;

sed -i -e '2i\'"$1, $2"  $myfile;

git commit -am "added $1 to movie list";
git push;
