movieFile=_data/movie-ratings.csv;

cd code/movie-list/;
git reset --hard;
git pull;

if [ -z "$(tail -c 1 "$movieFile")" ]
then
	echo $1, $2 >> $movieFile;
else
	echo '\n'$1, $2 >> $movieFile;
fi

sed -i '/^$/d' $movieFile;

git commit -am "just watched the movie: $1";
git push;
