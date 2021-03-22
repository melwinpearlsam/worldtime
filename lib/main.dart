import 'package:flutter/material.dart';
import 'package:homepage/pages/chooseLocation.dart';
import 'package:homepage/pages/loading.dart';
import 'pages/home.dart';
import 'pages/loading.dart';
import 'pages/chooseLocation.dart';

void main() => runApp(MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Loading(),
        '/home': (context) => Home(),
        '/location': (context) => ChooseLocation()
      },
    ));
