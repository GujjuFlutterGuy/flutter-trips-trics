import 'package:flutter/material.dart';

class keepAliveMixinDemo extends StatefulWidget {
  const keepAliveMixinDemo({Key? key}) : super(key: key);

  @override
  _keepAliveMixinDemoState createState() => _keepAliveMixinDemoState();
}

class _keepAliveMixinDemoState extends State<keepAliveMixinDemo> with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("AutomaticKeepAliveMixin"),
          leading: BackButton(onPressed: () => Navigator.pop(context),),
          bottom: TabBar(
            controller: controller,
            tabs: const <Widget>[
              Tab(text: "Tab 1"),
              Tab(text: "Tab 2"),
            ],
          ),
        ),
        body: TabBarView(
          controller: controller,
          children: const <Widget>[
            SubPage(),
            SubPage(),
          ],
        ),
      ),
      length: 2,
    );
  }
}
//subpage
class SubPage extends StatefulWidget {
  const SubPage({Key? key}) : super(key: key);

  @override
  _SubPageState createState() => _SubPageState();
}

//TODO: 1. AutomaticKeepAliveMixin with Tab bar
class _SubPageState extends State<SubPage> with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    debugPrint("I am build");
    return ListView.builder(
      itemBuilder: (BuildContext context, int index){
        return ListTile(
          title: Text("Item $index"),
        );
      },
      itemCount: 50,
    );
  }

  @override
  bool get wantKeepAlive => true;

}


