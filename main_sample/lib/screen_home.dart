import 'package:flutter/material.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  _ScreenHomeState createState() => _ScreenHomeState();
}

  int _counter = 0;

class _ScreenHomeState extends State<ScreenHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center( 
       child :DisplayText(counterText: _counter.toString()),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          print(_counter);

          setState(() {
            _counter = _counter +1;
          });
        },),
    );
  }
}


class DisplayText extends StatelessWidget {
  final String counterText;

  const DisplayText({Key? key, required this.counterText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(counterText);
  }
}