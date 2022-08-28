import 'package:flutter/material.dart';


class PageStorageExample extends StatefulWidget {
  const PageStorageExample({Key? key}) : super(key: key);

  @override
  State<PageStorageExample> createState() => _PageStorageExampleState();
}

class _PageStorageExampleState extends State<PageStorageExample> {
  final List<Widget> pages = const <Widget>[
    ColorBoxPage(
      key: PageStorageKey<String>('page_1'),
    ),
    ColorBoxPage(
      key: PageStorageKey<String>('page_2'),
    )
  ];

  int currentTab = 0;
  final PageStorageBucket _bucket = PageStorageBucket();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Page Storage'),
      ),
      body: PageStorage(
        bucket: _bucket,
        child: pages[currentTab],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentTab,
        onTap: (int index) {
          setState(() {
            currentTab = index;
          });
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'page 1',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'page 2',
          ),
        ],
      ),
    );
  }
}

class ColorBoxPage extends StatelessWidget {
  const ColorBoxPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemExtent: 150.0,
      itemBuilder: (BuildContext context, int index) => Container(
        padding: const EdgeInsets.all(10.0),
        child: Material(
          color: index.isEven ? Colors.greenAccent : Colors.redAccent,
          child: Center(
            child: Text(index.toString(),style: TextStyle(fontSize: 25),),
          ),
        ),
      ),
    );
  }
}
