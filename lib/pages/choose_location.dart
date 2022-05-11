import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  int counter = 0;


  @override
  Widget build(BuildContext context) {
    print("build  fn no: $counter");
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        title: Text("Choose Location"),
        backgroundColor: Colors.cyan[400],
        // foregroundColor: Colors.white10,
        centerTitle: true,
        elevation: 2.0,
      ),
      body: ElevatedButton(
        onPressed: () {
          setState(() {
            counter += 1;
          });
        },
        child: Text(
          "counter is $counter",
        ),
      ),
      // icon: Icon(
      //   Icons.plus_one,
      //   size: 35,
      // ),
    );
  }
}
