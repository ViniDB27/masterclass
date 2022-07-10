import 'package:flutter/material.dart';
import 'package:masterclass/pages/money/components/singn_in_button.dart';
import 'package:masterclass/routes/app_routes.dart';
import 'package:masterclass/theme/app_images.dart';

class GetYourMoneyPage extends StatelessWidget {
  GetYourMoneyPage({Key? key}) : super(key: key);

  final TextStyle titleStyle = const TextStyle(
    color: Colors.white,
    fontSize: 31,
    fontWeight: FontWeight.w800,
  );

  final TextStyle subtitleStyle = TextStyle(
    color: Colors.grey.shade600,
    fontSize: 24,
  );

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    return Scaffold(
      body: Container(
        width: mediaQuery.size.width,
        height: mediaQuery.size.height,
        decoration: const BoxDecoration(
          color: Colors.black,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 150,
              child: Image.asset(
                AppImages.getYourMoneyLogo,
                fit: BoxFit.scaleDown,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              'Get your Money',
              style: titleStyle,
            ),
            const SizedBox(height: 2),
            Text(
              'Under Control',
              style: titleStyle,
            ),
            const SizedBox(height: 20),
            Text(
              'Manage yout expenses.',
              style: subtitleStyle,
            ),
            const SizedBox(height: 2),
            Text(
              'Seamlessly',
              style: subtitleStyle,
            ),
            const SizedBox(height: 100),
            SingnInButton(
              text: 'Sign Up with Email ID',
              color: const Color(0xFF5e5ce5),
              onTap: () =>
                  Navigator.of(context).pushReplacementNamed(AppRoutes.home),
            ),
            const SizedBox(height: 20),
            SingnInButton(
              text: 'Sign Up with Google',
              color: const Color.fromARGB(255, 244, 243, 243),
              image: AppImages.googleLogo,
              textColor: Colors.black,
              onTap: () =>
                  Navigator.of(context).pushReplacementNamed(AppRoutes.home),
            ),
            const SizedBox(height: 50),
            Text.rich(
              TextSpan(
                text: "Already have an account? ",
                style: TextStyle(
                  color: Colors.grey.shade600,
                  fontSize: 18,
                ),
                children: const [
                  TextSpan(
                    text: "Sign in",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
