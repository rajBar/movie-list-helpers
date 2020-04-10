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

git commit -am "adding $1 to movie list";
git push;
