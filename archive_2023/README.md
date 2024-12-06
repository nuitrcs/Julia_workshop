# Julia_workshop
Materials for Julia language workshop

```
imdb_movies_directors_genres = innerjoin(innerjoin(innerjoin(imdb_movies, imdb_movies_genres, on=:movie_id), imdb_movies_directors, on=:movie_id), imdb_directors, on=:director_id)
imdb_movies_genres = innerjoin(innerjoin(imdb_movies, imdb_movies_directors, on=:movie_id), imdb_directors, on=:director_id)
imdb_movies_directors = innerjoin(innerjoin(imdb_movies, imdb_movies_directors, on=:movie_id), imdb_directors, on=:director_id)
```
