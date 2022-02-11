import 'package:flutter/material.dart';
import 'package:weather_forecast/models/weather_forecast_daily.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TempView extends StatelessWidget {
  final AsyncSnapshot<WeatherForecast> snapshot;
  const TempView({required this.snapshot});

  @override
  Widget build(BuildContext context) {
    var forecastList = snapshot.data!.list;
    var icon = forecastList![0].getIconUrl();
    var temp = forecastList[0].temp!.day;
    var description = forecastList[0].weather![0].description!.toUpperCase();
    var sb = SizedBox(
      width: 25,
    );

    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              child: Icon(
            FontAwesomeIcons.cloudSunRain,
            size: 60,
          )),
          sb,
          Column(
            children: [
              Text(
                '$temp °C',
                style: TextStyle(fontSize: 55),
              ),
              Text('$description',
                  style: TextStyle(
                    fontSize: 18.0,
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
