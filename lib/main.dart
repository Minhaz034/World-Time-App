import 'dart:js';

import 'package:flutter/material.dart';
import 'package:world_time_update/pages/choose_location.dart';
import 'package:world_time_update/pages/home.dart';
import 'package:world_time_update/pages/loading.dart';

void main() {
  runApp( MaterialApp(
    // home: Home(),
    initialRoute: '/',
    routes: {
      '/' : (context) => Loading(),
      '/home': (context) => Home(),
      '/location': (context) => ChooseLocation(),

    },
  ));
}

