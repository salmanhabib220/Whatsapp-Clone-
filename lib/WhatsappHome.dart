import 'package:flutter/material.dart';
import 'package:flutter_whatsapp/Pages/CallsScreen.dart';
import 'package:flutter_whatsapp/Pages/CameraScreen.dart';
import 'package:flutter_whatsapp/Pages/ChatScreen.dart';
import 'package:flutter_whatsapp/Pages/StatusScreen.dart';

class WhatsappHome extends StatefulWidget {
  const WhatsappHome({Key? key}) : super(key: key);

  @override
  _WhatsappHomeState createState() => _WhatsappHomeState();
}

class _WhatsappHomeState extends State<WhatsappHome>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, initialIndex: 1, length: 4);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Whatsapp"),
        elevation: 0.7,
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: [
            new Tab(
              icon: new Icon(Icons.camera_alt),
            ),
            new Tab(text: "Chat"),
            new Tab(text: "Status"),
            new Tab(
              text: "Calls",
            ),
          ],
        ),
         actions: [
           new Icon(Icons.search),
           new Padding(padding: EdgeInsets.symmetric(horizontal: 4),),
           new Icon(Icons.more_vert),
         ],
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          new CameraScreen(),
          new ChatScreen(),
          new StatusScreen(),
          new CallsScreen(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).colorScheme.secondary,

        child: Icon(Icons.message,
         color: Colors.white,
        ),
        onPressed: () {
          print("Open Chat");
        },
      ),
    );
  }
}
