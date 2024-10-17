import 'package:flutter/material.dart';

class AnimationDemo extends StatelessWidget {
  const AnimationDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return const AnimationDemoHome();
  }
}

class AnimationDemoHome extends StatefulWidget {
  const AnimationDemoHome({super.key});

  @override
  State<AnimationDemoHome> createState() => _AnimationDemoHomeState();
}

class _AnimationDemoHomeState extends State<AnimationDemoHome>
    with TickerProviderStateMixin {
  late AnimationController animationDemoController;
  late Animation animation;
  late Animation animationColor;
  late CurvedAnimation curvedAnimation;
  @override
  void initState() {
    super.initState();
    animationDemoController = AnimationController(
      // value: 18,
      // lowerBound: 18.0,
      // upperBound: 100.0,
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    );
    curvedAnimation = CurvedAnimation(
        parent: animationDemoController, curve: Curves.bounceOut);
    animation = Tween(begin: 18.0, end: 100.0).animate(curvedAnimation);
    animationColor = ColorTween(begin: Colors.red, end: Colors.red[900])
        .animate(curvedAnimation);
    // animationDemoController.addListener(() {
    //   setState(() {});
    //   // print('${animationDemoController.value}');
    // });
    // animationDemoController.forward();
    animationDemoController.addStatusListener((status) {
      print(status);
    });
  }

  @override
  void dispose() {
    super.dispose();
    animationDemoController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedHeart(
          animations: [animation, animationColor],
          controller: animationDemoController,
        ),
        // child: ActionChip(
        //   label: Text('${animationDemoController.value}'),
        //   onPressed: () {
        //     animationDemoController.forward();
        //   },
        // ),
      ),
    );
  }
}

class AnimatedHeart extends AnimatedWidget {
  final List animations;
  final AnimationController controller;

  AnimatedHeart({
    required this.animations,
    required this.controller,
  }) : super(listenable: controller);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return IconButton(
      icon: Icon(Icons.favorite),
      iconSize: animations[0].value,
      color: animations[1].value,
      onPressed: () {
        switch (controller.status) {
          case AnimationStatus.completed:
            controller.reverse();
            break;
          default:
            controller.forward();
        }
      },
    );
  }
}
