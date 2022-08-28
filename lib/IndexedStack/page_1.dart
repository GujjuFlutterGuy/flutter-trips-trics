import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {

  int count=1;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Multiply by two: $count",style: const TextStyle(fontSize: 25)),
          const SizedBox(height: 20),
          ElevatedButton(onPressed: () {setState(() {
            count*=2;
          });}, child: const Text("Multiply by 2"))
        ],
      ),
    );
  }
}
