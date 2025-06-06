import 'package:flutter/material.dart';

void main() {
  runApp(ElvinGramApp());
}

class ElvinGramApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ElvinGram',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.black,
        primaryColor: Colors.amber[700],
        colorScheme: ColorScheme.dark(
          primary: Colors.amber[700]!,
          secondary: Colors.amberAccent,
        ),
        textTheme: TextTheme(
          bodyText2: TextStyle(color: Colors.amber[300]),
          headline6: TextStyle(color: Colors.amber[500], fontWeight: FontWeight.bold),
        ),
      ),
      home: StarsHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class StarsHomePage extends StatefulWidget {
  @override
  _StarsHomePageState createState() => _StarsHomePageState();
}

class _StarsHomePageState extends State<StarsHomePage> {
  int stars = 0;

  void _addStars() {
    setState(() {
      stars += 100;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ElvinGram — Звёзды'),
        backgroundColor: Colors.black,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('У тебя сейчас', style: TextStyle(fontSize: 24)),
            SizedBox(height: 10),
            Text(
              '\$stars ⭐',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                shadows: [
                  Shadow(
                    blurRadius: 20,
                    color: Colors.amberAccent,
                    offset: Offset(0, 0),
                  ),
                ],
              ),
            ),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: _addStars,
              style: ElevatedButton.styleFrom(
                primary: Colors.amber[700],
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
              ),
              child: Text(
                'Получить звёзды',
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
