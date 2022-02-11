import 'package:flutter/material.dart';
import 'dart:math' as Math;

class AnimationPage extends StatelessWidget {
  const AnimationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimationWidget(),
      ),
    );
  }
}

class AnimationWidget extends StatefulWidget {
  @override
  State<AnimationWidget> createState() => _AnimationWidgetState();
}

class _AnimationWidgetState extends State<AnimationWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> rotation;
  late Animation<double> opacity;
  late Animation<double> moveDown;
  late Animation<double> scale;

  @override
  void initState() {
    controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 4));

    rotation = Tween(begin: 0.0, end: 2 * Math.pi)
        .animate(CurvedAnimation(parent: controller, curve: Curves.bounceOut));

    opacity = Tween(begin: 0.0, end: 1.0).animate(controller);
    moveDown = Tween(begin: 0.0, end: 200.0).animate(controller);
    scale = Tween(begin: 0.0, end: 1.0).animate(controller);
    controller.addListener(() {
      print('Status: ${controller.status}');
      if (controller.status == AnimationStatus.completed) {
        controller.repeat();
      }
      // } else if (controller.status == AnimationStatus.dismissed) {
      //   controller.forward();
      // }
    });

    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    controller.repeat();

    return AnimatedBuilder(
        animation: controller,
        builder: (context, child) {
          return Transform.translate(
            offset: Offset(0.0, moveDown.value),
            child: Transform.rotate(
              angle: rotation.value,
              child: Opacity(
                opacity: opacity.value,
                child:
                    Transform.scale(scale: scale.value, child: _MyContainer()),
              ),
            ),
          );
        });
  }
}

class _MyContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(color: Colors.orange),
    );
  }
}
