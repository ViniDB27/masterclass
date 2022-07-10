import 'package:flutter/material.dart';

class SignInButton extends StatelessWidget {
  final String text;
  final String image;
  final void Function()? onTap;

  const SignInButton({
    Key? key,
    required this.text,
    required this.image, 
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width - 50,
        height: 50,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(25),
          border: Border.all(
            color: Colors.white,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              height: 20,
              child: Image.asset(
                image,
                fit: BoxFit.scaleDown,
              ),
            ),
            Text(
              text.toUpperCase(),
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
            const SizedBox(width: 30),
          ],
        ),
      ),
    );
  }
}
