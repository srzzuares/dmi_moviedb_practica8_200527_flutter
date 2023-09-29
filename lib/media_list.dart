import 'package:flutter/material.dart';
import 'package:dmi_moviedb_practica8_200527_flutter/common/HttpHandler.dart';
import 'package:dmi_moviedb_practica8_200527_flutter/model/Media.dart';

class MediaList extends StatefulWidget {
  @override
  _MediaListState createState() =>
      _MediaListState(); // Define una clase que extiende StatefulWidget y proporciona un método para crear su estado interno.
}

class _MediaListState extends State<MediaList> {
  List<Media> _media = [];
  @override
  void initState() {
    super.initState();
    loadMovies();
  }

  void loadMovies() async {
    var movies = await HttpHandler().fetchMovies();
    setState(() {
      _media.addAll(movies);
    });
  }

  // Define una clase que extiende State y representa el estado interno de MediaList.
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: _media.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(10),
                child: Image.network(_media[index].getPosterUrl()),
              ),
            ],
          );
        },
      ),
    );
  }
}
