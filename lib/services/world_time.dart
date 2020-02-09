import 'package:http/http.dart';
import 'dart:convert';

class WorldTime {

  String location; // location name for that UI
  String time;  // the time in that location
  String flag;  // url to an asset flag icon
  String url; //  location url for api endpoints

  WorldTime({this.location, this.flag, this.url});


  Future <void> getTime() async {

    try {
      // make the request
      Response response = await get('http://worldtimeapi.org/api/timezone/$url');
      Map data = jsonDecode(response.body);

      // get properties from data
      String datetime = data['datetime'];
      String offset = data['utc_offset'].substring(1,3);

      // create TimeDate object
      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(offset)));

      // set the time property
      time = now.toString();
    }
    catch(e) {
      print('type of error: $e');
      time = 'could not get time data. Error type: $e';
    }

  }

}

// WorldTime instance = WorldTime(location: 'Berlin', flag: 'germany.png', url: '/Europe/Berlin');