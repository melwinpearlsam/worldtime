import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTIme {
  String location;
  String time;
  String flag;
  String url; // location url for api

  WorldTIme({this.location, this.flag, this.url});
  Future<void> getTime() async {
    try {
      Response response =
          await get('http://worldtimeapi.org/api/timezone/$url');
      Map data = jsonDecode(response.body);
      print(response.statusCode);
      print(data);

      String datetime = data['datetime'];
      String offset = data['utc_offset'].substring(1, 3);
      //print(datetime);
      //print(offset);

      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(offset), minutes: 30));

      time = DateFormat.jm().format(now);
    } catch (e) {
      print('caught error: $e');
      time = 'Time Data Error';
    }
  }
}
