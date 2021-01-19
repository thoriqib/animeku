import 'package:flutter/material.dart';
import 'package:animeku/model/Anime.dart';
import 'package:animeku/screen/favorite_button.dart';

class DetailScreen extends StatelessWidget {
  final Anime anime;

  DetailScreen({@required this.anime});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.indigo, fontFamily: 'Comic Neue'),
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
                icon: Icon(Icons.arrow_back, color: Colors.white),
                onPressed: () {
                  Navigator.pop(context);
                }),
            title: Text(anime.title),
            actions: <Widget>[FavoriteButton()],
          ),
          body: SingleChildScrollView(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Hero(
                tag: anime.id,
                child: Image.network(
                  anime.poster,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                margin: EdgeInsets.all(8.0),
                child: Text(anime.title,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    )),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                    margin: EdgeInsets.all(4.0),
                    color: Colors.black,
                    child: Padding(
                      padding: EdgeInsets.all(4.0),
                      child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Icon(Icons.star, color: Colors.yellow),
                            Text(
                              anime.score.toString(),
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            )
                          ]),
                    )),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20.0),
                height: 50.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: anime.genres.map((genre) {
                    return Container(
                      margin: EdgeInsets.all(8.0),
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        genre,
                        style: TextStyle(fontSize: 16.0),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(10)),
                    );
                  }).toList(),
                ),
              ),
              Container(
                margin: EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Rank",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Studio",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Source",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Duration",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Episodes",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Text(anime.rank.toString()),
                        Text(anime.studio),
                        Text(anime.source),
                        Text(anime.duration),
                        Text(anime.episodes.toString()),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      anime.synopsis,
                      style: TextStyle(letterSpacing: 1.5, height: 1.5),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ),
              ),
            ],
          )),
        ),
      ),
    );
  }
}
