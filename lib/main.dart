import 'package:flutter/material.dart';

import 'Utils/Utils.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text("Flutter Tips & Tricks"),),
        body: ListView.separated(
            itemCount: Utils.listOfTricks.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text("${index+1}. ${Utils.listOfTricks[index]}"),
                onTap: () {Utils.routes(index, context);},
              );
            },
            separatorBuilder: (context, index) {
              return const Divider();
            },
          ),
      ),
    );
  }


}



