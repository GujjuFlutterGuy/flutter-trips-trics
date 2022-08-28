import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {

  int count=0;

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
          Text("Addition by five: $count",style: const TextStyle(fontSize: 25),),
          const SizedBox(height: 20),
          ElevatedButton(onPressed: () {setState(() {
            count+=5;
          });}, child: const Text("Add by 5"))
        ],
      ),
    );
  }
}
