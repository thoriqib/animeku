import 'package:flutter/material.dart';
import 'package:animeku/model/Anime.dart';
import 'package:animeku/screen/detail_screen.dart';
import 'package:animeku/screen/profile_screen.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primaryColor: Colors.indigo,
        ),
        home: DefaultTabController(
          length: 2,
          child: Scaffold(
              appBar: AppBar(
                title: Text('AnimeKu', textAlign: TextAlign.center),
                bottom: TabBar(tabs: <Widget>[
                  Tab(
                    icon: Icon(Icons.list),
                    text: "List Anime",
                  ),
                  Tab(
                    icon: Icon(Icons.person),
                    text: "Profile",
                  ),
                ]),
              ),
              body: TabBarView(children: <Widget>[
                GridView.count(
                  crossAxisCount: 2,
                  children: animeList.map((anime) {
                    return Builder(
                        builder: (context) => FlatButton(
                              onPressed: () => Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          DetailScreen(anime: anime))),
                              child: Card(
                                  child: Hero(
                                tag: anime.id,
                                child: Column(
                                  children: <Widget>[
                                    Expanded(
                                      flex: 2,
                                      child: Stack(children: <Widget>[
                                        Align(
                                          alignment: Alignment.center,
                                          child: Image.network(anime.poster,
                                              fit: BoxFit.cover),
                                        ),
                                        Align(
                                          alignment: Alignment.bottomLeft,
                                          child: Container(
                                              color: Colors.black,
                                              child: Padding(
                                                padding: EdgeInsets.all(2.0),
                                                child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: <Widget>[
                                                      Icon(Icons.star,
                                                          color: Colors.yellow),
                                                      Text(
                                                        anime.score.toString(),
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      )
                                                    ]),
                                              )),
                                        )
                                      ]),
                                    ),
                                    Expanded(
                                        flex: 1,
                                        child: Align(
                                          child: Text(anime.title,
                                              textAlign: TextAlign.center),
                                          alignment: Alignment.center,
                                        ))
                                  ],
                                ),
                              )),
                            ));
                  }).toList(),
                ),
                ProfileScreen()
              ])),
        ));
  }
}

var animeList = [
  Anime(
      id: 1,
      title: "Go-Toubun No Hanayome",
      score: 8.04,
      rank: 489,
      genres: ["Harem", "Comedy", "Romance", "School", "Shounen"],
      synopsis:
          "\t Fuutarou Uesugi is an ace high school student, but leads an otherwise tough life. His standoffish personality and reclusive nature have left him friendless, and his father is debt-ridden, forcing his family to scrape by. \n \t One day during his lunch break, Uesugi argues with a female transfer student who has claimed \"his seat,\" leading both of them to dislike each other. That same day, he is presented with a golden opportunity to clear his family's debt: a private tutoring gig for a wealthy family's daughter, with a wage of five times the market price. He accepts the proposal, but is horrified to discover that the client, Itsuki Nakano, is the girl he confronted earlier! \n \t After unsuccessfully trying to get back on Itsuki's good side, Uesugi finds out that his problems don't end there: Itsuki is actually a quintuplet, so in addition to her, he must also tutor her sisters—Miku, Yotsuba, Nino, and Ichika—who, despite the very real threat of flunking, want nothing to do with a tutor. However, his family's livelihood is on the line so Uesugi pushes on, adamant in his resolve to rid the sisters of their detest for studying and successfully lead them to graduation.",
      studio: "Bibury Animation Studios",
      source: "Manga",
      duration: "24 min. per ep.",
      episodes: 12,
      poster: "https://cdn.myanimelist.net/images/anime/1775/109514.jpg"),
  Anime(
      id: 2,
      title: "Horimiya",
      score: 8.62,
      rank: 64,
      genres: ["Slice of Life", "Comedy", "Romance", "School", "Shounen"],
      synopsis:
          "\t Although admired at school for her amiability and academic prowess, high school student Kyouko Hori has been hiding another side of her. With her parents often away from home due to work, Hori has to look after her younger brother and do the housework, leaving no chance to socialize away from school. \n \t Meanwhile, Izumi Miyamura is seen as a brooding, glasses-wearing otaku. However, in reality, he is a gentle person inept at studying. Furthermore, he has nine piercings hidden behind his long hair and a tattoo along his back and left shoulder. By sheer chance, Hori and Miyamura cross paths outside of school—neither looking as the other expects. These seemingly polar opposites become friends, sharing with each other a side they have never shown to anyone else.",
      studio: "CloverWorks",
      source: "Manga",
      duration: "23 min. per ep.",
      episodes: 13,
      poster: "https://cdn.myanimelist.net/images/anime/1791/110336.jpg"),
  Anime(
      id: 3,
      title: "Jaku Chara Tomozaki-Kun",
      score: 6.91,
      rank: 4004,
      genres: ["Drama", "Romance", "School"],
      synopsis:
          "\t Tomozaki is one of the best gamers in Japan, and in his opinion, the game of real life is one of the worst. No clear-cut rules for success, horribly balanced, and nothing makes sense. But then he meets a gamer who's just as good as him, and she offers to teach him a few exploits...",
      studio: "Project No.9",
      source: "Light Novel",
      duration: "Unknown",
      episodes: 12,
      poster: "https://cdn.myanimelist.net/images/anime/1120/109232.jpg"),
  Anime(
      id: 4,
      title: "Kaifuku Jutsushi no Yarinaoshi",
      score: 6.87,
      rank: 4180,
      genres: [
        "Ecchi",
        "Fantasy",
      ],
      synopsis:
          "\t \"Healing magicians cannot fight alone.\" \n \t Keare, who was bound by this common knowledge, was exploited again and again by others. One day, he noticed what lay beyond healing magic, and was convinced that a healing magician was the strongest class. However, by the time he realized that potential, he was deprived of everything. Thus, he used healing magic on the world itself to go back four years, deciding to redo everything. \n \t This is a heroic tale of one healing magician who became the strongest by using knowledge from his past life and healing magic.",
      studio: "TNK",
      source: "Light Novel",
      duration: "24 min",
      episodes: 12,
      poster: "https://cdn.myanimelist.net/images/anime/1301/110018.jpg"),
  Anime(
      id: 5,
      title: "Nanatsu no Taizai: Fundo no Shinpan",
      score: 7.35,
      rank: 2152,
      genres: [
        "Action",
        "Adventure",
        "Supernatural",
        "Magic",
        "Fantasy",
        "Shounen"
      ],
      synopsis: "\t Fourth season of Nanatsu no Taizai.",
      studio: "Deen",
      source: "Manga",
      duration: "Unknown",
      episodes: 12,
      poster: "https://cdn.myanimelist.net/images/anime/1723/110185.jpg"),
  Anime(
      id: 6,
      title: "Non Non Biyori Nonstop",
      score: 8.36,
      rank: 176,
      genres: ["Slice of Life", "Comedy", "Seinen"],
      synopsis:
          "\t Asahigaoka might look like typical, boring countryside to most; however, no day in this village can ever be considered colorless thanks to five students of varying ages occupying the only class in the only school in town. The youngest student is first grader Renge Miyauchi, who brings an unadulterated wit, curiosity, and her characteristic catchphrase, \"Nyanpasu!\" Then there are the Koshigaya siblings consisting of the quiet ninth grader and elder brother Suguru, diminutive eighth grader Komari, and the mischievous seventh grader Natsumi. The recent arrival of Tokyo-raised fifth grader Hotaru Ichijou, who appears overdeveloped for her age and thus naturally holds an air of maturity, rounds out this lively and vibrant group of five classmates.",
      studio: "SILVER LINK",
      source: "Manga",
      duration: "Unknown",
      episodes: 12,
      poster: "https://cdn.myanimelist.net/images/anime/1159/107670.jpg"),
  Anime(
      id: 7,
      title: "Re:Zero kara Hajimeru Isekai Seikatsu 2nd Season Part 2",
      score: 8.71,
      rank: 43,
      genres: ["Psychological", "Drama", "Thriller", "Fantasy"],
      synopsis:
          "\t Second half of Re:Zero kara Hajimeru Isekai Seikatsu 2nd Season.",
      studio: "White Fox",
      source: "Light Novel",
      duration: "Unknown",
      episodes: 12,
      poster: "https://cdn.myanimelist.net/images/anime/1132/110666.jpg"),
  Anime(
      id: 8,
      title: "Shingeki no Kyojin: The Final Season",
      score: 9.15,
      rank: 2,
      genres: [
        "Action",
        "Military",
        "Mystery",
        "Super Power",
        "Drama",
        "Fantasy",
        "Shounen"
      ],
      synopsis:
          "\t Gabi Braun and Falco Grice have been training their entire lives to inherit one of the seven titans under Marley's control and aid their nation in eradicating the Eldians on Paradis. However, just as all seems well for the two cadets, their peace is suddenly shaken by the arrival of Eren Yeager and the remaining members of the Survey Corps. \n \t Having finally reached the Yeager family basement and learned about the dark history surrounding the titans, the Survey Corps have at long last found the answer they so desperately fought to uncover. With the truth now in their hands, the group set out for the world beyond the walls. \n \t In Shingeki no Kyojin: The Final Season, two utterly different worlds collide as each party pursues their own agenda in the long-awaited conclusion to Paradis’ fight for freedom.",
      studio: "MAPPA",
      source: "Manga",
      duration: "23 min. per ep.",
      episodes: 16,
      poster: "https://cdn.myanimelist.net/images/anime/1000/110531.jpg"),
  Anime(
      id: 9,
      title: "Wonder Egg Priority",
      score: 8.20,
      rank: 312,
      genres: ["Psychological", "Drama", "Fantasy"],
      synopsis:
          "\t A story of troubled girls, spun by screenwriter Shinji Nojima in the world of anime. \n \t Led by a mysterious voice while on a midnight stroll, 14-year-old girl Ai Ooto picks up an egg. The voice coaxes her: \"If you want to change the future, you only need to choose now. Now, believe in yourself and break the egg.\" What awaits Ai after the breaking of the egg...",
      studio: "CloverWorks",
      source: "Original",
      duration: "23 min. per ep.",
      episodes: 12,
      poster: "https://cdn.myanimelist.net/images/anime/1507/110750.jpg"),
  Anime(
      id: 10,
      title: "Yuru Camp Season 2",
      score: 8.60,
      rank: 70,
      genres: ["Slice of Life", "Comedy"],
      synopsis: "Second season of Yuru Camp.",
      studio: "C-Station",
      source: "Manga",
      duration: "Unknown",
      episodes: 13,
      poster: "https://cdn.myanimelist.net/images/anime/1255/110636.jpg"),
];
