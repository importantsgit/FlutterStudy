import 'package:flutter/material.dart';
import 'package:flutter_practice/list_item/Swipe/FirstViewPage.dart';
import 'package:flutter_practice/list_item/Swipe/SecondViwPage.dart';
import 'package:flutter_practice/list_item/Swipe/ThirdViewPage.dart';

class SwipePage extends StatefulWidget {
  const SwipePage({super.key});

  @override
  State<SwipePage> createState() => _SwipePageState();
}

class _SwipePageState extends State<SwipePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('SwipePage')),
      body: PageView(
        children: const <Widget>[
          FirstViewPage(),
          SecondViewPage(),
          ThirdViewPage(),
        ],
      ),
    );
  }
}
