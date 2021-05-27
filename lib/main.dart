import 'package:flutter/material.dart';

import 'loding_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'animation',
      theme: ThemeData(primarySwatch: Colors.cyan),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('shimmer'),
      ),
      body: Column(
        children: [
          ListTile(
            title: Text('loading list'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoadingScreen()));
            },
          )
        ],
      ),
    );
  }
}
