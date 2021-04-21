import 'package:http/http.dart' as http;
import 'weather.dart';

class Services {
  //
  //

  static const String url =
      'http://api.openweathermap.org/data/2.5/forecast?id=993800&appid=2c8c2dfe6b023b29c7ddebca0dea01f8';

  static Future<List<Weather>> getWeather() async {
    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        final List<Weather> cityWeather = weatherFromJson(response.body);
        return cityWeather;
      } else {
        return List<Weather>();
      }
    } catch (e) {
      return List<Weather>();
    }
  }
}
