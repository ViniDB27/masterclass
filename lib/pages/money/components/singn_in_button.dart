import 'package:flutter/material.dart';

class SingnInButton extends StatelessWidget {
  final String text;
  final Color? color;
  final Color? textColor;
  final String? image;
  final void Function()? onTap;

  const SingnInButton({
    Key? key,
    required this.text,
    this.color,
    this.image,
    this.textColor,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return InkWell(
      onTap: onTap,
      child: Container(
        width: mediaQuery.size.width - 40,
        height: 50,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (image != null)
              SizedBox(
                height: 30,
                child: Image.asset(
                  image!,
                  fit: BoxFit.scaleDown,
                ),
              ),
            const SizedBox(width: 10),
            Text(
              text,
              style: TextStyle(
                color: textColor ?? Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
