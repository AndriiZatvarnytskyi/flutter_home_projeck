import 'package:flutter/material.dart';
import 'package:weather_forecast/api/weather_api.dart';

class CityScreen extends StatefulWidget {
  @override
  _SityScreenState createState() => _SityScreenState();
}

class _SityScreenState extends State<CityScreen> {
  var cityName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: TextField(
                      cursorColor: Colors.blueGrey[800],
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        hintText: 'Enter csty name',
                        hintStyle: TextStyle(color: Colors.white),
                        filled: true,
                        fillColor: Colors.black87,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            borderSide: BorderSide.none),
                        icon: Icon(
                          Icons.location_city,
                          size: 50,
                        ),
                      ),
                      onChanged: (value) {
                        cityName = value;
                      }),
                ),
              ),
              FlatButton(
                child: Text(
                  'Get Weather',
                  style: TextStyle(fontSize: 30),
                ),
                onPressed: () {
                  Navigator.pop(context, cityName);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
