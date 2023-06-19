import 'package:flutter/material.dart';
import 'package:flutter_practice/Extension.dart';
import 'package:flutter_practice/list/list_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        //colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        //brightness: Brightness.light,
        scaffoldBackgroundColor: Colors.white,
        primarySwatch: Colors.lightBlue,
        useMaterial3: true,
      ),
      home: const ListPage(),
    );
  }
}
