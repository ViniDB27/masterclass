import 'package:flutter/material.dart';

class AnimatedExpesionCustom extends StatefulWidget {
  final int index;
  const AnimatedExpesionCustom({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  State<AnimatedExpesionCustom> createState() => _AnimatedExpesionCustomState();
}

class _AnimatedExpesionCustomState extends State<AnimatedExpesionCustom> {
  bool isOpen = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          GestureDetector(
            onTap: () => setState(() {
              isOpen = !isOpen;
            }),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "My Expansion ${widget.index + 1}",
                    style: const TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  Icon(isOpen ? Icons.arrow_drop_down : Icons.arrow_left),
                ],
              ),
            ),
          ),
          AnimatedContainer(
            duration: const Duration(milliseconds: 600),
            width: MediaQuery.of(context).size.width,
            height: isOpen ? 200 : 0,
            color: Colors.transparent,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text('logo flutter'),
                  Text(
                      'lorem impsu asjdklasjdj lksajdlkajsdjalsj jasljdlj asjd lkasjdlk jsalkjd lkjlsajdljs lkjaklsjdlasj lkdjasl jlasjdlkajs lkjaslkdj klsajdlk jlksajdlk ajsdlkjlsdjlk ajskdljsalkd jlaksjd lasjdl jsakldj aklsdjl kasjdlj alsjd lasjdl jasldj alsj klasjd klasjd akjsdhkjashd jkashdksajhdjk hasjkdhkasjhd jkahsdjkhkj ahsjkdhjkashdjkashjk hasjkdhkajshdkj hasjkdhkjashd kjashdjkhaskjdh jkashdkjashd kjashd jkashdjk ahsdjk hajksdh ajkshd jkashdkj ashdkj ahskdjh akjsdhjkashdkj asdhaksjdh akjshd kjashdjkashdk jahskjd has.'),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
