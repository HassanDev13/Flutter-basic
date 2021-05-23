import 'package:delivery/models/modelTest.dart';
import 'package:flutter/material.dart';

class NetflixLoginScreen extends StatelessWidget {
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

  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return Colors.blue;
    }
    return Colors.red;
  }

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
      child: Container(
          color: Colors.black54,
          margin: EdgeInsets.only(top: 70, left: 10, right: 10 , bottom: 15),
          child: Column(
            children: [
              Container(
              //  color: Colors.white,
                alignment: Alignment.center,
                height: 90,
                width: 60,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/iconN.png"),
                        fit: BoxFit.cover)),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(),
                    labelText: 'Email or Phone number',
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(),
                    labelText: 'Confirm Password',
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                height: 50,
                width: 200,
                child: TextButton(
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.red),
                  ),
                  onPressed: () {},
                  child: Text('Sign up'),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Checkbox(
                    checkColor: Colors.white,
                    activeColor: Colors.red,
                    fillColor: MaterialStateProperty.resolveWith(getColor),
                    value: true,
                  ),
                  Text(
                    "Remember my login",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        //   style: DefaultTextStyle.of(context).style,

                        children: <TextSpan>[
                          TextSpan(
                              text: 'Already on Netflix? ',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                          TextSpan(
                              text: 'Sign in',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Colors.red)),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          )),
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/image3.PNG"),
              fit: BoxFit.cover)),
    );
  }
}
