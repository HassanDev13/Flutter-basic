import 'dart:math';

import 'package:flutter/material.dart';

class stateManagerTest extends StatefulWidget {
  const stateManagerTest({Key key}) : super(key: key);

  @override
  _stateManagerTestState createState() => _stateManagerTestState();
}

class _stateManagerTestState extends State<stateManagerTest> {
 // Color _currentColor = Colors.grey;
  final _colorNotifier = ValueNotifier<Color>(Colors.grey);
  final _numberNotifier = ValueNotifier<int>(23);

  Random _random = new Random();

  void _onPressed() {
    int randomNumber = _random.nextInt(30);

     // _currentColor = Colors.primaries[randomNumber % Colors.primaries.length];
      _colorNotifier.value =
          Colors.primaries[randomNumber % Colors.primaries.length];
    _numberNotifier.value = 98;

  }
  @override
  void dispose() {
    _colorNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print('building `MyHomePage`');

    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: _onPressed,
          child: Icon(Icons.colorize),
        ),
        body: Stack(
          children: [
            Positioned.fill(
              child: BackgroundWidget(),
            ),
            Center(
              child: ValueListenableBuilder(
                valueListenable: _colorNotifier,
                builder: (_, value, __) => Container(
                  height: 150,
                  width: 150,
                  color: value,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BackgroundWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('building `BackgroundWidget`');
    return Image.network(
      'https://cdn.pixabay.com/photo/2017/08/30/01/05/milky-way-2695569_960_720.jpg',
      fit: BoxFit.cover,
    );
  }
}
