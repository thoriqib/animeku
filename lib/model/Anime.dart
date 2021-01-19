class Anime {
  int id, rank, episodes;
  String title, studio, source, synopsis, duration, poster;
  double score;
  List<String> genres;

  Anime({
    this.id,
    this.title,
    this.score,
    this.rank,
    this.genres,
    this.synopsis,
    this.studio,
    this.source,
    this.duration,
    this.episodes,
    this.poster,
  });
}
