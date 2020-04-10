tvFile=_data/tv-ratings.csv;

cd code/movie-list/;
git reset --hard;
git pull;

if [ -z "$(tail -c 1 "$tvFile")" ]
then
	echo $1, $2 >> $tvFile;
else
	echo '\n'$1, $2 >> $tvFile;
fi

sed -i '/^$/d' $tvFile;

git commit -am "adding $1 to tv list";
git push;
