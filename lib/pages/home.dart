import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.amber,
        title: Text('Multi Page App v.1.0',
          style: TextStyle(
            fontSize: 28.0,
            color: Colors.redAccent[400],
            fontWeight: FontWeight.bold,
            letterSpacing: 0.6,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          FlatButton.icon(
            onPressed: () {
              Navigator.pushNamed(context, '/location');
            },
            icon: Icon(Icons.add_location),
            label: Text('Edit location',
              style: TextStyle(
                fontSize: 22.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
