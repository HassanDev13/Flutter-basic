import 'package:delivery/models/modelTest.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
      appBar: AppBar(centerTitle: true, title: Text('Test 3')),
      backgroundColor: Colors.white,
      body: Test3(),
    );
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
}
