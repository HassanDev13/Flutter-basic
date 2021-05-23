import 'package:delivery/models/modelTest.dart';
import 'package:flutter/material.dart';
class NetflixSplashScreen extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
  List<ModelTest> myList = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    for (int i = 0; i < 10; i++) {
      myList.add(ModelTest(
          name: "hassan $i",
          content: "content  content content $i content",
          image:
              'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: netflixSplashScreen(),
    );
  }

  Widget netflixSplashScreen() {
    return Container(
      color: Colors.black,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 280,
            child: Container(
              height: 100,
              child: Image.network(
                  "https://variety.com/wp-content/uploads/2020/05/netflix-logo.png"),
            ),
          ),
          Positioned(
              child: Container(
                  margin: EdgeInsets.only(bottom: 10),
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    'Netflix Algeria.com',
                    style: TextStyle(color: Colors.white),
                  )))
        ],
      ),
    );
  }
}
