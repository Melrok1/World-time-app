import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void getData() async {

    Response response = await get('https://jsonplaceholder.typicode.com/todos/1');
    Map data = (jsonDecode(response.body) );
    print(data['title']);
    print(data);

  }

  @override
  void initState() {
    super.initState();
    getData();
    print('hey there');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Loading'),
        centerTitle: true,
      ),
      body: SafeArea(
          child: Text('Loading screen',
            style: TextStyle(
              fontSize: 22.0,
              fontWeight: FontWeight.bold,
            ),
          ),
      ),
    );
  }
}
