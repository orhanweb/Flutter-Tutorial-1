import 'package:amazonlike_commerce_app/learn_flutter.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Learn Flutter",
          ),
          const SizedBox(
            height: 20,
          ),
          OutlinedButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext context) {
                return const LearnFlutter();
              }));
            },
            child: const Text("Click Me!"),
          ),
        ],
      ),
    );
  }
}
