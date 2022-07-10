import 'package:flutter/material.dart';
import 'package:masterclass/theme/app_images.dart';

import 'components/sign_in_button.dart';

class TinderPage extends StatelessWidget {
  const TinderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body: Container(
        width: mediaQuery.size.width,
        height: mediaQuery.size.height,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Color(0xFFe94976),
              Color(0xFFee7462),
            ],
          ),
        ),
        child: Stack(
          children: [
            Container(
              width: mediaQuery.size.width,
              height: mediaQuery.size.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 35,
                    child: Image.asset(
                      AppImages.tinder,
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                  const SizedBox(height: 100),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(40, 0, 40, 25),
                    child: Text.rich(
                      textAlign: TextAlign.center,
                      TextSpan(
                        text:
                            'By tapping Create Account or Sign In, you agree to ',
                        style: TextStyle(
                          color: Color(0xFFfeffff),
                        ),
                        children: [
                          TextSpan(
                            text: 'Terms',
                            style: TextStyle(
                              color: Color(0xFFfeffff),
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                          TextSpan(
                            text: '. Learn how we process your data in our ',
                            style: TextStyle(
                              color: Color(0xFFfeffff),
                            ),
                          ),
                          TextSpan(
                            text: 'Privacy Policy',
                            style: TextStyle(
                              color: Color(0xFFfeffff),
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                          TextSpan(
                            text: ' and ',
                            style: TextStyle(
                              color: Color(0xFFfeffff),
                            ),
                          ),
                          TextSpan(
                            text: 'Cookies Policy.',
                            style: TextStyle(
                              color: Color(0xFFfeffff),
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SignInButton(
                    image: AppImages.apple,
                    text: 'Sign In With Apple',
                    onTap: () => Navigator.of(context)
                        .pop(),
                  ),
                  const SizedBox(height: 10),
                  SignInButton(
                    image: AppImages.facebook,
                    text: 'Sign In With Facebook',
                    onTap: () => Navigator.of(context)
                        .pop(),
                  ),
                  const SizedBox(height: 10),
                  SignInButton(
                    image: AppImages.bubble,
                    text: 'Sign In With Phone Number',
                    onTap: () => Navigator.of(context)
                        .pop(),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(0, 25, 0, 50),
                    child: Center(
                      child: Text(
                        'Trouble Signing In?',
                        style: TextStyle(
                          color: Color(0xFFfeffff),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 20,
              top: 40,
              child: IconButton(
                onPressed: () =>
                    Navigator.of(context).pop(),
                icon: const Icon(
                  Icons.arrow_back_ios,
                  size: 26,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
