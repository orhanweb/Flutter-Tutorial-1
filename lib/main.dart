import 'package:amazonlike_commerce_app/base_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.teal,
        appBarTheme: AppBarTheme(
          foregroundColor: Colors.tealAccent[300],
          scrolledUnderElevation: 1.0,
        ),
      ),
      debugShowCheckedModeBanner: false,
      title: "Flutter Demo 1",
      home: const BasePage(),
    );
  }
}
