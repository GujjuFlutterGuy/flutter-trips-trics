import 'package:flutter/material.dart';
import 'package:tips/IndexedStack/page_2.dart';
import 'package:tips/IndexedStack/page_1.dart';

class IndexStackedDemo extends StatefulWidget {
  const IndexStackedDemo({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _IndexStackedDemoState();
  }
}

class _IndexStackedDemoState extends State<IndexStackedDemo> {
  int _currentIndex = 0;

  List<Widget> screens = [const Page1(), const Page2()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Indexed Stack"),
        leading: BackButton(
          onPressed: () => Navigator.pop(context),
        ),
      ),
      //TODO: 3 Now un-comment this indexedstack and explain it
      body: IndexedStack(
        index: _currentIndex,
        children: screens,
      )
      //TODO: 2 Explain first without the indexedstack then commnet below center
      /*Center(
        child: screens.elementAt(_currentIndex), //New
      )*/,
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.star_border),
            label: "Multiply",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: "Addition",
          )
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
