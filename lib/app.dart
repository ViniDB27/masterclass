import 'package:flutter/material.dart';

import 'routes/app_routes.dart';

import 'pages/money/get_your_money_page.dart';
import 'pages/tinder/tinder_page.dart';
import 'pages/home/home_page.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Masterclass',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: AppRoutes.home,
      routes: {
        AppRoutes.home: (ctx) => HomePage(),
        AppRoutes.getMyMoney: (ctx) => GetYourMoneyPage(),
        AppRoutes.tinder: (ctx) => TinderPage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
