import 'package:flutter/material.dart';
import 'package:multipageapp/pages/Loading.dart';
import 'package:multipageapp/pages/home.dart';
import 'package:multipageapp/pages/chose_location.dart';



void main() => runApp(MaterialApp(
  initialRoute: '/',
  routes: {
    '/': (context) => Loading(),
    '/home': (context) => Home(),
    '/location': (context) => ChooseLocation(),
  },
));




