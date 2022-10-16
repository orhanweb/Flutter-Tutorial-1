import 'package:amazonlike_commerce_app/home_page.dart';
import 'package:amazonlike_commerce_app/profile_page.dart';
import 'package:flutter/material.dart';

class BasePage extends StatefulWidget {
  const BasePage({super.key});

  @override
  State<BasePage> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<BasePage> {
  int currentPage = 0;
  List<Widget> paGes = const [HomePage(), ProfilePage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("UcuzcU"),
      ),
      body: paGes[currentPage],
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {},
          label: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Icon(Icons.account_circle_rounded),
              Text("Calendar")
            ],
          )),
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(
              icon: Icon(Icons.account_balance), label: "Home"),
          NavigationDestination(
              icon: Icon(Icons.person_rounded), label: "Profile")
        ],
        onDestinationSelected: (value) {
          setState(() {
            currentPage = value;
          });
        },
        selectedIndex: currentPage,
      ),
    );
  }
}
