import 'package:flutter/material.dart';
import 'package:weather_vleis/EasyJsonParse/json_parse.dart';

void main() {
  runApp(HomeApp());
}

class HomeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: JsonParse(),
    );
  }
}
