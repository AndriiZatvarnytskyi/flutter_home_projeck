import 'package:flutter/material.dart';

class ContentBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double heightE = size.height * 0.35;
    double widthE = size.width * 1;
    double SBW = size.height * 0.02;
    double SBH = size.height * 0.009;
    double paddingE = size.width * 0.005;
    double imageHeight = size.height * 0.09;
    double imageWidth = size.width * 0.4;

    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.blueGrey, Colors.grey],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter)),
      alignment: Alignment.topCenter,
      // color: Colors.red,
      padding: EdgeInsets.all(paddingE),
      height: heightE,
      width: widthE,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage('assets/images/flm.jpeg'),
                        fit: BoxFit.fill),
                    borderRadius: BorderRadius.circular(10)),
                height: imageHeight,
                width: imageWidth,
              ),
              SizedBox(height: SBH),
              Container(
                decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage('assets/images/show.jpeg'),
                        fit: BoxFit.fill),
                    borderRadius: BorderRadius.circular(10)),
                height: imageHeight,
                width: imageWidth,
              ),
              SizedBox(height: SBH),
              Container(
                decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage('assets/images/sport.jpeg'),
                        fit: BoxFit.fill),
                    borderRadius: BorderRadius.circular(10)),
                height: imageHeight,
                width: imageWidth,
              ),
            ],
          ),
          SizedBox(
            width: SBW,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage('assets/images/srl.jpeg'),
                        fit: BoxFit.fill),
                    borderRadius: BorderRadius.circular(10)),
                height: imageHeight,
                width: imageWidth,
              ),
              SizedBox(height: SBH),
              Container(
                decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage('assets/images/mflm.jpeg'),
                        fit: BoxFit.fill),
                    borderRadius: BorderRadius.circular(10)),
                height: imageHeight,
                width: imageWidth,
              ),
              SizedBox(height: SBH),
              Container(
                decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage('assets/images/blg.jpeg'),
                        fit: BoxFit.fill),
                    borderRadius: BorderRadius.circular(10)),
                height: imageHeight,
                width: imageWidth,
              ),
            ],
          )
        ],
      ),
    );
  }
}
