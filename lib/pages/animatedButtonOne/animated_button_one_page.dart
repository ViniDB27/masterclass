import 'package:flutter/material.dart';

class AnimatedButtonOnePage extends StatefulWidget {
  const AnimatedButtonOnePage({Key? key}) : super(key: key);

  @override
  State<AnimatedButtonOnePage> createState() => _AnimatedButtonOnePageState();
}

class _AnimatedButtonOnePageState extends State<AnimatedButtonOnePage> {
  bool isSquared = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Desafio do Botão FLutuante'),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: AnimatedAlign(
          alignment: isSquared ? Alignment.topCenter : Alignment.bottomRight,
          duration: const Duration(seconds: 3),
          child: GestureDetector(
            onTap: () => setState(() {
              isSquared = !isSquared;
            }),
            child: AnimatedContainer(
              curve: Curves.easeInOut,
              margin: const EdgeInsets.all(20),
              width: isSquared ? 100 : 50,
              height: 50,
              duration: const Duration(seconds: 3),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(isSquared ? 0 : 25),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
