import 'package:delivery/models/Movies.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import "dart:math";
import 'package:fluttertoast/fluttertoast.dart';

class NetflixHomeScreen extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Movies> movies = [
  Movies(name: "Speder man", urlImage: "https://i.pinimg.com/236x/88/d9/0b/88d90b400d9110208ee6681d17f6eb93.jpg"),
    Movies(name: "Atack on titan", urlImage: "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/best-movies-1606255499.jpg"),
    Movies(name: "X man", urlImage: "https://s3-us-west-2.amazonaws.com/flx-editorial-wordpress/wp-content/uploads/2019/09/01093013/Endgame-Lead-1.jpg"),
    Movies(name: "we familly", urlImage: "https://wallpapercave.com/wp/wp2207621.jpg"),
    Movies(name: "Sahla tach", urlImage: "https://wallpaperaccess.com/full/2688562.jpg"),
    Movies(name: "naroto", urlImage: "https://i1.sndcdn.com/artworks-fPfmSzxYFfgAEyjq-6hpkUw-t500x500.jpg"),

  ];


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  function(List<String> param){
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "NETFLIX",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.red),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add_alert),
            tooltip: 'Show Snackbar',
            onPressed: () {
              showMessage("soon ;)");
            },
          ),
        ],
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.youtube_searched_for),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
      ),
      body: netflixHomeScreen(),
    );
  }

  Widget netflixHomeScreen() {
    return Container(
      height: double.infinity,
      color: Colors.black,
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Stack(
              children: [
                Container(
                  height: 170,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/image3.PNG"),
                          fit: BoxFit.cover)),
                ),
                Positioned(
                  left: 0,
                  bottom: 0,
                  child: Container(
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(5)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.assistant_photo_rounded,
                          color: Colors.white,
                        ),
                        Text("  l'ts start",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Recently Watched",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold)),
                  GestureDetector(
                    onTap: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ViewAllMovies(movies: movies),
                          ))
                    },
                    child: Text(
                      "view All",
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
            Container(height: 170, child: item()),
            Container(
              margin: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Recently Watched",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold)),
                  GestureDetector(
                    onTap: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ViewAllMovies(movies: movies),
                          ))
                    },
                    child: Text(
                      "view All",
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
            Container(height: 170, child: item()),
            Container(
              margin: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Recently Watched",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold)),
                  GestureDetector(
                    onTap: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ViewAllMovies(movies: movies),
                          ))
                    },
                    child: Text(
                      "view All",
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
            Container(height: 170, child: item())
          ],
        ),
      ),
    );
  }

  Widget item() {
    return ListView.builder(
        itemCount: movies.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext ctxt, int possition) {
          return InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SecondRoute(movie: movies[possition]),
                  ));
            },
            child: Container(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 8),
                    width: 90,
                    height: 140,
                    child: null,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image:
                                NetworkImage("${movies[possition].urlImage}"))),
                  ),
                  Container(
                      width: 90,
                      padding: EdgeInsets.only(top: 5, bottom: 5),
                      alignment: Alignment.centerLeft,
                      child: Text("${movies[possition].name}",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 10))),
                ],
              ),
            ),
          );
        });
  }

  void showMessage(String message) {
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  }
}

class SecondRoute extends StatelessWidget {
  Movies movie;

  SecondRoute({this.movie});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          movie.name,
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.red),
        ),

      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(movie.urlImage), fit: BoxFit.cover)),

      ),
    );
  }
}

class ViewAllMovies extends StatelessWidget {
  List<Movies> movies = [];

  ViewAllMovies({this.movies});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "See All",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.red),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.black),
        child: ListView.builder(
            itemCount: movies.length,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(left: 10, right: 10, top: 2, bottom: 2),
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    image: DecorationImage(
                        image: NetworkImage(movies[index].urlImage),
                        fit: BoxFit.cover)),
                child: Align(
                  child: Text(movies[index].name,style: TextStyle(fontWeight: FontWeight.bold , color: Colors.white),),
                ),
              );
            }),
      ),
    );
  }
}
