import 'package:http/http.dart';
import 'package:intl/intl.dart';
import 'dart:convert';


class WorldTime{
  String location;
  String time='';
  String flag; //url to flag icon
  String url ;
  bool isDaytime = false;

  WorldTime({required this.location, required this.flag, required this.url});

  Future<void> get_time() async{
    try{
      Response response =  await get(Uri.parse('http://worldtimeapi.org/api/timezone/$url'));
      Map data  = jsonDecode(response.body);
      String datetime = data['datetime'];
      String offset = data['utc_offset'].substring(1,3);
      // print(offset);
      DateTime now =  DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(offset)));
      // print(now);
      // time = now.toString();
      isDaytime = now.hour > 6 && now.hour < 18 ?true : false;
      time = DateFormat.jm().format(now);

    }
    catch(e){
      print("Error:$e");
      time = "Failed to get time data";
    }

  }
}



