import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Map data = {};

  @override
  Widget build(BuildContext context) {

    // retrieve the imported data from loading.dart
    data = ModalRoute.of(context).settings.arguments;


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
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 130.0, 0, 8.0),
            child: FlatButton.icon(
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
          ),
          SizedBox(height: 20.0,),
          Text(data['location'],
            style: TextStyle(
              fontSize: 38.0,
              letterSpacing: 1.8,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(data['time'],
                style: TextStyle(
                  fontSize: 66.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
