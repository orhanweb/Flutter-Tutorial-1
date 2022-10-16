import 'package:flutter/material.dart';

class LearnFlutter extends StatefulWidget {
  const LearnFlutter({super.key});

  @override
  State<LearnFlutter> createState() => _LearnFlutterState();
}

class _LearnFlutterState extends State<LearnFlutter> {
  bool isSiwitch = false;
  bool? isCheckbox = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          isSiwitch ? Colors.deepPurpleAccent[400] : Colors.teal[100],
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
        ),
        title: const Text(
          "Learn Flutter",
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.start, Doesnt work anymore
          children: [
            Image.asset("images/spacex.jpg"),
            Text(
              "What is Flutter?",
              style: Theme.of(context)
                  .textTheme
                  .headline4
                  ?.copyWith(color: Colors.black),
            ),
            const Center(
              child: Divider(
                endIndent: 75,
                color: Colors.teal,
                thickness: 5,
                indent: 75,
              ),
            ),
            Text(
              "Flutter is a SDK.",
              style:
                  Theme.of(context).textTheme.headline6?.copyWith(fontSize: 16),
            ),
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                debugPrint("TAAAAP");
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(
                    Icons.adjust_outlined,
                    color: Colors.deepPurpleAccent,
                  ),
                  Text("Click Me I'm Gesture Dedector!"),
                  Icon(
                    Icons.adjust_outlined,
                    color: Colors.deepPurpleAccent,
                  ),
                ],
              ),
            ),
            Switch(
              value: isSiwitch,
              onChanged: (bool newBool) {
                setState(() {
                  isSiwitch = newBool;
                });
              },
            ),
            Checkbox(
              value: isCheckbox,
              onChanged: (bool? value) {
                setState(() {
                  isCheckbox = value;
                });
              },
            ),
            Image.network(
                "https://images.unsplash.com/photo-1446776811953-b23d57bd21aa?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1172&q=80"),
          ],
        ),
      ),
    );
  }
}
