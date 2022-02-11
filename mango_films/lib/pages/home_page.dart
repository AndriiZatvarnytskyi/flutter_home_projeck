import 'package:flutter/material.dart';
import 'package:mango_films/widgets/content_list.dart';
import 'package:mango_films/widgets/widgets.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double SBH = size.height * 0.009;
    return Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
            title: const Text(
              'MANGO FILMS',
              style: TextStyle(fontFamily: 'KronaOne'),
            ),
            actions: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.menu))
            ]),
        body: ListView(
            children: [
              ContentBar(),
              PremierList(),
            ],
          ),
        );
  }
}
