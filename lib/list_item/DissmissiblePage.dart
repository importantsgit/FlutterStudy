import 'package:flutter/material.dart';

class DissmissiblePage extends StatefulWidget {
  const DissmissiblePage({super.key});

  @override
  State<DissmissiblePage> createState() => _DissmissiblePageState();
}

class _DissmissiblePageState extends State<DissmissiblePage> {
  final items = List<String>.generate(20, (index) => 'Item ${index + 1}');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dismissible"),
      ),
      body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(items[index]),
            );
          }),
    );
  }
}
