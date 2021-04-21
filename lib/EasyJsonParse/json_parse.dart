import 'package:flutter/material.dart';
import 'services.dart';
import 'weather.dart';

class JsonParse extends StatefulWidget {
  //
  JsonParse() : super();

  @override
  _JsonParseState createState() => _JsonParseState();
}

class _JsonParseState extends State<JsonParse> {
  List<Weather> _weather;
  bool _loading;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _loading = true;
    Services.getWeather().then((weather) {
      _weather = weather;
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(_loading ? 'Loading...' : 'Vleis se weer'),
        ),
        body: Container(
          color: Colors.white,
          child: ListView.builder(
              itemCount: null == _weather ? 0 : _weather.length,
              itemBuilder: (context, index) {
                Weather weather = _weather[index];
                return ListTile(
                  title: Text('title...'),
                  subtitle: Text('sub...'),
                );
              }),
        ));
  }
}
