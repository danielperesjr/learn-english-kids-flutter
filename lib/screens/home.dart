import 'package:flutter/material.dart';
import 'package:learn_english/screens/animals.dart';
import 'package:learn_english/screens/numbers.dart';
import 'package:learn_english/screens/vowels.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 3,
      vsync: this,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Learn English"),
        bottom: TabBar(
          indicatorWeight: 4.0,
          indicatorColor: Colors.white,
          labelStyle: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          controller: _tabController,
          tabs: [
            Tab(
              text: "Animals",
            ),
            Tab(
              text: "Numbers",
            ),
            Tab(
              text: "Vowels",
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Animals(),
          Numbers(),
          Vowels(),
        ],
      ),
    );
  }
}
