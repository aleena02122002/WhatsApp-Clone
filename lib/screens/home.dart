import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin{
  late TabController _controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = TabController(length: 4, vsync: this, initialIndex: 0);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF075E54),
        title: const Text("WhatsApp"),
        actions: [
          IconButton(icon: const Icon(Icons.search),onPressed: (){}),
          IconButton(icon: const Icon(Icons.more_vert),onPressed: (){})
        ],
        bottom: TabBar(

          controller: _controller, tabs: const [
            Tab(icon: Icon(Icons.camera_alt)),
          Tab(text: "Chats"),
          Tab(text: "Status"),
          Tab(text: "Calls",)
        ],
        ),
      ),
    );
  }
}
