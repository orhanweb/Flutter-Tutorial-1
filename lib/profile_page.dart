import 'package:flutter/material.dart';

const int itemCount = 20;

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: itemCount,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          leading: const Icon(Icons.call_outlined),
          title: Text("Person ${index + 1}"),
          trailing: IconButton(
              onPressed: () {
                debugPrint("Deneme");
              },
              icon: const Icon(Icons.density_small_outlined)),
          onTap: () {
            debugPrint("Item ${index + 1} selected");
          },
        );
      },
    );
  }
}
