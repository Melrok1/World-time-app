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
    data = data.isNotEmpty ? data : ModalRoute.of(context).settings.arguments;
    print(data);

    // day and night settings
    String bgImage = data['isDay']? 'day.png' : 'night.png';
    Color bgColor = data['isDay']? Colors.blue : Colors.purple;
    Color textColor = data['isDay']? Colors.black87 : Colors.white70;

    return Scaffold(
      backgroundColor: bgColor,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/$bgImage'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 130.0, 0, 8.0),
              child: FlatButton.icon(
                onPressed: () async {
                  dynamic result = await Navigator.pushNamed(context, '/location');
                  setState(() {
                    data = {
                      'location': result['location'],
                      'time': result['time'],
                      'flag': result['flag'],
                      'isDay': result['isDay'],
                    };
                  });
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
                color: textColor,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(data['time'],
                  style: TextStyle(
                    fontSize: 66.0,
                    fontWeight: FontWeight.bold,
                    color: textColor,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
