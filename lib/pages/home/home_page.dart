import 'package:flutter/material.dart';
import 'package:masterclass/models/challenge.dart';
import 'package:masterclass/models/challenges.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final List<Challenge> _challenges = Challenges.getAllChallenges;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Masterclass - Desafios'),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: _challenges.length,
          itemBuilder: (_, index) => InkWell(
            onTap: () => Navigator.of(context).pushNamed(
              _challenges[index].route,
            ),
            child: Container(
              margin: const EdgeInsets.symmetric(
                vertical: 5,
                horizontal: 10
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.blue,
                ),
              ),
              child: ListTile(
                title: Text(
                  _challenges[index].name,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  _challenges[index].id,
                  style: TextStyle(
                    color: Colors.grey.shade200,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
