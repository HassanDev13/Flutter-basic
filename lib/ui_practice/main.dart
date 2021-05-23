import 'package:delivery/models/modelTest.dart';
import 'package:delivery/stateManager.dart';
import 'package:flutter/material.dart';

import 'NetflixHomeScreen.dart';
import 'calculator.dart';



void main() {
  runApp(Calculator());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      debugShowCheckedModeBanner: false,
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
      appBar: AppBar(
        title: Text("ACCUEIL"),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add_alert),
            tooltip: 'Show Snackbar',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('This is a snackbar')));
            },
          ),
        ],
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
      ),
      body: netflixSplashScreen(),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'login',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Find',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.zoom_in_rounded),
            label: 'info',
          ),
        ],
        selectedItemColor: Colors.blue,
      ),
    );
  }

  showAlertDialog(BuildContext context) {
    // Create button
    Widget okButton = TextButton(
      child: Text("OK"),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );

    // Create AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Welcome dude"),
      content: Text("we are the best ;)"),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  Widget baridiMobe_sreen2() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 20),
            height: 80,
            width: 120,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              image: DecorationImage(
                image:
                    NetworkImage("https://edcarte.poste.dz/img/Logo_mob.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: GridView.count(
              crossAxisCount: 3,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              children: [
                Container(
                  child: Column(
                    children: [
                      Container(
                        width: 100,
                        height: 70,
                        alignment: Alignment.center,
                        child: Icon(
                          Icons.code_rounded,
                          color: Colors.white,
                          size: 24.0,
                          semanticLabel:
                              'Text to announce in accessibility modes',
                        ),
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.all(Radius.circular(
                                  5.0) //                 <--- border radius here
                              ),
                        ),
                      ),
                      Text("Comptes")
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        width: 100,
                        height: 70,
                        alignment: Alignment.center,
                        child: Icon(
                          Icons.code_rounded,
                          color: Colors.white,
                          size: 24.0,
                          semanticLabel:
                              'Text to announce in accessibility modes',
                        ),
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.all(Radius.circular(
                                  5.0) //                 <--- border radius here
                              ),
                        ),
                      ),
                      Text("Comptes")
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        width: 100,
                        height: 70,
                        alignment: Alignment.center,
                        child: Icon(
                          Icons.code_rounded,
                          color: Colors.white,
                          size: 24.0,
                          semanticLabel:
                              'Text to announce in accessibility modes',
                        ),
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.all(Radius.circular(
                                  5.0) //                 <--- border radius here
                              ),
                        ),
                      ),
                      Text("Comptes")
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        width: 100,
                        height: 70,
                        alignment: Alignment.center,
                        child: Icon(
                          Icons.code_rounded,
                          color: Colors.white,
                          size: 24.0,
                          semanticLabel:
                              'Text to announce in accessibility modes',
                        ),
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.all(Radius.circular(
                                  5.0) //                 <--- border radius here
                              ),
                        ),
                      ),
                      Text("Comptes")
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        width: 100,
                        height: 70,
                        alignment: Alignment.center,
                        child: Icon(
                          Icons.code_rounded,
                          color: Colors.white,
                          size: 24.0,
                          semanticLabel:
                              'Text to announce in accessibility modes',
                        ),
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.all(Radius.circular(
                                  5.0) //                 <--- border radius here
                              ),
                        ),
                      ),
                      Text("Comptes")
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        width: 100,
                        height: 70,
                        alignment: Alignment.center,
                        child: Icon(
                          Icons.code_rounded,
                          color: Colors.white,
                          size: 24.0,
                          semanticLabel:
                              'Text to announce in accessibility modes',
                        ),
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.all(Radius.circular(
                                  5.0) //                 <--- border radius here
                              ),
                        ),
                      ),
                      Text("Comptes")
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        width: 100,
                        height: 70,
                        alignment: Alignment.center,
                        child: Icon(
                          Icons.code_rounded,
                          color: Colors.white,
                          size: 24.0,
                          semanticLabel:
                              'Text to announce in accessibility modes',
                        ),
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.all(Radius.circular(
                                  5.0) //                 <--- border radius here
                              ),
                        ),
                      ),
                      Text("Comptes")
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        width: 100,
                        height: 70,
                        alignment: Alignment.center,
                        child: Icon(
                          Icons.code_rounded,
                          color: Colors.white,
                          size: 24.0,
                          semanticLabel:
                              'Text to announce in accessibility modes',
                        ),
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.all(Radius.circular(
                                  5.0) //                 <--- border radius here
                              ),
                        ),
                      ),
                      Text("Comptes")
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        width: 100,
                        height: 70,
                        alignment: Alignment.center,
                        child: Icon(
                          Icons.code_rounded,
                          color: Colors.white,
                          size: 24.0,
                          semanticLabel:
                              'Text to announce in accessibility modes',
                        ),
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.all(Radius.circular(
                                  5.0) //                 <--- border radius here
                              ),
                        ),
                      ),
                      Text("Comptes")
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        width: 100,
                        height: 70,
                        alignment: Alignment.center,
                        child: Icon(
                          Icons.code_rounded,
                          color: Colors.white,
                          size: 24.0,
                          semanticLabel:
                              'Text to announce in accessibility modes',
                        ),
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.all(Radius.circular(
                                  5.0) //                 <--- border radius here
                              ),
                        ),
                      ),
                      Text("Comptes")
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        width: 100,
                        height: 70,
                        alignment: Alignment.center,
                        child: Icon(
                          Icons.code_rounded,
                          color: Colors.white,
                          size: 24.0,
                          semanticLabel:
                              'Text to announce in accessibility modes',
                        ),
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.all(Radius.circular(
                                  5.0) //                 <--- border radius here
                              ),
                        ),
                      ),
                      Text("Comptes")
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        width: 100,
                        height: 70,
                        alignment: Alignment.center,
                        child: Icon(
                          Icons.code_rounded,
                          color: Colors.white,
                          size: 24.0,
                          semanticLabel:
                              'Text to announce in accessibility modes',
                        ),
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.all(Radius.circular(
                                  5.0) //                 <--- border radius here
                              ),
                        ),
                      ),
                      Text("Comptes")
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        width: 100,
                        height: 70,
                        alignment: Alignment.center,
                        child: Icon(
                          Icons.code_rounded,
                          color: Colors.white,
                          size: 24.0,
                          semanticLabel:
                              'Text to announce in accessibility modes',
                        ),
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.all(Radius.circular(
                                  5.0) //                 <--- border radius here
                              ),
                        ),
                      ),
                      Text("Comptes")
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        width: 100,
                        height: 70,
                        alignment: Alignment.center,
                        child: Icon(
                          Icons.code_rounded,
                          color: Colors.white,
                          size: 24.0,
                          semanticLabel:
                              'Text to announce in accessibility modes',
                        ),
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.all(Radius.circular(
                                  5.0) //                 <--- border radius here
                              ),
                        ),
                      ),
                      Text("Comptes")
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        width: 100,
                        height: 70,
                        alignment: Alignment.center,
                        child: Icon(
                          Icons.code_rounded,
                          color: Colors.white,
                          size: 24.0,
                          semanticLabel:
                              'Text to announce in accessibility modes',
                        ),
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.all(Radius.circular(
                                  5.0) //                 <--- border radius here
                              ),
                        ),
                      ),
                      Text("Comptes")
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        width: 100,
                        height: 70,
                        alignment: Alignment.center,
                        child: Icon(
                          Icons.code_rounded,
                          color: Colors.white,
                          size: 24.0,
                          semanticLabel:
                              'Text to announce in accessibility modes',
                        ),
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.all(Radius.circular(
                                  5.0) //                 <--- border radius here
                              ),
                        ),
                      ),
                      Text("Comptes")
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        width: 100,
                        height: 70,
                        alignment: Alignment.center,
                        child: Icon(
                          Icons.code_rounded,
                          color: Colors.white,
                          size: 24.0,
                          semanticLabel:
                              'Text to announce in accessibility modes',
                        ),
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.all(Radius.circular(
                                  5.0) //                 <--- border radius here
                              ),
                        ),
                      ),
                      Text("Comptes")
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget baridiMobe() {
    return ListView(
      shrinkWrap: true,
      children: [
        Container(
          color: Color(0xffece9ea),
          child: Column(
            children: [
              Container(
                alignment: Alignment.topRight,
                margin: EdgeInsets.only(right: 17, bottom: 5),
                child: Text("Version 1.2.23",
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.w100)),
              ),
              Container(
                margin: EdgeInsets.only(right: 10, bottom: 10),
                child: Text(
                  "WELCOME TO THE NEW MOBILE APPLICATION OF ALGERIA POSTE",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 17),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                height: 80,
                width: 80,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://edcarte.poste.dz/img/Logo_mob.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.all(15.0),
                padding: const EdgeInsets.all(3.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.all(Radius.circular(
                          5.0) //                 <--- border radius here
                      ),
                ),
                child: Column(
                  children: [
                    Container(
                        margin: EdgeInsets.all(3),
                        alignment: Alignment.topLeft,
                        child: Text("Please enter your ID")),
                    Container(
                      height: 50,
                      child: TextField(
                        autofocus: false,

                        style: TextStyle(fontSize: 17),
                        //increases the height of cursor
                        decoration: InputDecoration(
                          hintText: "sehlaTack@gamil.com",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(0.0),
                            borderSide: BorderSide(
                              color: Colors.amber,
                              style: BorderStyle.solid,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.all(3),
                        alignment: Alignment.topLeft,
                        child: Text("Please enter your password")),
                    Container(
                      height: 50,
                      child: TextField(
                        autofocus: false,
                        textAlign: TextAlign.start,
                        style: TextStyle(fontSize: 17),
                        //increases the height of cursor
                        decoration: InputDecoration(
                          hintText: "password",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(0.0),
                            borderSide: BorderSide(
                              color: Colors.amber,
                              style: BorderStyle.solid,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      //  color: Colors.blue,
                      margin: EdgeInsets.only(top: 10, bottom: 10),
                      height: 60,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black54),
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(
                                5.0) //                 <--- border radius here
                            ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Text(
                              "CONTINUE",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                            margin: EdgeInsets.only(left: 40),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 20),
                            child: Icon(
                              Icons.favorite,
                              color: Colors.white,
                              size: 24.0,
                              semanticLabel:
                                  'Text to announce in accessibility modes',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      //   style: DefaultTextStyle.of(context).style,

                      children: <TextSpan>[
                        TextSpan(
                            text:
                                'By entring the application you confirm your agreement to the ',
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 17,
                                color: Colors.black)),
                        TextSpan(
                            text: 'Privacy policy',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.blue)),
                      ],
                    ),
                  )),
              Divider(
                height: 20,
                thickness: 5,
                indent: 20,
                endIndent: 20,
              ),
              Container(
                  margin: EdgeInsets.only(right: 10, left: 10, bottom: 10),
                  child: Text(
                    "Reset password",
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                    textAlign: TextAlign.center,
                  )),
              Container(
                  margin: EdgeInsets.only(right: 10, left: 10),
                  child: Text(
                    "To change the phone number you required to re_de",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                        fontSize: 15),
                    textAlign: TextAlign.center,
                  )),
              Container(
                  margin: EdgeInsets.all(10),
                  child: Text(
                    "Go to registration",
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                    textAlign: TextAlign.center,
                  )),
            ],
          ),
        )
      ],
    );
  }

  Widget stack_test() {
    return SingleChildScrollView(
        child: Column(
      children: [
        Container(
          height: 250,
          color: Colors.blueAccent,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                top: 20,
                left: 20,
                child: Container(
                  height: 50,
                  width: 50,
                  color: Colors.amberAccent,
                ),
              ),
              Positioned(
                top: 225,
                left: 20,
                child: Container(
                  width: MediaQuery.of(context).size.width - 40,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        color: Colors.amberAccent,
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        color: Colors.amberAccent,
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        color: Colors.amberAccent,
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        color: Colors.amberAccent,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 50),
          child: GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  childAspectRatio: 3 / 2,
                  crossAxisSpacing: 0,
                  mainAxisSpacing: 0),
              itemCount: myList.length,
              itemBuilder: (BuildContext ctx, index) {
                return Container(
                  margin: const EdgeInsets.all(8),
                  // color: Colors.blueAccent,
                  height: 70,
                  width: 70,
                  child: Stack(
                    children: [
                      Positioned(
                          child: Container(
                        color: Colors.yellow,
                        margin: EdgeInsets.all(2),
                        padding: EdgeInsets.all(2),
                        child: Text("Click"),
                      )),
                      Positioned(
                          child: Align(
                        child: Text(
                          myList[index].name,
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      )),
                    ],
                  ),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(myList[index].image),
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              }),
        )
      ],
    ));
  }

  Widget Test3() {
    return Container(
      margin: const EdgeInsets.only(left: 15, right: 15, top: 20),
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.start,

        children: <Widget>[
          Row(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                    height: 60.0,
                    child: const Image(
                      image: NetworkImage(
                          'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
                    )),
                Container(
                    height: 60.0,
                    child: const Image(
                      image: NetworkImage(
                          'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
                    )),
                Container(
                    height: 60.0,
                    child: const Image(
                      image: NetworkImage(
                          'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
                    )),
              ]),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                      height: 60.0,
                      child: const Image(
                        image: NetworkImage(
                            'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
                      )),
                  Container(
                      height: 60.0,
                      child: const Image(
                        image: NetworkImage(
                            'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
                      )),
                ]),
          ),
          const Divider(
            height: 20,
            thickness: 5,
            indent: 20,
            endIndent: 20,
          ),
          Container(
              height: 60.0,
              alignment: Alignment.topRight,
              child: const Image(
                image: NetworkImage(
                    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
              )),
          const Divider(
            height: 20,
            thickness: 5,
            indent: 20,
            endIndent: 20,
          ),
          Container(
            height: 60.0,
            child: Image.asset(
              'assets/images/image1.jpg',
              height: 40,
            ),
          ),
          const Divider(
            height: 20,
            thickness: 5,
            indent: 20,
            endIndent: 20,
          ),
          Container(
            height: 50,
            child: ListView(
                //  shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                      height: 60.0,
                      child: const Image(
                        image: NetworkImage(
                            'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
                      )),
                  Container(
                      height: 60.0,
                      child: const Image(
                        image: NetworkImage(
                            'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
                      )),
                  Container(
                      height: 60.0,
                      child: const Image(
                        image: NetworkImage(
                            'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
                      )),
                  Container(
                      height: 60.0,
                      child: const Image(
                        image: NetworkImage(
                            'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
                      )),
                  Container(
                      height: 60.0,
                      child: const Image(
                        image: NetworkImage(
                            'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
                      )),
                  Container(
                      height: 60.0,
                      child: const Image(
                        image: NetworkImage(
                            'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
                      )),
                ]),
          ),
          SizedBox(
            height: 25.0,
          ),
          Container(
              child: ElevatedButton.icon(
            label: Text('Sehlatech.com'),
            icon: Icon(Icons.web),
            onPressed: () {
              showAlertDialog(context);
            },
          )),
/*
            Row(children: <Widget>[
              Expanded(
                child: Text('A', textAlign: TextAlign.center),
              ),
              Expanded(
                child: Text('B', textAlign: TextAlign.center),
              )
            ]),

 */
        ],
      ),
    );
  }

  Widget gridBuilder() {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20),
        itemCount: myList.length,
        itemBuilder: (BuildContext ctx, index) {
          return Container(
            padding: const EdgeInsets.all(8),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(myList[index].name),
                  Text(myList[index].content),
                ]),
            // color: Colors.teal[100],

            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(myList[index].image),
                fit: BoxFit.contain,
              ),
            ),
          );
        });
  }

  Widget Grid_me() {
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 0,
      mainAxisSpacing: 0,
      crossAxisCount: 2,
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(8),
          child: const Text("He'd have you all unravel at the"),
          color: Colors.teal[100],
        ),
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage("url"),
              fit: BoxFit.cover,
            ),
          ),
          padding: const EdgeInsets.all(8),
          child: Text('Heed not the rabble'),
        ),
      ],
    );
  }

  Widget netflixSplashScreen() {
    return Container(
      color: Colors.black,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 200,
            child: Container(
              height: 100,
              child: Image.network(
                  "https://variety.com/wp-content/uploads/2020/05/netflix-logo.png"),
            ),
          ),
          Positioned(
              child: Container(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    'Netflix Algeria.com',
                    style: TextStyle(color: Colors.white),
                  )))
        ],
      ),
    );
  }

  Widget netflixLoginScreen() {
    return Container(
      child: Text("h"),
    );
  }
}
