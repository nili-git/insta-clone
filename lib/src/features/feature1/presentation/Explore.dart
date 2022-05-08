import 'package:flutter/material.dart';
import 'Model/Post.dart';
import 'Sever/Server.dart';
//import 'Sever/server.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({ Key? key }) : super(key: key);

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {

  late Future<Album> futureAlbum;
    @override
  void initState() {
    super.initState();
    futureAlbum = fetchAlbum();
  }

  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }

}

  @override
  Widget build(BuildContext context) {
    var futureAlbum;
    return Scaffold(
    body: Center(
          child: FutureBuilder<Album>(
            future: futureAlbum,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text(snapshot.data!.title);
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              }

              
              return const CircularProgressIndicator();
            },
          ),
        ),
     // ),
    
    );
  }
