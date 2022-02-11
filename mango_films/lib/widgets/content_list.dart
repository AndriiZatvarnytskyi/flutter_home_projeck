import 'package:flutter/material.dart';

class PremierList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double heightE = size.height * 0.3;
    double widthE = size.width * 1;
    double SBW = size.height * 0.02;
    double SBH = size.height * 0.009;
    double paddingE = size.width * 0.005;
    double cardHeight = size.height * 0.25;
    double cardWidth = size.width * 0.30;
    double textPadding = size.width * 0.02;

    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(left: 16, top: 5),
          width: widthE,
          color: Colors.grey,
          child: const Text(
            "Прем'єри",
            style: TextStyle(
                fontSize: 30, color: Colors.white, fontFamily: 'GOST_type_B'),
          ),
        ),
        Container(
          color: Colors.grey,
          height: cardHeight,
          padding: EdgeInsets.only(left: 1, right: 1),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              SizedBox(
                width: SBW,
              ),
              Container(
                  width: cardWidth,
                  height: cardHeight,
                  color: Colors.grey,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                          image: AssetImage(
                              'assets/images/usi_sviati_niuanga.jpeg'),
                          fit: BoxFit.fill),
                      color: Colors.grey,
                    ),
                    width: widthE,
                    height: cardHeight,
                  )),
              SizedBox(
                width: SBW,
              ),
              Container(
                  width: cardWidth,
                  height: cardHeight,
                  color: Colors.grey,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                          image: AssetImage('assets/images/stilwoter.jpeg'),
                          fit: BoxFit.fill),
                      color: Colors.grey,
                    ),
                    width: widthE,
                    height: cardHeight,
                  )),
              SizedBox(
                width: SBW,
              ),
              Container(
                  width: cardWidth,
                  height: cardHeight,
                  color: Colors.grey,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                          image: AssetImage(
                              'assets/images/myslyvtsi_na_pryvydiv.jpeg'),
                          fit: BoxFit.fill),
                      color: Colors.grey,
                    ),
                    width: widthE,
                    height: cardHeight,
                  )),
              SizedBox(
                width: SBW,
              ),
              Container(
                  width: cardWidth,
                  height: cardHeight,
                  color: Colors.grey,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                          image: AssetImage('assets/images/sister.jpeg'),
                          fit: BoxFit.fill),
                      color: Colors.grey,
                    ),
                    width: widthE,
                    height: cardHeight,
                  )),
              SizedBox(
                width: SBW,
              ),
              Container(
                  width: cardWidth,
                  height: cardHeight,
                  color: Colors.grey,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                          image: AssetImage('assets/images/ipristolov.jpeg'),
                          fit: BoxFit.fill),
                      color: Colors.grey,
                    ),
                    width: widthE,
                    height: cardHeight,
                  )),
              SizedBox(
                width: SBW,
              ),
              Container(
                  width: cardWidth,
                  height: cardHeight,
                  color: Colors.grey,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                          image: AssetImage('assets/images/eifor.jpeg'),
                          fit: BoxFit.fill),
                      color: Colors.grey,
                    ),
                    width: widthE,
                    height: cardHeight,
                  )),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 16, top: 30, bottom: 5),
          width: widthE,
          color: Colors.grey,
          child: const Text(
            "Популярне",
            style: TextStyle(
                fontSize: 30, color: Colors.white, fontFamily: 'GOST_type_B'),
          ),
        ),
        Container(
          color: Colors.grey,
          height: cardHeight,
          padding: EdgeInsets.only(left: 1, right: 1),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              SizedBox(
                width: SBW,
              ),
              Container(
                  width: cardWidth,
                  height: cardHeight,
                  color: Colors.grey,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                          image: AssetImage('assets/images/hp20year.jpeg'),
                          fit: BoxFit.fill),
                      color: Colors.grey,
                    ),
                    width: widthE,
                    height: cardHeight,
                  )),
              SizedBox(
                width: SBW,
              ),
              Container(
                  width: cardWidth,
                  height: cardHeight,
                  color: Colors.grey,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                          image: AssetImage('assets/images/svaty7.jpeg'),
                          fit: BoxFit.fill),
                      color: Colors.grey,
                    ),
                    width: widthE,
                    height: cardHeight,
                  )),
              SizedBox(
                width: SBW,
              ),
              Container(
                  width: cardWidth,
                  height: cardHeight,
                  color: Colors.grey,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                          image: AssetImage('assets/images/pkm.jpeg'),
                          fit: BoxFit.fill),
                      color: Colors.grey,
                    ),
                    width: widthE,
                    height: cardHeight,
                  )),
              SizedBox(
                width: SBW,
              ),
              Container(
                  width: cardWidth,
                  height: cardHeight,
                  color: Colors.grey,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                          image: AssetImage('assets/images/sis.jpeg'),
                          fit: BoxFit.fill),
                      color: Colors.grey,
                    ),
                    width: widthE,
                    height: cardHeight,
                  )),
              SizedBox(
                width: SBW,
              ),
              Container(
                  width: cardWidth,
                  height: cardHeight,
                  color: Colors.grey,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                          image: AssetImage('assets/images/vch.jpeg'),
                          fit: BoxFit.fill),
                      color: Colors.grey,
                    ),
                    width: widthE,
                    height: cardHeight,
                  )),
              SizedBox(
                width: SBW,
              ),
              Container(
                  width: cardWidth,
                  height: cardHeight,
                  color: Colors.grey,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                          image: AssetImage('assets/images/hp1.jpeg'),
                          fit: BoxFit.fill),
                      color: Colors.grey,
                    ),
                    width: widthE,
                    height: cardHeight,
                  )),
            ],
          ),
        ),
      ],
    );
  }
}
