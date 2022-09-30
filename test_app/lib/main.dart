import 'package:flutter/material.dart';

void main() => runApp(MyApp());

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       home: Home(),
       debugShowCheckedModeBanner: false,
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Navigate to a new screen on Button click'),
            backgroundColor: Colors.blueAccent),
      body: Center(
        child: TextButton(
          
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Screen2()));
          },
          child: const Text('next screen 2', style: TextStyle(color: Colors.black),),
          
        ),
      ),
    );
  }
}
class Screen2 extends StatefulWidget {
  @override
  _Screen2State createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Navigate to Previous'),
          backgroundColor: Colors.blueAccent),
      body: Center(
        child: TextButton(
      
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Home()));

          },
          child: const Text('back on first',style: TextStyle(color: Colors.white),),
        ),
      ),
    );
  }
}