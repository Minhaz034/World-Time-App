import 'package:flutter/material.dart';
import '../services/world_timer.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:simple_moment/simple_moment.dart';


class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  String time='waiting';
  void setupWorldTime() async{
    WorldTime  instance = WorldTime(location: "Dhaka", flag: "assets/x.png", url: "Asia/Dhaka");
    await instance.get_time();
    Navigator.pushReplacementNamed(context, '/home',arguments: {
      'location': instance.location,
      'time': instance.time,
      'flag': instance.flag,
      'isDaytime': instance.isDaytime,
    });
    // print(instance.time);
    // setState(() {
    //   time = instance.time;
    // });
  }

  @override
  void initState() {
    super.initState();
    // get_time();
    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: CircularProgressIndicator(
          color: Colors.blue,
        )
      )
    );
  }
}
