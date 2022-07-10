import 'package:masterclass/models/challenge.dart';
import 'package:masterclass/routes/app_routes.dart';

class Challenges {
  static List<Challenge> get getAllChallenges => [
        Challenge(
          id: 'get-your-money',
          name: 'Get your money',
          route: AppRoutes.getMyMoney,
        ),
        Challenge(
          id: 'tinder',
          name: 'Tinder',
          route: AppRoutes.tinder,
        ),
      ];
}
