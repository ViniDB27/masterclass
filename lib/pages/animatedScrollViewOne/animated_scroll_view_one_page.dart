import 'package:flutter/material.dart';
import 'package:masterclass/pages/animatedScrollViewOne/components/animated_expesion_custom.dart';

class AnimatedScrollViewOne extends StatefulWidget {
  const AnimatedScrollViewOne({Key? key}) : super(key: key);

  @override
  State<AnimatedScrollViewOne> createState() => _AnimatedScrollViewOneState();
}

class _AnimatedScrollViewOneState extends State<AnimatedScrollViewOne> {
  final List<int> list = List.generate(40, (index) => index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Desafio Meu Scroll View'),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: ListView.builder(
          itemCount: list.length,
          itemBuilder: (_, index) => AnimatedExpesionCustom(index: index),
        ),
      ),
    );
  }
}
