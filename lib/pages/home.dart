import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data = {};
  // bool loading = true;
  //
  // @override
  // void initState() {
  //   setState(() {
  //     loading = true;
  //   });
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    if (data!= null){
      data = ModalRoute.of(context)?.settings?.arguments as Map;
      print(data);
    }
    String dayImagePath = "assets/day.jpeg";
    String nightImagePath = "assets/night.jpeg";
    String bgImage = data['isDaytime']? dayImagePath :nightImagePath;
    return Scaffold(
        body: SafeArea(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(bgImage),
            fit: BoxFit.cover,
          )
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              TextButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, '/location');
                },
                icon: Icon(
                  Icons.location_pin,
                  size: 35,
                  color: Colors.cyan[500],
                ),
                label: Text(
                  "Choose Location",
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    data['location'].toString(),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 28.0,
                      // backgroundColor: Colors.white24,
                    ),
                  ),
                ),
              ]),
              SizedBox(
                height: 18.0,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    data['time'].toString(),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 66.0,
                      // backgroundColor: Colors.white24,
                    ),
                  ),
                ),
              ]),
            ],
          ),
        ),
      ),

    ));
  }
}
