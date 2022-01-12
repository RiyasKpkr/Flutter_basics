import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.green[200],
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _textController = TextEditingController();

  String _displayText = 'text will be display here ';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Container(
          color: Colors.yellow[100],
          child: Column(
            children: [
              TextField(
                controller: _textController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: 'type something'),
              ),
              ElevatedButton(
                onPressed: () {
                  //Get Data
                  print(_textController.text);
                  setState(() {
                    _displayText = _textController.text;
                  });
                },
                child: Text('click Here'),
              ),
              Text(_displayText),
            ],
          ),
        ),
      ),
    ));
  }
}
