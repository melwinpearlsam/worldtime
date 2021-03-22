import 'package:flutter/material.dart';
import 'package:homepage/services/world-time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  String time = 'loading';
  void setUpWorldTime() async {
    WorldTIme instance =
        WorldTIme(location: 'Mumbai', flag: 'india.jpeg', url: 'Asia/Kolkata');
    await instance.getTime();
    Navigator.pushReplacementNamed(context, '/home', arguments: instance);
  }

  @override
  void initState() {
    super.initState();
    setUpWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: SpinKitRotatingCircle(
            color: Colors.white,
            size: 50.0,
          ),
        ));
  }
}
