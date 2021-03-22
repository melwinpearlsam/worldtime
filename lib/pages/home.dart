import 'package:flutter/material.dart';
import 'package:homepage/services/world-time.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data = {};

  @override
  Widget build(BuildContext context) {
    WorldTIme worldTIme =
        ModalRoute.of(context).settings.arguments as WorldTIme;

    return Scaffold(
        body: SafeArea(
            child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          FlatButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, '/location');
              },
              icon: Icon(Icons.edit_location),
              label: Text('Edit Location')),
          SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                worldTIme.location,
                style: TextStyle(fontSize: 30, letterSpacing: 2),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            worldTIme.time,
            style: TextStyle(fontSize: 50, letterSpacing: 3),
          )
        ],
      ),
    )));
  }
}
