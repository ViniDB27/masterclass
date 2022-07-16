import 'package:flutter/material.dart';

class AnimatedButtonTwoPage extends StatefulWidget {
  const AnimatedButtonTwoPage({Key? key}) : super(key: key);

  @override
  State<AnimatedButtonTwoPage> createState() => _AnimatedButtonTwoPageState();
}

class _AnimatedButtonTwoPageState extends State<AnimatedButtonTwoPage>
    with SingleTickerProviderStateMixin {
  bool isSquared = false;

  late final AnimationController animationController;

  late final Animation animationAlignment;
  late final Animation animationReact;
  late final Animation animationRadius;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );

    animationController.addListener(() {
      setState(() {});
    });

    animationAlignment =
        Tween<Alignment>(begin: Alignment.bottomRight, end: Alignment.topCenter)
            .animate(animationController);
    animationReact = Tween<double>(begin: 50, end: 100).animate(
      CurvedAnimation(
        parent: animationController,
        curve: Curves.easeInOut,
        reverseCurve: Curves.easeInOut,
      ),
    );
    animationRadius = Tween<double>(begin: 25, end: 0).animate(
      CurvedAnimation(
        parent: animationController,
        curve: Curves.easeInOut,
        reverseCurve: Curves.easeInOut,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Desafio do Botão FLutuante'),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Align(
          alignment: animationAlignment.value,
          child: GestureDetector(
            onTap: () => setState(() {
              isSquared = !isSquared;
              if (isSquared) {
                animationController.forward();
              } else {
                animationController.reverse();
              }
            }),
            child: Container(
              margin: const EdgeInsets.all(20),
              width: animationReact.value,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(animationRadius.value),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
